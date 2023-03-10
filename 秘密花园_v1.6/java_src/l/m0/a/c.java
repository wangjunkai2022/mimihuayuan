package l.m0.a;

import l.g0;
/* compiled from: CallEnqueueOnSubscribe.java */
/* loaded from: classes2.dex */
public class c implements l.f<T> {
    public final /* synthetic */ b a;

    public c(d dVar, b bVar) {
        this.a = bVar;
    }

    @Override // l.f
    public void a(l.d<T> dVar, g0<T> g0Var) {
        this.a.f(g0Var);
    }

    @Override // l.f
    public void b(l.d<T> dVar, Throwable th) {
        j.b.B(th);
        this.a.e(th);
    }
}
