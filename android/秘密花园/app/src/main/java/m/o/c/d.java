package m.o.c;

import java.util.concurrent.ThreadFactory;
import m.g;

/* compiled from: NewThreadScheduler.java */
/* loaded from: classes2.dex */
public final class d extends g {
    public final ThreadFactory a;

    public d(ThreadFactory threadFactory) {
        this.a = threadFactory;
    }

    @Override // m.g
    public g.a a() {
        return new f(this.a);
    }
}
