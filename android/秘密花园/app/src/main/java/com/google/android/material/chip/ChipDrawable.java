package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import f.b.a.a.a;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ChipDrawable extends Drawable implements TintAwareDrawable, Drawable.Callback {
    public static final boolean DEBUG = false;
    public static final int[] DEFAULT_STATE = {16842910};
    public static final String NAMESPACE_APP = "http://schemas.android.com/apk/res-auto";
    public boolean checkable;
    @Nullable
    public Drawable checkedIcon;
    public boolean checkedIconVisible;
    @Nullable
    public ColorStateList chipBackgroundColor;
    public float chipCornerRadius;
    public float chipEndPadding;
    @Nullable
    public Drawable chipIcon;
    public float chipIconSize;
    @Nullable
    public ColorStateList chipIconTint;
    public boolean chipIconVisible;
    public float chipMinHeight;
    public float chipStartPadding;
    @Nullable
    public ColorStateList chipStrokeColor;
    public float chipStrokeWidth;
    @Nullable
    public Drawable closeIcon;
    @Nullable
    public CharSequence closeIconContentDescription;
    public float closeIconEndPadding;
    public float closeIconSize;
    public float closeIconStartPadding;
    public int[] closeIconStateSet;
    @Nullable
    public ColorStateList closeIconTint;
    public boolean closeIconVisible;
    @Nullable
    public ColorFilter colorFilter;
    @Nullable
    public ColorStateList compatRippleColor;
    public final Context context;
    public boolean currentChecked;
    @ColorInt
    public int currentChipBackgroundColor;
    @ColorInt
    public int currentChipStrokeColor;
    @ColorInt
    public int currentCompatRippleColor;
    @ColorInt
    public int currentTextColor;
    @ColorInt
    public int currentTint;
    @Nullable
    public MotionSpec hideMotionSpec;
    public float iconEndPadding;
    public float iconStartPadding;
    public int maxWidth;
    @Nullable
    public ColorStateList rippleColor;
    public boolean shouldDrawText;
    @Nullable
    public MotionSpec showMotionSpec;
    @Nullable
    public TextAppearance textAppearance;
    public float textEndPadding;
    public float textStartPadding;
    public float textWidth;
    @Nullable
    public ColorStateList tint;
    @Nullable
    public PorterDuffColorFilter tintFilter;
    public TextUtils.TruncateAt truncateAt;
    @Nullable
    public CharSequence unicodeWrappedText;
    public boolean useCompatRipple;
    public final ResourcesCompat.FontCallback fontCallback = new ResourcesCompat.FontCallback() { // from class: com.google.android.material.chip.ChipDrawable.1
        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i2) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            ChipDrawable.this.textWidthDirty = true;
            ChipDrawable.this.onSizeChange();
            ChipDrawable.this.invalidateSelf();
        }
    };
    public final TextPaint textPaint = new TextPaint(1);
    public final Paint chipPaint = new Paint(1);
    public final Paint.FontMetrics fontMetrics = new Paint.FontMetrics();
    public final RectF rectF = new RectF();
    public final PointF pointF = new PointF();
    public int alpha = 255;
    @Nullable
    public PorterDuff.Mode tintMode = PorterDuff.Mode.SRC_IN;
    public WeakReference<Delegate> delegate = new WeakReference<>(null);
    public boolean textWidthDirty = true;
    @Nullable
    public CharSequence rawText = "";
    @Nullable
    public final Paint debugPaint = null;

    /* loaded from: classes.dex */
    public interface Delegate {
        void onChipDrawableSizeChange();
    }

    public ChipDrawable(Context context) {
        Paint paint = null;
        this.context = context;
        this.textPaint.density = context.getResources().getDisplayMetrics().density;
        if (0 != 0) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(DEFAULT_STATE);
        setCloseIconState(DEFAULT_STATE);
        this.shouldDrawText = true;
    }

    private void applyChildDrawable(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.closeIcon) {
                if (drawable.isStateful()) {
                    drawable.setState(getCloseIconState());
                }
                DrawableCompat.setTintList(drawable, this.closeIconTint);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    private void calculateChipIconBounds(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (showsChipIcon() || showsCheckedIcon()) {
            float f2 = this.chipStartPadding + this.iconStartPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = ((float) rect.left) + f2;
                rectF.left = f3;
                rectF.right = f3 + this.chipIconSize;
            } else {
                float f4 = ((float) rect.right) - f2;
                rectF.right = f4;
                rectF.left = f4 - this.chipIconSize;
            }
            float exactCenterY = rect.exactCenterY();
            float f5 = this.chipIconSize;
            float f6 = exactCenterY - (f5 / 2.0f);
            rectF.top = f6;
            rectF.bottom = f6 + f5;
        }
    }

    private void calculateChipTouchBounds(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (showsCloseIcon()) {
            float f2 = this.chipEndPadding + this.closeIconEndPadding + this.closeIconSize + this.closeIconStartPadding + this.textEndPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = ((float) rect.right) - f2;
            } else {
                rectF.left = ((float) rect.left) + f2;
            }
        }
    }

    private void calculateCloseIconBounds(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (showsCloseIcon()) {
            float f2 = this.chipEndPadding + this.closeIconEndPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = ((float) rect.right) - f2;
                rectF.right = f3;
                rectF.left = f3 - this.closeIconSize;
            } else {
                float f4 = ((float) rect.left) + f2;
                rectF.left = f4;
                rectF.right = f4 + this.closeIconSize;
            }
            float exactCenterY = rect.exactCenterY();
            float f5 = this.closeIconSize;
            float f6 = exactCenterY - (f5 / 2.0f);
            rectF.top = f6;
            rectF.bottom = f6 + f5;
        }
    }

    private void calculateCloseIconTouchBounds(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (showsCloseIcon()) {
            float f2 = this.chipEndPadding + this.closeIconEndPadding + this.closeIconSize + this.closeIconStartPadding + this.textEndPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = (float) rect.right;
                rectF.right = f3;
                rectF.left = f3 - f2;
            } else {
                int i2 = rect.left;
                rectF.left = (float) i2;
                rectF.right = ((float) i2) + f2;
            }
            rectF.top = (float) rect.top;
            rectF.bottom = (float) rect.bottom;
        }
    }

    private float calculateCloseIconWidth() {
        if (showsCloseIcon()) {
            return this.closeIconStartPadding + this.closeIconSize + this.closeIconEndPadding;
        }
        return 0.0f;
    }

    private void calculateTextBounds(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.unicodeWrappedText != null) {
            float calculateChipIconWidth = calculateChipIconWidth() + this.chipStartPadding + this.textStartPadding;
            float calculateCloseIconWidth = this.chipEndPadding + calculateCloseIconWidth() + this.textEndPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = ((float) rect.left) + calculateChipIconWidth;
                rectF.right = ((float) rect.right) - calculateCloseIconWidth;
            } else {
                rectF.left = ((float) rect.left) + calculateCloseIconWidth;
                rectF.right = ((float) rect.right) - calculateChipIconWidth;
            }
            rectF.top = (float) rect.top;
            rectF.bottom = (float) rect.bottom;
        }
    }

    private float calculateTextCenterFromBaseline() {
        this.textPaint.getFontMetrics(this.fontMetrics);
        Paint.FontMetrics fontMetrics = this.fontMetrics;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float calculateTextWidth(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private boolean canShowCheckedIcon() {
        return this.checkedIconVisible && this.checkedIcon != null && this.checkable;
    }

    public static ChipDrawable createFromAttributes(Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        ChipDrawable chipDrawable = new ChipDrawable(context);
        chipDrawable.loadFromAttributes(attributeSet, i2, i3);
        return chipDrawable;
    }

    public static ChipDrawable createFromResource(Context context, @XmlRes int i2) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            } else if (TextUtils.equals(xml.getName(), "chip")) {
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                int styleAttribute = asAttributeSet.getStyleAttribute();
                if (styleAttribute == 0) {
                    styleAttribute = R.style.Widget_MaterialComponents_Chip_Entry;
                }
                return createFromAttributes(context, asAttributeSet, R.attr.chipStandaloneStyle, styleAttribute);
            } else {
                throw new XmlPullParserException("Must have a <chip> start tag");
            }
        } catch (IOException | XmlPullParserException e2) {
            StringBuilder o = a.o("Can't load chip resource ID #0x");
            o.append(Integer.toHexString(i2));
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(o.toString());
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    private void drawCheckedIcon(@NonNull Canvas canvas, Rect rect) {
        if (showsCheckedIcon()) {
            calculateChipIconBounds(rect, this.rectF);
            RectF rectF = this.rectF;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.checkedIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            this.checkedIcon.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void drawChipBackground(@NonNull Canvas canvas, Rect rect) {
        this.chipPaint.setColor(this.currentChipBackgroundColor);
        this.chipPaint.setStyle(Paint.Style.FILL);
        this.chipPaint.setColorFilter(getTintColorFilter());
        this.rectF.set(rect);
        RectF rectF = this.rectF;
        float f2 = this.chipCornerRadius;
        canvas.drawRoundRect(rectF, f2, f2, this.chipPaint);
    }

    private void drawChipIcon(@NonNull Canvas canvas, Rect rect) {
        if (showsChipIcon()) {
            calculateChipIconBounds(rect, this.rectF);
            RectF rectF = this.rectF;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.chipIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            this.chipIcon.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void drawChipStroke(@NonNull Canvas canvas, Rect rect) {
        if (this.chipStrokeWidth > 0.0f) {
            this.chipPaint.setColor(this.currentChipStrokeColor);
            this.chipPaint.setStyle(Paint.Style.STROKE);
            this.chipPaint.setColorFilter(getTintColorFilter());
            RectF rectF = this.rectF;
            float f2 = this.chipStrokeWidth;
            rectF.set((f2 / 2.0f) + ((float) rect.left), (f2 / 2.0f) + ((float) rect.top), ((float) rect.right) - (f2 / 2.0f), ((float) rect.bottom) - (f2 / 2.0f));
            float f3 = this.chipCornerRadius - (this.chipStrokeWidth / 2.0f);
            canvas.drawRoundRect(this.rectF, f3, f3, this.chipPaint);
        }
    }

    private void drawCloseIcon(@NonNull Canvas canvas, Rect rect) {
        if (showsCloseIcon()) {
            calculateCloseIconBounds(rect, this.rectF);
            RectF rectF = this.rectF;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.closeIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            this.closeIcon.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void drawCompatRipple(@NonNull Canvas canvas, Rect rect) {
        this.chipPaint.setColor(this.currentCompatRippleColor);
        this.chipPaint.setStyle(Paint.Style.FILL);
        this.rectF.set(rect);
        RectF rectF = this.rectF;
        float f2 = this.chipCornerRadius;
        canvas.drawRoundRect(rectF, f2, f2, this.chipPaint);
    }

    private void drawDebug(@NonNull Canvas canvas, Rect rect) {
        Paint paint = this.debugPaint;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.debugPaint);
            if (showsChipIcon() || showsCheckedIcon()) {
                calculateChipIconBounds(rect, this.rectF);
                canvas.drawRect(this.rectF, this.debugPaint);
            }
            if (this.unicodeWrappedText != null) {
                canvas.drawLine((float) rect.left, rect.exactCenterY(), (float) rect.right, rect.exactCenterY(), this.debugPaint);
            }
            if (showsCloseIcon()) {
                calculateCloseIconBounds(rect, this.rectF);
                canvas.drawRect(this.rectF, this.debugPaint);
            }
            this.debugPaint.setColor(ColorUtils.setAlphaComponent(-65536, 127));
            calculateChipTouchBounds(rect, this.rectF);
            canvas.drawRect(this.rectF, this.debugPaint);
            this.debugPaint.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            calculateCloseIconTouchBounds(rect, this.rectF);
            canvas.drawRect(this.rectF, this.debugPaint);
        }
    }

    private void drawText(@NonNull Canvas canvas, Rect rect) {
        if (this.unicodeWrappedText != null) {
            Paint.Align calculateTextOriginAndAlignment = calculateTextOriginAndAlignment(rect, this.pointF);
            calculateTextBounds(rect, this.rectF);
            if (this.textAppearance != null) {
                this.textPaint.drawableState = getState();
                this.textAppearance.updateDrawState(this.context, this.textPaint, this.fontCallback);
            }
            this.textPaint.setTextAlign(calculateTextOriginAndAlignment);
            int i2 = 0;
            boolean z = Math.round(getTextWidth()) > Math.round(this.rectF.width());
            if (z) {
                i2 = canvas.save();
                canvas.clipRect(this.rectF);
            }
            CharSequence charSequence = this.unicodeWrappedText;
            if (z && this.truncateAt != null) {
                charSequence = TextUtils.ellipsize(charSequence, this.textPaint, this.rectF.width(), this.truncateAt);
            }
            int length = charSequence.length();
            PointF pointF = this.pointF;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.textPaint);
            if (z) {
                canvas.restoreToCount(i2);
            }
        }
    }

    private float getTextWidth() {
        if (!this.textWidthDirty) {
            return this.textWidth;
        }
        float calculateTextWidth = calculateTextWidth(this.unicodeWrappedText);
        this.textWidth = calculateTextWidth;
        this.textWidthDirty = false;
        return calculateTextWidth;
    }

    @Nullable
    private ColorFilter getTintColorFilter() {
        ColorFilter colorFilter = this.colorFilter;
        return colorFilter != null ? colorFilter : this.tintFilter;
    }

    public static boolean hasState(@Nullable int[] iArr, @AttrRes int i2) {
        if (iArr == null) {
            return false;
        }
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    private void loadFromAttributes(AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.context, attributeSet, R.styleable.Chip, i2, i3, new int[0]);
        setChipBackgroundColor(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Chip_chipBackgroundColor));
        setChipMinHeight(obtainStyledAttributes.getDimension(R.styleable.Chip_chipMinHeight, 0.0f));
        setChipCornerRadius(obtainStyledAttributes.getDimension(R.styleable.Chip_chipCornerRadius, 0.0f));
        setChipStrokeColor(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Chip_chipStrokeColor));
        setChipStrokeWidth(obtainStyledAttributes.getDimension(R.styleable.Chip_chipStrokeWidth, 0.0f));
        setRippleColor(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Chip_rippleColor));
        setText(obtainStyledAttributes.getText(R.styleable.Chip_android_text));
        setTextAppearance(MaterialResources.getTextAppearance(this.context, obtainStyledAttributes, R.styleable.Chip_android_textAppearance));
        int i4 = obtainStyledAttributes.getInt(R.styleable.Chip_android_ellipsize, 0);
        if (i4 == 1) {
            setEllipsize(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            setEllipsize(TextUtils.TruncateAt.END);
        }
        setChipIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_chipIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue(NAMESPACE_APP, "chipIconEnabled") == null || attributeSet.getAttributeValue(NAMESPACE_APP, "chipIconVisible") != null)) {
            setChipIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_chipIconEnabled, false));
        }
        setChipIcon(MaterialResources.getDrawable(this.context, obtainStyledAttributes, R.styleable.Chip_chipIcon));
        setChipIconTint(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Chip_chipIconTint));
        setChipIconSize(obtainStyledAttributes.getDimension(R.styleable.Chip_chipIconSize, 0.0f));
        setCloseIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_closeIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue(NAMESPACE_APP, "closeIconEnabled") == null || attributeSet.getAttributeValue(NAMESPACE_APP, "closeIconVisible") != null)) {
            setCloseIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_closeIconEnabled, false));
        }
        setCloseIcon(MaterialResources.getDrawable(this.context, obtainStyledAttributes, R.styleable.Chip_closeIcon));
        setCloseIconTint(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Chip_closeIconTint));
        setCloseIconSize(obtainStyledAttributes.getDimension(R.styleable.Chip_closeIconSize, 0.0f));
        setCheckable(obtainStyledAttributes.getBoolean(R.styleable.Chip_android_checkable, false));
        setCheckedIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_checkedIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue(NAMESPACE_APP, "checkedIconEnabled") == null || attributeSet.getAttributeValue(NAMESPACE_APP, "checkedIconVisible") != null)) {
            setCheckedIconVisible(obtainStyledAttributes.getBoolean(R.styleable.Chip_checkedIconEnabled, false));
        }
        setCheckedIcon(MaterialResources.getDrawable(this.context, obtainStyledAttributes, R.styleable.Chip_checkedIcon));
        setShowMotionSpec(MotionSpec.createFromAttribute(this.context, obtainStyledAttributes, R.styleable.Chip_showMotionSpec));
        setHideMotionSpec(MotionSpec.createFromAttribute(this.context, obtainStyledAttributes, R.styleable.Chip_hideMotionSpec));
        setChipStartPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_chipStartPadding, 0.0f));
        setIconStartPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_iconStartPadding, 0.0f));
        setIconEndPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_iconEndPadding, 0.0f));
        setTextStartPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_textStartPadding, 0.0f));
        setTextEndPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_textEndPadding, 0.0f));
        setCloseIconStartPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_closeIconStartPadding, 0.0f));
        setCloseIconEndPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_closeIconEndPadding, 0.0f));
        setChipEndPadding(obtainStyledAttributes.getDimension(R.styleable.Chip_chipEndPadding, 0.0f));
        setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(R.styleable.Chip_android_maxWidth, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        obtainStyledAttributes.recycle();
    }

    private boolean showsCheckedIcon() {
        return this.checkedIconVisible && this.checkedIcon != null && this.currentChecked;
    }

    private boolean showsChipIcon() {
        return this.chipIconVisible && this.chipIcon != null;
    }

    private boolean showsCloseIcon() {
        return this.closeIconVisible && this.closeIcon != null;
    }

    private void unapplyChildDrawable(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void updateCompatRippleColor() {
        this.compatRippleColor = this.useCompatRipple ? RippleUtils.convertToRippleDrawableColor(this.rippleColor) : null;
    }

    public float calculateChipIconWidth() {
        if (showsChipIcon() || showsCheckedIcon()) {
            return this.iconStartPadding + this.chipIconSize + this.iconEndPadding;
        }
        return 0.0f;
    }

    public Paint.Align calculateTextOriginAndAlignment(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.unicodeWrappedText != null) {
            float calculateChipIconWidth = calculateChipIconWidth() + this.chipStartPadding + this.textStartPadding;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = ((float) rect.left) + calculateChipIconWidth;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = ((float) rect.right) - calculateChipIconWidth;
                align = Paint.Align.RIGHT;
            }
            pointF.y = ((float) rect.centerY()) - calculateTextCenterFromBaseline();
        }
        return align;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            int i2 = 0;
            int i3 = this.alpha;
            if (i3 < 255) {
                i2 = CanvasCompat.saveLayerAlpha(canvas, (float) bounds.left, (float) bounds.top, (float) bounds.right, (float) bounds.bottom, i3);
            }
            drawChipBackground(canvas, bounds);
            drawChipStroke(canvas, bounds);
            drawCompatRipple(canvas, bounds);
            drawChipIcon(canvas, bounds);
            drawCheckedIcon(canvas, bounds);
            if (this.shouldDrawText) {
                drawText(canvas, bounds);
            }
            drawCloseIcon(canvas, bounds);
            drawDebug(canvas, bounds);
            if (this.alpha < 255) {
                canvas.restoreToCount(i2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.checkedIcon;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        return this.chipBackgroundColor;
    }

    public float getChipCornerRadius() {
        return this.chipCornerRadius;
    }

    public float getChipEndPadding() {
        return this.chipEndPadding;
    }

    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable = this.chipIcon;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public float getChipIconSize() {
        return this.chipIconSize;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        return this.chipIconTint;
    }

    public float getChipMinHeight() {
        return this.chipMinHeight;
    }

    public float getChipStartPadding() {
        return this.chipStartPadding;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        return this.chipStrokeColor;
    }

    public float getChipStrokeWidth() {
        return this.chipStrokeWidth;
    }

    public void getChipTouchBounds(RectF rectF) {
        calculateChipTouchBounds(getBounds(), rectF);
    }

    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable = this.closeIcon;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        return this.closeIconContentDescription;
    }

    public float getCloseIconEndPadding() {
        return this.closeIconEndPadding;
    }

    public float getCloseIconSize() {
        return this.closeIconSize;
    }

    public float getCloseIconStartPadding() {
        return this.closeIconStartPadding;
    }

    @NonNull
    public int[] getCloseIconState() {
        return this.closeIconStateSet;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        return this.closeIconTint;
    }

    public void getCloseIconTouchBounds(RectF rectF) {
        calculateCloseIconTouchBounds(getBounds(), rectF);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    public TextUtils.TruncateAt getEllipsize() {
        return this.truncateAt;
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.hideMotionSpec;
    }

    public float getIconEndPadding() {
        return this.iconEndPadding;
    }

    public float getIconStartPadding() {
        return this.iconStartPadding;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.chipMinHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(calculateChipIconWidth() + this.chipStartPadding + this.textStartPadding + getTextWidth() + this.textEndPadding + calculateCloseIconWidth() + this.chipEndPadding), this.maxWidth);
    }

    @Px
    public int getMaxWidth() {
        return this.maxWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.chipCornerRadius);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.chipCornerRadius);
        }
        outline.setAlpha(((float) getAlpha()) / 255.0f);
    }

    @Nullable
    public ColorStateList getRippleColor() {
        return this.rippleColor;
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.showMotionSpec;
    }

    @NonNull
    public CharSequence getText() {
        return this.rawText;
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.textAppearance;
    }

    public float getTextEndPadding() {
        return this.textEndPadding;
    }

    public float getTextStartPadding() {
        return this.textStartPadding;
    }

    public boolean getUseCompatRipple() {
        return this.useCompatRipple;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isCheckable() {
        return this.checkable;
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        return this.checkedIconVisible;
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        return this.chipIconVisible;
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconStateful() {
        return isStateful(this.closeIcon);
    }

    public boolean isCloseIconVisible() {
        return this.closeIconVisible;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return isStateful(this.chipBackgroundColor) || isStateful(this.chipStrokeColor) || (this.useCompatRipple && isStateful(this.compatRippleColor)) || isStateful(this.textAppearance) || canShowCheckedIcon() || isStateful(this.chipIcon) || isStateful(this.checkedIcon) || isStateful(this.tint);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(23)
    public boolean onLayoutDirectionChanged(int i2) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (showsChipIcon()) {
            onLayoutDirectionChanged |= this.chipIcon.setLayoutDirection(i2);
        }
        if (showsCheckedIcon()) {
            onLayoutDirectionChanged |= this.checkedIcon.setLayoutDirection(i2);
        }
        if (showsCloseIcon()) {
            onLayoutDirectionChanged |= this.closeIcon.setLayoutDirection(i2);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        boolean onLevelChange = super.onLevelChange(i2);
        if (showsChipIcon()) {
            onLevelChange |= this.chipIcon.setLevel(i2);
        }
        if (showsCheckedIcon()) {
            onLevelChange |= this.checkedIcon.setLevel(i2);
        }
        if (showsCloseIcon()) {
            onLevelChange |= this.closeIcon.setLevel(i2);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    public void onSizeChange() {
        Delegate delegate = this.delegate.get();
        if (delegate != null) {
            delegate.onChipDrawableSizeChange();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return onStateChange(iArr, getCloseIconState());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.alpha != i2) {
            this.alpha = i2;
            invalidateSelf();
        }
    }

    public void setCheckable(boolean z) {
        if (this.checkable != z) {
            this.checkable = z;
            float calculateChipIconWidth = calculateChipIconWidth();
            if (!z && this.currentChecked) {
                this.currentChecked = false;
            }
            float calculateChipIconWidth2 = calculateChipIconWidth();
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    public void setCheckableResource(@BoolRes int i2) {
        setCheckable(this.context.getResources().getBoolean(i2));
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        if (this.checkedIcon != drawable) {
            float calculateChipIconWidth = calculateChipIconWidth();
            this.checkedIcon = drawable;
            float calculateChipIconWidth2 = calculateChipIconWidth();
            unapplyChildDrawable(this.checkedIcon);
            applyChildDrawable(this.checkedIcon);
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i2) {
        setCheckedIconVisible(this.context.getResources().getBoolean(i2));
    }

    public void setCheckedIconResource(@DrawableRes int i2) {
        setCheckedIcon(AppCompatResources.getDrawable(this.context, i2));
    }

    public void setCheckedIconVisible(@BoolRes int i2) {
        setCheckedIconVisible(this.context.getResources().getBoolean(i2));
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        if (this.chipBackgroundColor != colorStateList) {
            this.chipBackgroundColor = colorStateList;
            onStateChange(getState());
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i2) {
        setChipBackgroundColor(AppCompatResources.getColorStateList(this.context, i2));
    }

    public void setChipCornerRadius(float f2) {
        if (this.chipCornerRadius != f2) {
            this.chipCornerRadius = f2;
            invalidateSelf();
        }
    }

    public void setChipCornerRadiusResource(@DimenRes int i2) {
        setChipCornerRadius(this.context.getResources().getDimension(i2));
    }

    public void setChipEndPadding(float f2) {
        if (this.chipEndPadding != f2) {
            this.chipEndPadding = f2;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i2) {
        setChipEndPadding(this.context.getResources().getDimension(i2));
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        Drawable chipIcon = getChipIcon();
        if (chipIcon != drawable) {
            float calculateChipIconWidth = calculateChipIconWidth();
            this.chipIcon = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float calculateChipIconWidth2 = calculateChipIconWidth();
            unapplyChildDrawable(chipIcon);
            if (showsChipIcon()) {
                applyChildDrawable(this.chipIcon);
            }
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(@DrawableRes int i2) {
        setChipIcon(AppCompatResources.getDrawable(this.context, i2));
    }

    public void setChipIconSize(float f2) {
        if (this.chipIconSize != f2) {
            float calculateChipIconWidth = calculateChipIconWidth();
            this.chipIconSize = f2;
            float calculateChipIconWidth2 = calculateChipIconWidth();
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    public void setChipIconSizeResource(@DimenRes int i2) {
        setChipIconSize(this.context.getResources().getDimension(i2));
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        if (this.chipIconTint != colorStateList) {
            this.chipIconTint = colorStateList;
            if (showsChipIcon()) {
                DrawableCompat.setTintList(this.chipIcon, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setChipIconTintResource(@ColorRes int i2) {
        setChipIconTint(AppCompatResources.getColorStateList(this.context, i2));
    }

    public void setChipIconVisible(@BoolRes int i2) {
        setChipIconVisible(this.context.getResources().getBoolean(i2));
    }

    public void setChipMinHeight(float f2) {
        if (this.chipMinHeight != f2) {
            this.chipMinHeight = f2;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipMinHeightResource(@DimenRes int i2) {
        setChipMinHeight(this.context.getResources().getDimension(i2));
    }

    public void setChipStartPadding(float f2) {
        if (this.chipStartPadding != f2) {
            this.chipStartPadding = f2;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i2) {
        setChipStartPadding(this.context.getResources().getDimension(i2));
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        if (this.chipStrokeColor != colorStateList) {
            this.chipStrokeColor = colorStateList;
            onStateChange(getState());
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i2) {
        setChipStrokeColor(AppCompatResources.getColorStateList(this.context, i2));
    }

    public void setChipStrokeWidth(float f2) {
        if (this.chipStrokeWidth != f2) {
            this.chipStrokeWidth = f2;
            this.chipPaint.setStrokeWidth(f2);
            invalidateSelf();
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i2) {
        setChipStrokeWidth(this.context.getResources().getDimension(i2));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        Drawable closeIcon = getCloseIcon();
        if (closeIcon != drawable) {
            float calculateCloseIconWidth = calculateCloseIconWidth();
            this.closeIcon = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float calculateCloseIconWidth2 = calculateCloseIconWidth();
            unapplyChildDrawable(closeIcon);
            if (showsCloseIcon()) {
                applyChildDrawable(this.closeIcon);
            }
            invalidateSelf();
            if (calculateCloseIconWidth != calculateCloseIconWidth2) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        if (this.closeIconContentDescription != charSequence) {
            this.closeIconContentDescription = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f2) {
        if (this.closeIconEndPadding != f2) {
            this.closeIconEndPadding = f2;
            invalidateSelf();
            if (showsCloseIcon()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i2) {
        setCloseIconEndPadding(this.context.getResources().getDimension(i2));
    }

    public void setCloseIconResource(@DrawableRes int i2) {
        setCloseIcon(AppCompatResources.getDrawable(this.context, i2));
    }

    public void setCloseIconSize(float f2) {
        if (this.closeIconSize != f2) {
            this.closeIconSize = f2;
            invalidateSelf();
            if (showsCloseIcon()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i2) {
        setCloseIconSize(this.context.getResources().getDimension(i2));
    }

    public void setCloseIconStartPadding(float f2) {
        if (this.closeIconStartPadding != f2) {
            this.closeIconStartPadding = f2;
            invalidateSelf();
            if (showsCloseIcon()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i2) {
        setCloseIconStartPadding(this.context.getResources().getDimension(i2));
    }

    public boolean setCloseIconState(@NonNull int[] iArr) {
        if (Arrays.equals(this.closeIconStateSet, iArr)) {
            return false;
        }
        this.closeIconStateSet = iArr;
        if (showsCloseIcon()) {
            return onStateChange(getState(), iArr);
        }
        return false;
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        if (this.closeIconTint != colorStateList) {
            this.closeIconTint = colorStateList;
            if (showsCloseIcon()) {
                DrawableCompat.setTintList(this.closeIcon, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setCloseIconTintResource(@ColorRes int i2) {
        setCloseIconTint(AppCompatResources.getColorStateList(this.context, i2));
    }

    public void setCloseIconVisible(@BoolRes int i2) {
        setCloseIconVisible(this.context.getResources().getBoolean(i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.colorFilter != colorFilter) {
            this.colorFilter = colorFilter;
            invalidateSelf();
        }
    }

    public void setDelegate(@Nullable Delegate delegate) {
        this.delegate = new WeakReference<>(delegate);
    }

    public void setEllipsize(@Nullable TextUtils.TruncateAt truncateAt) {
        this.truncateAt = truncateAt;
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.hideMotionSpec = motionSpec;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        setHideMotionSpec(MotionSpec.createFromResource(this.context, i2));
    }

    public void setIconEndPadding(float f2) {
        if (this.iconEndPadding != f2) {
            float calculateChipIconWidth = calculateChipIconWidth();
            this.iconEndPadding = f2;
            float calculateChipIconWidth2 = calculateChipIconWidth();
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i2) {
        setIconEndPadding(this.context.getResources().getDimension(i2));
    }

    public void setIconStartPadding(float f2) {
        if (this.iconStartPadding != f2) {
            float calculateChipIconWidth = calculateChipIconWidth();
            this.iconStartPadding = f2;
            float calculateChipIconWidth2 = calculateChipIconWidth();
            invalidateSelf();
            if (calculateChipIconWidth != calculateChipIconWidth2) {
                onSizeChange();
            }
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i2) {
        setIconStartPadding(this.context.getResources().getDimension(i2));
    }

    public void setMaxWidth(@Px int i2) {
        this.maxWidth = i2;
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.rippleColor != colorStateList) {
            this.rippleColor = colorStateList;
            updateCompatRippleColor();
            onStateChange(getState());
        }
    }

    public void setRippleColorResource(@ColorRes int i2) {
        setRippleColor(AppCompatResources.getColorStateList(this.context, i2));
    }

    public void setShouldDrawText(boolean z) {
        this.shouldDrawText = z;
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.showMotionSpec = motionSpec;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        setShowMotionSpec(MotionSpec.createFromResource(this.context, i2));
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (this.rawText != charSequence) {
            this.rawText = charSequence;
            this.unicodeWrappedText = BidiFormatter.getInstance().unicodeWrap(charSequence);
            this.textWidthDirty = true;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        if (this.textAppearance != textAppearance) {
            this.textAppearance = textAppearance;
            if (textAppearance != null) {
                textAppearance.updateMeasureState(this.context, this.textPaint, this.fontCallback);
                this.textWidthDirty = true;
            }
            onStateChange(getState());
            onSizeChange();
        }
    }

    public void setTextAppearanceResource(@StyleRes int i2) {
        setTextAppearance(new TextAppearance(this.context, i2));
    }

    public void setTextEndPadding(float f2) {
        if (this.textEndPadding != f2) {
            this.textEndPadding = f2;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i2) {
        setTextEndPadding(this.context.getResources().getDimension(i2));
    }

    public void setTextResource(@StringRes int i2) {
        setText(this.context.getResources().getString(i2));
    }

    public void setTextStartPadding(float f2) {
        if (this.textStartPadding != f2) {
            this.textStartPadding = f2;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i2) {
        setTextStartPadding(this.context.getResources().getDimension(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.tint != colorStateList) {
            this.tint = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.tintMode != mode) {
            this.tintMode = mode;
            this.tintFilter = DrawableUtils.updateTintFilter(this, this.tint, mode);
            invalidateSelf();
        }
    }

    public void setUseCompatRipple(boolean z) {
        if (this.useCompatRipple != z) {
            this.useCompatRipple = z;
            updateCompatRippleColor();
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (showsChipIcon()) {
            visible |= this.chipIcon.setVisible(z, z2);
        }
        if (showsCheckedIcon()) {
            visible |= this.checkedIcon.setVisible(z, z2);
        }
        if (showsCloseIcon()) {
            visible |= this.closeIcon.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public boolean shouldDrawText() {
        return this.shouldDrawText;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean onStateChange(int[] r6, int[] r7) {
        /*
        // Method dump skipped, instructions count: 221
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipDrawable.onStateChange(int[], int[]):boolean");
    }

    public void setCheckedIconVisible(boolean z) {
        if (this.checkedIconVisible != z) {
            boolean showsCheckedIcon = showsCheckedIcon();
            this.checkedIconVisible = z;
            boolean showsCheckedIcon2 = showsCheckedIcon();
            if (showsCheckedIcon != showsCheckedIcon2) {
                if (showsCheckedIcon2) {
                    applyChildDrawable(this.checkedIcon);
                } else {
                    unapplyChildDrawable(this.checkedIcon);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setChipIconVisible(boolean z) {
        if (this.chipIconVisible != z) {
            boolean showsChipIcon = showsChipIcon();
            this.chipIconVisible = z;
            boolean showsChipIcon2 = showsChipIcon();
            if (showsChipIcon != showsChipIcon2) {
                if (showsChipIcon2) {
                    applyChildDrawable(this.chipIcon);
                } else {
                    unapplyChildDrawable(this.chipIcon);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        if (this.closeIconVisible != z) {
            boolean showsCloseIcon = showsCloseIcon();
            this.closeIconVisible = z;
            boolean showsCloseIcon2 = showsCloseIcon();
            if (showsCloseIcon != showsCloseIcon2) {
                if (showsCloseIcon2) {
                    applyChildDrawable(this.closeIcon);
                } else {
                    unapplyChildDrawable(this.closeIcon);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public static boolean isStateful(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean isStateful(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public static boolean isStateful(@Nullable TextAppearance textAppearance) {
        ColorStateList colorStateList;
        return (textAppearance == null || (colorStateList = textAppearance.textColor) == null || !colorStateList.isStateful()) ? false : true;
    }
}
