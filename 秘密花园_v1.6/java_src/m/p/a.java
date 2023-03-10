package m.p;

import java.util.Arrays;
import m.j;
import m.m.c;
import m.m.d;
import m.m.e;
import m.m.g;
import m.q.l;
import m.q.o;
/* compiled from: SafeSubscriber.java */
/* loaded from: classes2.dex */
public class a<T> extends j<T> {

    /* renamed from: e  reason: collision with root package name */
    public final j<? super T> f7407e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7408f;

    public a(j<? super T> jVar) {
        super(jVar, true);
        this.f7407e = jVar;
    }

    @Override // m.j
    public void d() {
        g gVar;
        if (this.f7408f) {
            return;
        }
        this.f7408f = true;
        try {
            this.f7407e.d();
            try {
                this.a.c();
            } finally {
            }
        } catch (Throwable th) {
            try {
                j.b.B(th);
                l.a(th);
                throw new c(th.getMessage(), th);
            } catch (Throwable th2) {
                try {
                    this.a.c();
                    throw th2;
                } finally {
                }
            }
        }
    }

    @Override // m.j
    public void e(Throwable th) {
        j.b.B(th);
        if (this.f7408f) {
            return;
        }
        this.f7408f = true;
        if (o.f7417f.b() != null) {
            try {
                this.f7407e.e(th);
                try {
                    this.a.c();
                    return;
                } catch (Throwable th2) {
                    l.a(th2);
                    throw new d(th2);
                }
            } catch (e e2) {
                try {
                    this.a.c();
                    throw e2;
                } catch (Throwable th3) {
                    l.a(th3);
                    throw new e("Observer.onError not implemented and error while unsubscribing.", new m.m.a(Arrays.asList(th, th3)));
                }
            } catch (Throwable th4) {
                l.a(th4);
                try {
                    this.a.c();
                    throw new d("Error occurred when trying to propagate error to Observer.onError", new m.m.a(Arrays.asList(th, th4)));
                } catch (Throwable th5) {
                    l.a(th5);
                    throw new d("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new m.m.a(Arrays.asList(th, th4, th5)));
                }
            }
        }
        throw null;
    }

    @Override // m.j
    public void f(T t) {
        try {
            if (this.f7408f) {
                return;
            }
            this.f7407e.f(t);
        } catch (Throwable th) {
            j.b.B(th);
            e(th);
        }
    }
}
