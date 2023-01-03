package f.i.a.a.e1;

import android.os.Handler;
import android.os.Message;
import f.i.a.a.e1.q;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Handler.Callback {
    public final /* synthetic */ q.e a;

    public /* synthetic */ h(q.e eVar) {
        this.a = eVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return this.a.a(message);
    }
}
