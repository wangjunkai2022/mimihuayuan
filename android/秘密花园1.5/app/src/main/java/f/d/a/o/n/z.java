package f.d.a.o.n;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: ResourceRecycler.java */
/* loaded from: classes.dex */
public class z {
    public boolean a;
    public final Handler b = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: ResourceRecycler.java */
    /* loaded from: classes.dex */
    public static final class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((w) message.obj).d();
                return true;
            }
            return false;
        }
    }

    public synchronized void a(w<?> wVar) {
        if (this.a) {
            this.b.obtainMessage(1, wVar).sendToTarget();
        } else {
            this.a = true;
            wVar.d();
            this.a = false;
        }
    }
}
