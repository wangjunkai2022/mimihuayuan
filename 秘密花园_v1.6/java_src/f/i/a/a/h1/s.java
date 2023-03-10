package f.i.a.a.h1;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.u0;
import java.io.IOException;
import java.util.HashMap;
/* compiled from: CompositeMediaSource.java */
/* loaded from: classes.dex */
public abstract class s<T> extends o {

    /* renamed from: f  reason: collision with root package name */
    public final HashMap<T, b> f4942f = new HashMap<>();
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public Handler f4943g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public f.i.a.a.l1.i0 f4944h;

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes.dex */
    public final class a implements f0 {
        public final T a;
        public f0.a b;

        public a(T t) {
            this.b = s.this.j(null);
            this.a = t;
        }

        public final boolean a(int i2, @Nullable e0.a aVar) {
            e0.a aVar2;
            if (aVar != null) {
                aVar2 = s.this.o(this.a, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int s = s.this.s(this.a, i2);
            f0.a aVar3 = this.b;
            if (aVar3.a == s && f.i.a.a.m1.h0.b(aVar3.b, aVar2)) {
                return true;
            }
            this.b = s.this.b.D(s, aVar2, 0L);
            return true;
        }

        public final f0.c b(f0.c cVar) {
            long q = s.this.q(this.a, cVar.f4835f);
            long q2 = s.this.q(this.a, cVar.f4836g);
            return (q == cVar.f4835f && q2 == cVar.f4836g) ? cVar : new f0.c(cVar.a, cVar.b, cVar.f4832c, cVar.f4833d, cVar.f4834e, q, q2);
        }

        @Override // f.i.a.a.h1.f0
        public void e(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
            if (a(i2, aVar)) {
                this.b.v(bVar, b(cVar));
            }
        }

        @Override // f.i.a.a.h1.f0
        public void f(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar, IOException iOException, boolean z) {
            if (a(i2, aVar)) {
                this.b.s(bVar, b(cVar), iOException, z);
            }
        }

        @Override // f.i.a.a.h1.f0
        public void i(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
            if (a(i2, aVar)) {
                this.b.p(bVar, b(cVar));
            }
        }

        @Override // f.i.a.a.h1.f0
        public void l(int i2, e0.a aVar) {
            if (a(i2, aVar)) {
                this.b.z();
            }
        }

        @Override // f.i.a.a.h1.f0
        public void n(int i2, e0.a aVar) {
            if (a(i2, aVar)) {
                this.b.B();
            }
        }

        @Override // f.i.a.a.h1.f0
        public void o(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
            if (a(i2, aVar)) {
                this.b.m(bVar, b(cVar));
            }
        }

        @Override // f.i.a.a.h1.f0
        public void p(int i2, e0.a aVar) {
            if (a(i2, aVar)) {
                this.b.y();
            }
        }

        @Override // f.i.a.a.h1.f0
        public void x(int i2, @Nullable e0.a aVar, f0.c cVar) {
            if (a(i2, aVar)) {
                this.b.C(b(cVar));
            }
        }

        @Override // f.i.a.a.h1.f0
        public void y(int i2, @Nullable e0.a aVar, f0.c cVar) {
            if (a(i2, aVar)) {
                this.b.c(b(cVar));
            }
        }
    }

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final e0 a;
        public final e0.b b;

        /* renamed from: c  reason: collision with root package name */
        public final f0 f4946c;

        public b(e0 e0Var, e0.b bVar, f0 f0Var) {
            this.a = e0Var;
            this.b = bVar;
            this.f4946c = f0Var;
        }
    }

    @Override // f.i.a.a.h1.e0
    @CallSuper
    public void b() throws IOException {
        for (b bVar : this.f4942f.values()) {
            bVar.a.b();
        }
    }

    @Override // f.i.a.a.h1.o
    @CallSuper
    public void n() {
        for (b bVar : this.f4942f.values()) {
            bVar.a.i(bVar.b);
            bVar.a.h(bVar.f4946c);
        }
        this.f4942f.clear();
    }

    @Nullable
    public e0.a o(T t, e0.a aVar) {
        return aVar;
    }

    public long q(@Nullable T t, long j2) {
        return j2;
    }

    public int s(T t, int i2) {
        return i2;
    }

    /* renamed from: u */
    public abstract void t(T t, e0 e0Var, u0 u0Var, @Nullable Object obj);

    public final void v(final T t, e0 e0Var) {
        c.a.a.b.g.h.m(!this.f4942f.containsKey(t));
        e0.b bVar = new e0.b() { // from class: f.i.a.a.h1.a
            @Override // f.i.a.a.h1.e0.b
            public final void f(e0 e0Var2, u0 u0Var, Object obj) {
                s.this.t(t, e0Var2, u0Var, obj);
            }
        };
        a aVar = new a(t);
        this.f4942f.put(t, new b(e0Var, bVar, aVar));
        Handler handler = this.f4943g;
        c.a.a.b.g.h.t(handler);
        e0Var.g(handler, aVar);
        e0Var.e(bVar, this.f4944h);
    }
}
