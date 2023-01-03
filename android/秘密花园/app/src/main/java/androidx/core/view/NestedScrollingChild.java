package androidx.core.view;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface NestedScrollingChild {
    @Override // androidx.core.view.NestedScrollingChild
    boolean dispatchNestedFling(float f2, float f3, boolean z);

    @Override // androidx.core.view.NestedScrollingChild
    boolean dispatchNestedPreFling(float f2, float f3);

    @Override // androidx.core.view.NestedScrollingChild
    boolean dispatchNestedPreScroll(int i2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2);

    @Override // androidx.core.view.NestedScrollingChild
    boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, @Nullable int[] iArr);

    @Override // androidx.core.view.NestedScrollingChild
    boolean hasNestedScrollingParent();

    @Override // androidx.core.view.NestedScrollingChild
    boolean isNestedScrollingEnabled();

    @Override // androidx.core.view.NestedScrollingChild
    void setNestedScrollingEnabled(boolean z);

    @Override // androidx.core.view.NestedScrollingChild
    boolean startNestedScroll(int i2);

    @Override // androidx.core.view.NestedScrollingChild
    void stopNestedScroll();
}
