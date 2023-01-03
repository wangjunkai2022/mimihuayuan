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
    public int f3986c;

    /* renamed from: d  reason: collision with root package name */
    public final WheelView f3987d;

    public c(WheelView wheelView, int i2) {
        this.f3987d = wheelView;
        this.f3986c = i2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.a == Integer.MAX_VALUE) {
            this.a = this.f3986c;
        }
        int i2 = this.a;
        int i3 = (int) (((float) i2) * 0.1f);
        this.b = i3;
        if (i3 == 0) {
            if (i2 < 0) {
                this.b = -1;
            } else {
                this.b = 1;
            }
        }
        if (Math.abs(this.a) <= 1) {
            this.f3987d.a();
            this.f3987d.getHandler().sendEmptyMessage(PathInterpolatorCompat.MAX_NUM_POINTS);
            return;
        }
        WheelView wheelView = this.f3987d;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() + ((float) this.b));
        WheelView wheelView2 = this.f3987d;
        if (!wheelView2.z) {
            float itemHeight = wheelView2.getItemHeight();
            float f2 = ((float) (-this.f3987d.getInitPosition())) * itemHeight;
            float itemsCount = ((float) ((this.f3987d.getItemsCount() - 1) - this.f3987d.getInitPosition())) * itemHeight;
            if (this.f3987d.getTotalScrollY() <= f2 || this.f3987d.getTotalScrollY() >= itemsCount) {
                WheelView wheelView3 = this.f3987d;
                wheelView3.setTotalScrollY(wheelView3.getTotalScrollY() - ((float) this.b));
                this.f3987d.a();
                this.f3987d.getHandler().sendEmptyMessage(PathInterpolatorCompat.MAX_NUM_POINTS);
                return;
            }
        }
        this.f3987d.getHandler().sendEmptyMessage(1000);
        this.a -= this.b;
    }
}
