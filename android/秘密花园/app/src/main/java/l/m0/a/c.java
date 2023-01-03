package l.m0.a;

import j.b;
import l.d;
import l.f;
import l.g0;

/* compiled from: CallEnqueueOnSubscribe.java */
/* loaded from: classes2.dex */
public class c implements f<T> {
    public final /* synthetic */ b a;

    public c(d dVar, b bVar) {
        this.a = bVar;
    }

    @Override // l.f
    public void a(d<T> dVar, g0<T> g0Var) {
        this.a.f(g0Var);
    }

    @Override // l.f
    public void b(d<T> dVar, Throwable th) {
        b.B(th);
        this.a.e(th);
    }
}
