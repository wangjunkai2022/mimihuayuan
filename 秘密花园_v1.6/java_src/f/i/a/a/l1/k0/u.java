package f.i.a.a.l1.k0;

import android.os.ConditionVariable;
/* compiled from: SimpleCache.java */
/* loaded from: classes.dex */
public class u extends Thread {
    public final /* synthetic */ ConditionVariable a;
    public final /* synthetic */ v b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(v vVar, String str, ConditionVariable conditionVariable) {
        super(str);
        this.b = vVar;
        this.a = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        synchronized (this.b) {
            this.a.open();
            v.l(this.b);
            this.b.b.d();
        }
    }
}
