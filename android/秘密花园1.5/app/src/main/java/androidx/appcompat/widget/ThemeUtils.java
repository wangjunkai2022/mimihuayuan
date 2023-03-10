package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.graphics.ColorUtils;

/* loaded from: classes.dex */
public class ThemeUtils {
    public static final ThreadLocal<TypedValue> TL_TYPED_VALUE = new ThreadLocal<>();
    public static final int[] DISABLED_STATE_SET = {-16842910};
    public static final int[] FOCUSED_STATE_SET = {16842908};
    public static final int[] ACTIVATED_STATE_SET = {16843518};
    public static final int[] PRESSED_STATE_SET = {16842919};
    public static final int[] CHECKED_STATE_SET = {16842912};
    public static final int[] SELECTED_STATE_SET = {16842913};
    public static final int[] NOT_PRESSED_OR_FOCUSED_STATE_SET = {-16842919, -16842908};
    public static final int[] EMPTY_STATE_SET = new int[0];
    public static final int[] TEMP_ARRAY = new int[1];

    public static ColorStateList createDisabledStateList(int i2, int i3) {
        return new ColorStateList(new int[][]{DISABLED_STATE_SET, EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    public static int getDisabledThemeAttrColor(Context context, int i2) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i2);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(DISABLED_STATE_SET, themeAttrColorStateList.getDefaultColor());
        }
        TypedValue typedValue = getTypedValue();
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        return getThemeAttrColor(context, i2, typedValue.getFloat());
    }

    public static int getThemeAttrColor(Context context, int i2) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i2;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList getThemeAttrColorStateList(Context context, int i2) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i2;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static TypedValue getTypedValue() {
        TypedValue typedValue = TL_TYPED_VALUE.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            TL_TYPED_VALUE.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    public static int getThemeAttrColor(Context context, int i2, float f2) {
        int themeAttrColor = getThemeAttrColor(context, i2);
        return ColorUtils.setAlphaComponent(themeAttrColor, Math.round(Color.alpha(themeAttrColor) * f2));
    }
}
