package f.f.c;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.contrarywind.view.WheelView;
import java.util.concurrent.TimeUnit;

/* compiled from: LoopViewGestureListener.java */
/* loaded from: classes.dex */
public final class a extends GestureDetector.SimpleOnGestureListener {
    public final WheelView a;

    public a(WheelView wheelView) {
        this.a = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        WheelView wheelView = this.a;
        wheelView.a();
        wheelView.f2289i = wheelView.f2288h.scheduleWithFixedDelay(new f.f.d.a(wheelView, f3), 0, 5, TimeUnit.MILLISECONDS);
        return true;
    }
}
