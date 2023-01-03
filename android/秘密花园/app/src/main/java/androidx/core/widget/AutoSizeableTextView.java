package androidx.core.widget;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface AutoSizeableTextView {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final boolean PLATFORM_SUPPORTS_AUTOSIZE;

    static {
        PLATFORM_SUPPORTS_AUTOSIZE = Build.VERSION.SDK_INT >= 27;
    }

    @Override // androidx.core.widget.AutoSizeableTextView
    int getAutoSizeMaxTextSize();

    @Override // androidx.core.widget.AutoSizeableTextView
    int getAutoSizeMinTextSize();

    @Override // androidx.core.widget.AutoSizeableTextView
    int getAutoSizeStepGranularity();

    @Override // androidx.core.widget.AutoSizeableTextView
    int[] getAutoSizeTextAvailableSizes();

    @Override // androidx.core.widget.AutoSizeableTextView
    int getAutoSizeTextType();

    @Override // androidx.core.widget.AutoSizeableTextView
    void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) throws IllegalArgumentException;

    @Override // androidx.core.widget.AutoSizeableTextView
    void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i2) throws IllegalArgumentException;

    @Override // androidx.core.widget.AutoSizeableTextView
    void setAutoSizeTextTypeWithDefaults(int i2);
}
