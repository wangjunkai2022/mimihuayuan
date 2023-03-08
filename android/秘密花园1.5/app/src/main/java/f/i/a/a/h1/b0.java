package f.i.a.a.h1;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.m0;
import f.i.a.a.u0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LoopingMediaSource.java */
/* loaded from: classes.dex */
public final class b0 extends s<Void> {

    /* renamed from: i  reason: collision with root package name */
    public final e0 f4802i;

    /* renamed from: j  reason: collision with root package name */
    public final int f4803j;

    /* renamed from: k  reason: collision with root package name */
    public final Map<e0.a, e0.a> f4804k;

    /* renamed from: l  reason: collision with root package name */
    public final Map<d0, e0.a> f4805l;

    /* compiled from: LoopingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class a extends z {
        public a(u0 u0Var) {
            super(u0Var);
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public int e(int i2, int i3, boolean z) {
            int e2 = this.b.e(i2, i3, z);
            return e2 == -1 ? this.b.a(z) : e2;
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public int l(int i2, int i3, boolean z) {
            int l2 = this.b.l(i2, i3, z);
            return l2 == -1 ? this.b.c(z) : l2;
        }
    }

    /* compiled from: LoopingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class b extends n {

        /* renamed from: e  reason: collision with root package name */
        public final u0 f4806e;

        /* renamed from: f  reason: collision with root package name */
        public final int f4807f;

        /* renamed from: g  reason: collision with root package name */
        public final int f4808g;

        /* renamed from: h  reason: collision with root package name */
        public final int f4809h;

        public b(u0 u0Var, int i2) {
            super(false, new m0.b(i2));
            this.f4806e = u0Var;
            this.f4807f = u0Var.i();
            this.f4808g = u0Var.p();
            this.f4809h = i2;
            int i3 = this.f4807f;
            if (i3 > 0) {
                c.a.a.b.g.h.w(i2 <= ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED / i3, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // f.i.a.a.h1.n
        public u0 A(int i2) {
            return this.f4806e;
        }

        @Override // f.i.a.a.u0
        public int i() {
            return this.f4807f * this.f4809h;
        }

        @Override // f.i.a.a.u0
        public int p() {
            return this.f4808g * this.f4809h;
        }

        @Override // f.i.a.a.h1.n
        public int r(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // f.i.a.a.h1.n
        public int s(int i2) {
            return i2 / this.f4807f;
        }

        @Override // f.i.a.a.h1.n
        public int t(int i2) {
            return i2 / this.f4808g;
        }

        @Override // f.i.a.a.h1.n
        public Object v(int i2) {
            return Integer.valueOf(i2);
        }

        @Override // f.i.a.a.h1.n
        public int w(int i2) {
            return i2 * this.f4807f;
        }

        @Override // f.i.a.a.h1.n
        public int x(int i2) {
            return i2 * this.f4808g;
        }
    }

    public b0(e0 e0Var, int i2) {
        c.a.a.b.g.h.m(i2 > 0);
        this.f4802i = e0Var;
        this.f4803j = i2;
        this.f4804k = new HashMap();
        this.f4805l = new HashMap();
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.f4802i.a();
    }

    @Override // f.i.a.a.h1.e0
    public d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        if (this.f4803j == Integer.MAX_VALUE) {
            return this.f4802i.c(aVar, eVar, j2);
        }
        e0.a a2 = aVar.a(((Pair) aVar.a).second);
        this.f4804k.put(a2, aVar);
        d0 c2 = this.f4802i.c(a2, eVar, j2);
        this.f4805l.put(c2, a2);
        return c2;
    }

    @Override // f.i.a.a.h1.e0
    public void d(d0 d0Var) {
        this.f4802i.d(d0Var);
        e0.a remove = this.f4805l.remove(d0Var);
        if (remove != null) {
            this.f4804k.remove(remove);
        }
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable f.i.a.a.l1.i0 i0Var) {
        this.f4935h = i0Var;
        this.f4934g = new Handler();
        v(null, this.f4802i);
    }

    @Override // f.i.a.a.h1.s
    @Nullable
    public e0.a o(Void r2, e0.a aVar) {
        return this.f4803j != Integer.MAX_VALUE ? this.f4804k.get(aVar) : aVar;
    }

    @Override // f.i.a.a.h1.s
    public void u(Void r1, e0 e0Var, u0 u0Var, @Nullable Object obj) {
        int i2 = this.f4803j;
        m(i2 != Integer.MAX_VALUE ? new b(u0Var, i2) : new a(u0Var), obj);
    }
}
