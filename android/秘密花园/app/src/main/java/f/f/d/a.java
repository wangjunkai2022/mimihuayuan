package f.f.d;

import com.contrarywind.view.WheelView;
import java.util.TimerTask;

/* compiled from: InertiaTimerTask.java */
/* loaded from: classes.dex */
public final class a extends TimerTask {
    public float a = 2.14748365E9f;
    public final float b;

    /* renamed from: c  reason: collision with root package name */
    public final WheelView f3985c;

    public a(WheelView wheelView, float f2) {
        this.f3985c = wheelView;
        this.b = f2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.a == 2.14748365E9f) {
            float f2 = 2000.0f;
            if (Math.abs(this.b) > 2000.0f) {
                if (this.b <= 0.0f) {
                    f2 = -2000.0f;
                }
                this.a = f2;
            } else {
                this.a = this.b;
            }
        }
        if (Math.abs(this.a) < 0.0f || Math.abs(this.a) > 20.0f) {
            WheelView wheelView = this.f3985c;
            float f3 = (float) ((int) (this.a / 100.0f));
            wheelView.setTotalScrollY(wheelView.getTotalScrollY() - f3);
            WheelView wheelView2 = this.f3985c;
            if (!wheelView2.z) {
                float itemHeight = wheelView2.getItemHeight();
                float f4 = ((float) (-this.f3985c.getInitPosition())) * itemHeight;
                float itemsCount = ((float) ((this.f3985c.getItemsCount() - 1) - this.f3985c.getInitPosition())) * itemHeight;
                double d2 = ((double) itemHeight) * 0.25d;
                if (((double) this.f3985c.getTotalScrollY()) - d2 < ((double) f4)) {
                    f4 = this.f3985c.getTotalScrollY() + f3;
                } else if (((double) this.f3985c.getTotalScrollY()) + d2 > ((double) itemsCount)) {
                    itemsCount = this.f3985c.getTotalScrollY() + f3;
                }
                if (this.f3985c.getTotalScrollY() <= f4) {
                    this.a = 40.0f;
                    this.f3985c.setTotalScrollY((float) ((int) f4));
                } else if (this.f3985c.getTotalScrollY() >= itemsCount) {
                    this.f3985c.setTotalScrollY((float) ((int) itemsCount));
                    this.a = -40.0f;
                }
            }
            float f5 = this.a;
            if (f5 < 0.0f) {
                this.a = f5 + 20.0f;
            } else {
                this.a = f5 - 20.0f;
            }
            this.f3985c.getHandler().sendEmptyMessage(1000);
            return;
        }
        this.f3985c.a();
        this.f3985c.getHandler().sendEmptyMessage(2000);
    }
}
