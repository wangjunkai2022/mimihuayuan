package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* loaded from: classes.dex */
public class AppCompatTextHelper {
    public static final int MONOSPACE = 3;
    public static final int SANS = 1;
    public static final int SERIF = 2;
    public static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    public boolean mAsyncFontPending;
    @NonNull
    public final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    public TintInfo mDrawableBottomTint;
    public TintInfo mDrawableEndTint;
    public TintInfo mDrawableLeftTint;
    public TintInfo mDrawableRightTint;
    public TintInfo mDrawableStartTint;
    public TintInfo mDrawableTint;
    public TintInfo mDrawableTopTint;
    public Typeface mFontTypeface;
    public final TextView mView;
    public int mStyle = 0;
    public int mFontWeight = -1;

    /* loaded from: classes.dex */
    public static class ApplyTextViewCallback extends ResourcesCompat.FontCallback {
        public final int mFontWeight;
        public final WeakReference<AppCompatTextHelper> mParent;
        public final int mStyle;

        /* loaded from: classes.dex */
        public class TypefaceApplyCallback implements Runnable {
            public final WeakReference<AppCompatTextHelper> mParent;
            public final Typeface mTypeface;

            public TypefaceApplyCallback(@NonNull WeakReference<AppCompatTextHelper> weakReference, @NonNull Typeface typeface) {
                this.mParent = weakReference;
                this.mTypeface = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AppCompatTextHelper appCompatTextHelper = this.mParent.get();
                if (appCompatTextHelper == null) {
                    return;
                }
                appCompatTextHelper.setTypefaceByCallback(this.mTypeface);
            }
        }

        public ApplyTextViewCallback(@NonNull AppCompatTextHelper appCompatTextHelper, int i2, int i3) {
            this.mParent = new WeakReference<>(appCompatTextHelper);
            this.mFontWeight = i2;
            this.mStyle = i3;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i2) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            int i2;
            AppCompatTextHelper appCompatTextHelper = this.mParent.get();
            if (appCompatTextHelper == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 28 && (i2 = this.mFontWeight) != -1) {
                typeface = Typeface.create(typeface, i2, (this.mStyle & 2) != 0);
            }
            appCompatTextHelper.runOnUiThread(new TypefaceApplyCallback(this.mParent, typeface));
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(this.mView);
    }

    private void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
    }

    public static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i2) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i2);
        if (tintList != null) {
            TintInfo tintInfo = new TintInfo();
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = tintList;
            return tintInfo;
        }
        return null;
    }

    private void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
            TextView textView = this.mView;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            Drawable[] compoundDrawablesRelative2 = this.mView.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
                TextView textView2 = this.mView;
                if (drawable == null) {
                    drawable = compoundDrawables[0];
                }
                if (drawable2 == null) {
                    drawable2 = compoundDrawables[1];
                }
                if (drawable3 == null) {
                    drawable3 = compoundDrawables[2];
                }
                if (drawable4 == null) {
                    drawable4 = compoundDrawables[3];
                }
                textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                return;
            }
            TextView textView3 = this.mView;
            Drawable drawable7 = compoundDrawablesRelative2[0];
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            Drawable drawable8 = compoundDrawablesRelative2[2];
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
        }
    }

    private void setCompoundTints() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void setTextSizeInternal(int i2, float f2) {
        this.mAutoSizeTextHelper.setTextSizeInternal(i2, f2);
    }

    private void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.mStyle = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        if (Build.VERSION.SDK_INT >= 28) {
            int i2 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = i2;
            if (i2 != -1) {
                this.mStyle = (this.mStyle & 2) | 0;
            }
        }
        if (!tintTypedArray.hasValue(R.styleable.TextAppearance_android_fontFamily) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_typeface)) {
                this.mAsyncFontPending = false;
                int i3 = tintTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
                if (i3 == 1) {
                    this.mFontTypeface = Typeface.SANS_SERIF;
                    return;
                } else if (i3 == 2) {
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                } else if (i3 != 3) {
                    return;
                } else {
                    this.mFontTypeface = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.mFontTypeface = null;
        int i4 = tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily) ? R.styleable.TextAppearance_fontFamily : R.styleable.TextAppearance_android_fontFamily;
        int i5 = this.mFontWeight;
        int i6 = this.mStyle;
        if (!context.isRestricted()) {
            try {
                Typeface font = tintTypedArray.getFont(i4, this.mStyle, new ApplyTextViewCallback(this, i5, i6));
                if (font != null) {
                    if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
                        this.mFontTypeface = Typeface.create(Typeface.create(font, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    } else {
                        this.mFontTypeface = font;
                    }
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (string = tintTypedArray.getString(i4)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
            this.mFontTypeface = Typeface.create(Typeface.create(string, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        } else {
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        }
    }

    public void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    public int getAutoSizeMaxTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    public int getAutoSizeMinTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    public int getAutoSizeStepGranularity() {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    public int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    @Nullable
    public ColorStateList getCompoundDrawableTintList() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    @Nullable
    public PorterDuff.Mode getCompoundDrawableTintMode() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isAutoSizeEnabled() {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    @SuppressLint({"NewApi"})
    public void loadFromAttributes(AttributeSet attributeSet, int i2) {
        String str;
        ColorStateList colorStateList;
        String str2;
        ColorStateList colorStateList2;
        boolean z;
        boolean z2;
        ColorStateList colorStateList3;
        AppCompatDrawableManager appCompatDrawableManager;
        int i3;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager2 = AppCompatDrawableManager.get();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextHelper, i2, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableStart)) {
            this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        obtainStyledAttributes.recycle();
        boolean z3 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId != -1) {
            TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, R.styleable.TextAppearance);
            if (z3 || !obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = obtainStyledAttributes2.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            updateTypefaceAndStyle(context, obtainStyledAttributes2);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList3 = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_android_textColor) ? obtainStyledAttributes2.getColorStateList(R.styleable.TextAppearance_android_textColor) : null;
                colorStateList = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_android_textColorHint) ? obtainStyledAttributes2.getColorStateList(R.styleable.TextAppearance_android_textColorHint) : null;
                colorStateList2 = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_android_textColorLink) ? obtainStyledAttributes2.getColorStateList(R.styleable.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList = null;
                colorStateList2 = null;
                colorStateList3 = null;
            }
            str = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_textLocale) ? obtainStyledAttributes2.getString(R.styleable.TextAppearance_textLocale) : null;
            str2 = (Build.VERSION.SDK_INT < 26 || !obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_fontVariationSettings)) ? null : obtainStyledAttributes2.getString(R.styleable.TextAppearance_fontVariationSettings);
            obtainStyledAttributes2.recycle();
        } else {
            str = null;
            colorStateList = null;
            str2 = null;
            colorStateList2 = null;
            z = false;
            z2 = false;
            colorStateList3 = null;
        }
        TintTypedArray obtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i2, 0);
        if (!z3 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_textAllCaps)) {
            z = obtainStyledAttributes3.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_android_textColor)) {
                colorStateList3 = obtainStyledAttributes3.getColorStateList(R.styleable.TextAppearance_android_textColor);
            }
            if (obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
                colorStateList = obtainStyledAttributes3.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
            }
            if (obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_android_textColorLink)) {
                colorStateList2 = obtainStyledAttributes3.getColorStateList(R.styleable.TextAppearance_android_textColorLink);
            }
        }
        if (obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_textLocale)) {
            str = obtainStyledAttributes3.getString(R.styleable.TextAppearance_textLocale);
        }
        if (Build.VERSION.SDK_INT >= 26 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_fontVariationSettings)) {
            str2 = obtainStyledAttributes3.getString(R.styleable.TextAppearance_fontVariationSettings);
        }
        if (Build.VERSION.SDK_INT >= 28 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes3.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            appCompatDrawableManager = appCompatDrawableManager2;
            this.mView.setTextSize(0, 0.0f);
        } else {
            appCompatDrawableManager = appCompatDrawableManager2;
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes3);
        obtainStyledAttributes3.recycle();
        if (colorStateList3 != null) {
            this.mView.setTextColor(colorStateList3);
        }
        if (colorStateList != null) {
            this.mView.setHintTextColor(colorStateList);
        }
        if (colorStateList2 != null) {
            this.mView.setLinkTextColor(colorStateList2);
        }
        if (!z3 && z2) {
            setAllCaps(z);
        }
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            if (this.mFontWeight == -1) {
                this.mView.setTypeface(typeface, this.mStyle);
            } else {
                this.mView.setTypeface(typeface);
            }
        }
        if (str2 != null) {
            this.mView.setFontVariationSettings(str2);
        }
        if (str != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.mView.setTextLocales(LocaleList.forLanguageTags(str));
            } else {
                this.mView.setTextLocale(Locale.forLanguageTag(str.substring(0, str.indexOf(44))));
            }
        }
        this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i2);
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.getAutoSizeTextType() != 0) {
            int[] autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
            if (autoSizeTextAvailableSizes.length > 0) {
                if (this.mView.getAutoSizeStepGranularity() != -1.0f) {
                    this.mView.setAutoSizeTextTypeUniformWithConfiguration(this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
                } else {
                    this.mView.setAutoSizeTextTypeUniformWithPresetSizes(autoSizeTextAvailableSizes, 0);
                }
            }
        }
        TintTypedArray obtainStyledAttributes4 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
        int resourceId2 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        AppCompatDrawableManager appCompatDrawableManager3 = appCompatDrawableManager;
        Drawable drawable = resourceId2 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId2) : null;
        int resourceId3 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawable2 = resourceId3 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId3) : null;
        int resourceId4 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawable3 = resourceId4 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId4) : null;
        int resourceId5 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawable4 = resourceId5 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId5) : null;
        int resourceId6 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawable5 = resourceId6 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId6) : null;
        int resourceId7 = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, resourceId7 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId7) : null);
        if (obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_drawableTint)) {
            TextViewCompat.setCompoundDrawableTintList(this.mView, obtainStyledAttributes4.getColorStateList(R.styleable.AppCompatTextView_drawableTint));
        }
        if (obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_drawableTintMode)) {
            i3 = -1;
            TextViewCompat.setCompoundDrawableTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes4.getInt(R.styleable.AppCompatTextView_drawableTintMode, -1), null));
        } else {
            i3 = -1;
        }
        int dimensionPixelSize = obtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i3);
        int dimensionPixelSize2 = obtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i3);
        int dimensionPixelSize3 = obtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, i3);
        obtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i3) {
            TextViewCompat.setFirstBaselineToTopHeight(this.mView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i3) {
            TextViewCompat.setLastBaselineToBottomHeight(this.mView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != i3) {
            TextViewCompat.setLineHeight(this.mView, dimensionPixelSize3);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return;
        }
        autoSizeText();
    }

    public void onSetCompoundDrawables() {
        applyCompoundDrawablesTints();
    }

    public void onSetTextAppearance(Context context, int i2) {
        String string;
        ColorStateList colorStateList;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i2, R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_textAllCaps)) {
            setAllCaps(obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textColor) && (colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor)) != null) {
            this.mView.setTextColor(colorStateList);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes);
        if (Build.VERSION.SDK_INT >= 26 && obtainStyledAttributes.hasValue(R.styleable.TextAppearance_fontVariationSettings) && (string = obtainStyledAttributes.getString(R.styleable.TextAppearance_fontVariationSettings)) != null) {
            this.mView.setFontVariationSettings(string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void runOnUiThread(@NonNull Runnable runnable) {
        this.mView.post(runnable);
    }

    public void setAllCaps(boolean z) {
        this.mView.setAllCaps(z);
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i2) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(i2);
    }

    public void setCompoundDrawableTintList(@Nullable ColorStateList colorStateList) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        setCompoundTints();
    }

    public void setCompoundDrawableTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        setCompoundTints();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setTextSize(int i2, float f2) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || isAutoSizeEnabled()) {
            return;
        }
        setTextSizeInternal(i2, f2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setTypefaceByCallback(@NonNull Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mView.setTypeface(typeface);
            this.mFontTypeface = typeface;
        }
    }
}
