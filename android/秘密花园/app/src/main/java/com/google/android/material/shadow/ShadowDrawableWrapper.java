package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class ShadowDrawableWrapper extends DrawableWrapper {
    public static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    public static final float SHADOW_BOTTOM_SCALE = 1.0f;
    public static final float SHADOW_HORIZ_SCALE = 0.5f;
    public static final float SHADOW_MULTIPLIER = 1.5f;
    public static final float SHADOW_TOP_SCALE = 0.25f;
    public float cornerRadius;
    public final Paint cornerShadowPaint;
    public Path cornerShadowPath;
    public final Paint edgeShadowPaint;
    public float maxShadowSize;
    public float rawMaxShadowSize;
    public float rawShadowSize;
    public float rotation;
    public final int shadowEndColor;
    public final int shadowMiddleColor;
    public float shadowSize;
    public final int shadowStartColor;
    public boolean dirty = true;
    public boolean addPaddingForCorners = true;
    public boolean printedShadowClipWarning = false;
    public final RectF contentBounds = new RectF();

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f2, float f3, float f4) {
        super(drawable);
        this.shadowStartColor = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.shadowMiddleColor = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.shadowEndColor = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.cornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.cornerRadius = (float) Math.round(f2);
        Paint paint2 = new Paint(this.cornerShadowPaint);
        this.edgeShadowPaint = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f3, f4);
    }

    private void buildComponents(Rect rect) {
        float f2 = this.rawMaxShadowSize;
        float f3 = 1.5f * f2;
        this.contentBounds.set(((float) rect.left) + f2, ((float) rect.top) + f3, ((float) rect.right) - f2, ((float) rect.bottom) - f3);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.contentBounds;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        float f2 = this.cornerRadius;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.shadowSize;
        rectF2.inset(-f3, -f3);
        Path path = this.cornerShadowPath;
        if (path == null) {
            this.cornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.cornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.cornerShadowPath.moveTo(-this.cornerRadius, 0.0f);
        this.cornerShadowPath.rLineTo(-this.shadowSize, 0.0f);
        this.cornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.cornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.cornerShadowPath.close();
        float f4 = -rectF2.top;
        if (f4 > 0.0f) {
            float f5 = this.cornerRadius / f4;
            this.cornerShadowPaint.setShader(new RadialGradient(0.0f, 0.0f, f4, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, f5, ((1.0f - f5) / 2.0f) + f5, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.edgeShadowPaint.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.edgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        return (float) (((1.0d - COS_45) * ((double) f3)) + ((double) f2));
    }

    public static float calculateVerticalPadding(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        return (float) (((1.0d - COS_45) * ((double) f3)) + ((double) (f2 * 1.5f)));
    }

    private void drawShadow(Canvas canvas) {
        float f2;
        int i2;
        int i3;
        float f3;
        float f4;
        float f5;
        int save = canvas.save();
        canvas.rotate(this.rotation, this.contentBounds.centerX(), this.contentBounds.centerY());
        float f6 = this.cornerRadius;
        float f7 = (-f6) - this.shadowSize;
        float f8 = f6 * 2.0f;
        boolean z = this.contentBounds.width() - f8 > 0.0f;
        boolean z2 = this.contentBounds.height() - f8 > 0.0f;
        float f9 = this.rawShadowSize;
        float f10 = f6 / ((f9 - (0.5f * f9)) + f6);
        float f11 = f6 / ((f9 - (0.25f * f9)) + f6);
        float f12 = f6 / ((f9 - (f9 * 1.0f)) + f6);
        int save2 = canvas.save();
        RectF rectF = this.contentBounds;
        canvas.translate(rectF.left + f6, rectF.top + f6);
        canvas.scale(f10, f11);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            i3 = save2;
            f2 = f12;
            i2 = save;
            f3 = f11;
            canvas.drawRect(0.0f, f7, this.contentBounds.width() - f8, -this.cornerRadius, this.edgeShadowPaint);
        } else {
            i3 = save2;
            f2 = f12;
            i2 = save;
            f3 = f11;
        }
        canvas.restoreToCount(i3);
        int save3 = canvas.save();
        RectF rectF2 = this.contentBounds;
        canvas.translate(rectF2.right - f6, rectF2.bottom - f6);
        canvas.scale(f10, f2);
        canvas.rotate(180.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            f4 = f3;
            f5 = f2;
            canvas.drawRect(0.0f, f7, this.contentBounds.width() - f8, (-this.cornerRadius) + this.shadowSize, this.edgeShadowPaint);
        } else {
            f4 = f3;
            f5 = f2;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.contentBounds;
        canvas.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas.scale(f10, f5);
        canvas.rotate(270.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f7, this.contentBounds.height() - f8, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.contentBounds;
        canvas.translate(rectF4.right - f6, rectF4.top + f6);
        canvas.scale(f10, f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f7, this.contentBounds.height() - f8, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i2);
    }

    public static int toEven(float f2) {
        int round = Math.round(f2);
        return round % 2 == 1 ? round - 1 : round;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.dirty) {
            buildComponents(getBounds());
            this.dirty = false;
        }
        drawShadow(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.cornerRadius;
    }

    public float getMaxShadowSize() {
        return this.rawMaxShadowSize;
    }

    public float getMinHeight() {
        float f2 = this.rawMaxShadowSize;
        float f3 = (f2 * 1.5f) / 2.0f;
        return (this.rawMaxShadowSize * 1.5f * 2.0f) + (Math.max(f2, f3 + this.cornerRadius) * 2.0f);
    }

    public float getMinWidth() {
        float f2 = this.rawMaxShadowSize;
        float f3 = f2 / 2.0f;
        return (this.rawMaxShadowSize * 2.0f) + (Math.max(f2, f3 + this.cornerRadius) * 2.0f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil((double) calculateVerticalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        int ceil2 = (int) Math.ceil((double) calculateHorizontalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float getShadowSize() {
        return this.rawShadowSize;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.dirty = true;
    }

    public void setAddPaddingForCorners(boolean z) {
        this.addPaddingForCorners = z;
        invalidateSelf();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        this.cornerShadowPaint.setAlpha(i2);
        this.edgeShadowPaint.setAlpha(i2);
    }

    public void setCornerRadius(float f2) {
        float round = (float) Math.round(f2);
        if (this.cornerRadius != round) {
            this.cornerRadius = round;
            this.dirty = true;
            invalidateSelf();
        }
    }

    public void setMaxShadowSize(float f2) {
        setShadowSize(this.rawShadowSize, f2);
    }

    public final void setRotation(float f2) {
        if (this.rotation != f2) {
            this.rotation = f2;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float even = (float) toEven(f2);
        float even2 = (float) toEven(f3);
        if (even > even2) {
            if (!this.printedShadowClipWarning) {
                this.printedShadowClipWarning = true;
            }
            even = even2;
        }
        if (this.rawShadowSize != even || this.rawMaxShadowSize != even2) {
            this.rawShadowSize = even;
            this.rawMaxShadowSize = even2;
            this.shadowSize = (float) Math.round(even * 1.5f);
            this.maxShadowSize = even2;
            this.dirty = true;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f2) {
        setShadowSize(f2, this.rawMaxShadowSize);
    }
}
