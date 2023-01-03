package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;

/* loaded from: classes.dex */
public class AppCompatCompoundButtonHelper {
    public ColorStateList mButtonTintList = null;
    public PorterDuff.Mode mButtonTintMode = null;
    public boolean mHasButtonTint = false;
    public boolean mHasButtonTintMode = false;
    public boolean mSkipNextApply;
    public final CompoundButton mView;

    /* loaded from: classes.dex */
    public interface DirectSetButtonDrawableInterface {
        void setButtonDrawable(Drawable drawable);
    }

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    public void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable == null) {
            return;
        }
        if (this.mHasButtonTint || this.mHasButtonTintMode) {
            Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
            if (this.mHasButtonTint) {
                DrawableCompat.setTintList(mutate, this.mButtonTintList);
            }
            if (this.mHasButtonTintMode) {
                DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.mView.getDrawableState());
            }
            this.mView.setButtonDrawable(mutate);
        }
    }

    public int getCompoundPaddingLeft(int i2) {
        return i2;
    }

    public ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0058 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x000d, B:5:0x0015, B:7:0x001d, B:11:0x0031, B:13:0x0039, B:15:0x0041, B:16:0x0050, B:18:0x0058, B:19:0x0063, B:21:0x006b), top: B:28:0x000d }] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006b A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x000d, B:5:0x0015, B:7:0x001d, B:11:0x0031, B:13:0x0039, B:15:0x0041, B:16:0x0050, B:18:0x0058, B:19:0x0063, B:21:0x006b), top: B:28:0x000d }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void loadFromAttributes(android.util.AttributeSet r4, int r5) {
        /*
            r3 = this;
            android.widget.CompoundButton r0 = r3.mView
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.R.styleable.CompoundButton
            r2 = 0
            android.content.res.TypedArray r4 = r0.obtainStyledAttributes(r4, r1, r5, r2)
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x0080
            boolean r5 = r4.hasValue(r5)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x002e
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x0080
            int r5 = r4.getResourceId(r5, r2)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x002e
            android.widget.CompoundButton r0 = r3.mView     // Catch: NotFoundException -> 0x002e, all -> 0x0080
            android.widget.CompoundButton r1 = r3.mView     // Catch: NotFoundException -> 0x002e, all -> 0x0080
            android.content.Context r1 = r1.getContext()     // Catch: NotFoundException -> 0x002e, all -> 0x0080
            android.graphics.drawable.Drawable r5 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r5)     // Catch: NotFoundException -> 0x002e, all -> 0x0080
            r0.setButtonDrawable(r5)     // Catch: NotFoundException -> 0x002e, all -> 0x0080
            r5 = 1
            goto L_0x002f
        L_0x002e:
            r5 = 0
        L_0x002f:
            if (r5 != 0) goto L_0x0050
            int r5 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: all -> 0x0080
            boolean r5 = r4.hasValue(r5)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x0050
            int r5 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: all -> 0x0080
            int r5 = r4.getResourceId(r5, r2)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x0050
            android.widget.CompoundButton r0 = r3.mView     // Catch: all -> 0x0080
            android.widget.CompoundButton r1 = r3.mView     // Catch: all -> 0x0080
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x0080
            android.graphics.drawable.Drawable r5 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r5)     // Catch: all -> 0x0080
            r0.setButtonDrawable(r5)     // Catch: all -> 0x0080
        L_0x0050:
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x0080
            boolean r5 = r4.hasValue(r5)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x0063
            android.widget.CompoundButton r5 = r3.mView     // Catch: all -> 0x0080
            int r0 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x0080
            android.content.res.ColorStateList r0 = r4.getColorStateList(r0)     // Catch: all -> 0x0080
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r5, r0)     // Catch: all -> 0x0080
        L_0x0063:
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x0080
            boolean r5 = r4.hasValue(r5)     // Catch: all -> 0x0080
            if (r5 == 0) goto L_0x007c
            android.widget.CompoundButton r5 = r3.mView     // Catch: all -> 0x0080
            int r0 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x0080
            r1 = -1
            int r0 = r4.getInt(r0, r1)     // Catch: all -> 0x0080
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r0, r1)     // Catch: all -> 0x0080
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r5, r0)     // Catch: all -> 0x0080
        L_0x007c:
            r4.recycle()
            return
        L_0x0080:
            r5 = move-exception
            r4.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
            return;
        }
        this.mSkipNextApply = true;
        applyButtonTint();
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }
}
