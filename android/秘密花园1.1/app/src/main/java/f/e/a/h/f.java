package f.e.a.h;

import android.os.Handler;
import android.os.Message;

/* compiled from: M3U8InfoManger.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    public static f f3802c;
    public f.e.a.h.h.d a;
    public Handler b = new a();

    /* compiled from: M3U8InfoManger.java */
    /* loaded from: classes.dex */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1101) {
                ((c) f.this.a).a.c((Throwable) message.obj);
            } else if (i2 != 1102) {
            } else {
                f.e.a.h.h.d dVar = f.this.a;
                f.e.a.h.h.a aVar = (f.e.a.h.h.a) message.obj;
                c cVar = (c) dVar;
                if (cVar != null) {
                    new b(cVar, aVar).start();
                    return;
                }
                throw null;
            }
        }
    }
}
