package f.f.d;

import com.contrarywind.view.WheelView;
import java.util.TimerTask;
/* compiled from: InertiaTimerTask.java */
/* loaded from: classes.dex */
public final class a extends TimerTask {
    public float a = 2.14748365E9f;
    public final float b;

    /* renamed from: c  reason: collision with root package name */
    public final WheelView f4069c;

    public a(WheelView wheelView, float f2) {
        this.f4069c = wheelView;
        this.b = f2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.a == 2.14748365E9f) {
            if (Math.abs(this.b) > 2000.0f) {
                this.a = this.b <= 0.0f ? -2000.0f : 2000.0f;
            } else {
                this.a = this.b;
            }
        }
        if (Math.abs(this.a) >= 0.0f && Math.abs(this.a) <= 20.0f) {
            this.f4069c.a();
            this.f4069c.getHandler().sendEmptyMessage(2000);
            return;
        }
        WheelView wheelView = this.f4069c;
        float f2 = (int) (this.a / 100.0f);
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() - f2);
        WheelView wheelView2 = this.f4069c;
        if (!wheelView2.z) {
            float itemHeight = wheelView2.getItemHeight();
            float f3 = (-this.f4069c.getInitPosition()) * itemHeight;
            float itemsCount = ((this.f4069c.getItemsCount() - 1) - this.f4069c.getInitPosition()) * itemHeight;
            double d2 = itemHeight * 0.25d;
            if (this.f4069c.getTotalScrollY() - d2 < f3) {
                f3 = this.f4069c.getTotalScrollY() + f2;
            } else if (this.f4069c.getTotalScrollY() + d2 > itemsCount) {
                itemsCount = this.f4069c.getTotalScrollY() + f2;
            }
            if (this.f4069c.getTotalScrollY() <= f3) {
                this.a = 40.0f;
                this.f4069c.setTotalScrollY((int) f3);
            } else if (this.f4069c.getTotalScrollY() >= itemsCount) {
                this.f4069c.setTotalScrollY((int) itemsCount);
                this.a = -40.0f;
            }
        }
        float f4 = this.a;
        if (f4 < 0.0f) {
            this.a = f4 + 20.0f;
        } else {
            this.a = f4 - 20.0f;
        }
        this.f4069c.getHandler().sendEmptyMessage(1000);
    }
}
