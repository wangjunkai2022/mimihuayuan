package f.f.d;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.contrarywind.view.WheelView;
import java.util.TimerTask;

/* compiled from: SmoothScrollTimerTask.java */
/* loaded from: classes.dex */
public final class c extends TimerTask {
    public int a = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f4061c;

    /* renamed from: d  reason: collision with root package name */
    public final WheelView f4062d;

    public c(WheelView wheelView, int i2) {
        this.f4062d = wheelView;
        this.f4061c = i2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.a == Integer.MAX_VALUE) {
            this.a = this.f4061c;
        }
        int i2 = this.a;
        int i3 = (int) (i2 * 0.1f);
        this.b = i3;
        if (i3 == 0) {
            if (i2 < 0) {
                this.b = -1;
            } else {
                this.b = 1;
            }
        }
        if (Math.abs(this.a) <= 1) {
            this.f4062d.a();
            this.f4062d.getHandler().sendEmptyMessage(PathInterpolatorCompat.MAX_NUM_POINTS);
            return;
        }
        WheelView wheelView = this.f4062d;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() + this.b);
        WheelView wheelView2 = this.f4062d;
        if (!wheelView2.z) {
            float itemHeight = wheelView2.getItemHeight();
            float itemsCount = ((this.f4062d.getItemsCount() - 1) - this.f4062d.getInitPosition()) * itemHeight;
            if (this.f4062d.getTotalScrollY() <= (-this.f4062d.getInitPosition()) * itemHeight || this.f4062d.getTotalScrollY() >= itemsCount) {
                WheelView wheelView3 = this.f4062d;
                wheelView3.setTotalScrollY(wheelView3.getTotalScrollY() - this.b);
                this.f4062d.a();
                this.f4062d.getHandler().sendEmptyMessage(PathInterpolatorCompat.MAX_NUM_POINTS);
                return;
            }
        }
        this.f4062d.getHandler().sendEmptyMessage(1000);
        this.a -= this.b;
    }
}
