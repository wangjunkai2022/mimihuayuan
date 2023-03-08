package f.a.a.a;

import android.view.View;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;

/* compiled from: OrientationHelperEx.java */
/* loaded from: classes.dex */
public abstract class i {
    public final ExposeLinearLayoutManagerEx a;
    public int b = Integer.MIN_VALUE;

    public i(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx, g gVar) {
        this.a = exposeLinearLayoutManagerEx;
    }

    public static i a(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx, int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return new h(exposeLinearLayoutManagerEx);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return new g(exposeLinearLayoutManagerEx);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract void k(int i2);
}
