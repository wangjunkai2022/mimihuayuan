package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface NestedScrollingParent {
    @Override // androidx.core.view.NestedScrollingParent
    int getNestedScrollAxes();

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    boolean onNestedFling(@NonNull View view, float f2, float f3, boolean z);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    boolean onNestedPreFling(@NonNull View view, float f2, float f3);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2);

    @Override // android.view.ViewParent, androidx.core.view.NestedScrollingParent
    void onStopNestedScroll(@NonNull View view);
}
