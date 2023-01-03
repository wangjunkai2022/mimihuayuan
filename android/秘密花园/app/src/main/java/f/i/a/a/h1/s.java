package f.i.a.a.h1;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.l1.i0;
import f.i.a.a.m1.h0;
import f.i.a.a.u0;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: CompositeMediaSource.java */
/* loaded from: classes.dex */
public abstract class s<T> extends o {

    /* renamed from: f  reason: collision with root package name */
    public final HashMap<T, b> f4858f = new HashMap<>();
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public Handler f4859g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public i0 f4860h;

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
            if (aVar3.a == s && h0.b(aVar3.b, aVar2)) {
                return true;
            }
            this.b = s.this.b.D(s, aVar2, 0);
            return true;
        }

        public final f0.c b(f0.c cVar) {
            long q = s.this.q(this.a, cVar.f4751f);
            long q2 = s.this.q(this.a, cVar.f4752g);
            if (q == cVar.f4751f && q2 == cVar.f4752g) {
                return cVar;
            }
            return new f0.c(cVar.a, cVar.b, cVar.f4748c, cVar.f4749d, cVar.f4750e, q, q2);
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
        public final f0 f4862c;

        public b(e0 e0Var, e0.b bVar, f0 f0Var) {
            this.a = e0Var;
            this.b = bVar;
            this.f4862c = f0Var;
        }
    }

    @Override // f.i.a.a.h1.e0
    @CallSuper
    public void b() throws IOException {
        for (b bVar : this.f4858f.values()) {
            bVar.a.b();
        }
    }

    @Override // f.i.a.a.h1.o
    @CallSuper
    public void n() {
        for (b bVar : this.f4858f.values()) {
            bVar.a.i(bVar.b);
            bVar.a.h(bVar.f4862c);
        }
        this.f4858f.clear();
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

    public final void v(T t, e0 e0Var) {
        h.m(!this.f4858f.containsKey(t));
        a aVar = new e0.b(t) { // from class: f.i.a.a.h1.a
            public final /* synthetic */ Object b;

            {
                this.b = r2;
            }

            @Override // f.i.a.a.h1.e0.b
            public final void f(e0 e0Var2, u0 u0Var, Object obj) {
                s.this.t(this.b, e0Var2, u0Var, obj);
            }
        };
        a aVar2 = new a(t);
        this.f4858f.put(t, new b(e0Var, aVar, aVar2));
        Handler handler = this.f4859g;
        h.t(handler);
        e0Var.g(handler, aVar2);
        e0Var.e(aVar, this.f4860h);
    }
}
