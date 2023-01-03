package f.i.a.a.m1;

import android.os.Handler;
import android.os.Message;

/* compiled from: SystemHandlerWrapper.java */
/* loaded from: classes.dex */
public final class c0 {
    public final Handler a;

    public c0(Handler handler) {
        this.a = handler;
    }

    public Message a(int i2, int i3, int i4) {
        return this.a.obtainMessage(i2, i3, i4);
    }

    public Message b(int i2, Object obj) {
        return this.a.obtainMessage(i2, obj);
    }

    public boolean c(int i2) {
        return this.a.sendEmptyMessage(i2);
    }
}
