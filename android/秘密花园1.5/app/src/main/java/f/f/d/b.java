package f.f.d;

import android.os.Handler;
import android.os.Message;
import com.contrarywind.view.WheelView;

/* compiled from: MessageHandler.java */
/* loaded from: classes.dex */
public final class b extends Handler {
    public final WheelView a;

    public b(WheelView wheelView) {
        this.a = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1000) {
            this.a.invalidate();
        } else if (i2 == 2000) {
            this.a.g(WheelView.a.FLING);
        } else if (i2 != 3000) {
        } else {
            WheelView wheelView = this.a;
            if (wheelView.f2360e != null) {
                wheelView.postDelayed(new f.f.e.c(wheelView), 200L);
            }
        }
    }
}
