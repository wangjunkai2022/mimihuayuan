package f.a.a.a;

import android.view.View;
import androidx.annotation.Nullable;

/* compiled from: LayoutManagerHelper.java */
/* loaded from: classes.dex */
public interface c {
    @Nullable
    View findViewByPosition(int i2);

    @Nullable
    View getChildAt(int i2);

    int getChildCount();

    int getOrientation();

    int getPaddingBottom();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingTop();

    int getPosition(View view);

    boolean getReverseLayout();

    boolean isEnableMarginOverLap();

    void measureChild(View view, int i2, int i3);

    void measureChildWithMargins(View view, int i2, int i3);

    void showView(View view);
}
