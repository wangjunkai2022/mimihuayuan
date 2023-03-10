package f.f.e;

import com.contrarywind.view.WheelView;
/* compiled from: WheelView.java */
/* loaded from: classes.dex */
public class c implements Runnable {
    public final /* synthetic */ WheelView a;

    public c(WheelView wheelView) {
        this.a = wheelView;
    }

    @Override // java.lang.Runnable
    public void run() {
        WheelView wheelView = this.a;
        wheelView.f2364e.a(wheelView.getCurrentItem());
    }
}
