package l;

import c.a.a.b.g.h;
import h.m.a;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class w implements Runnable {
    public final /* synthetic */ a a;
    public final /* synthetic */ Exception b;

    public w(a aVar, Exception exc) {
        this.a = aVar;
        this.b = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h.h0(this.a).a(h.B(this.b));
    }
}
