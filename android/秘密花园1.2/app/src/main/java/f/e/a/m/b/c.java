package f.e.a.m.b;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: ViewPagerScroller.java */
/* loaded from: classes.dex */
public class c extends Scroller {
    public int a;

    public c(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.a = 500;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i3, int i4, int i5, int i6) {
        super.startScroll(i2, i3, i4, i5, this.a);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i3, int i4, int i5) {
        super.startScroll(i2, i3, i4, i5, this.a);
    }
}
