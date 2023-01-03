package f.i.a.a.v0;

import android.view.Surface;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.d1.e;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.p0;
import f.i.a.a.j0;
import f.i.a.a.j1.k;
import f.i.a.a.l0;
import f.i.a.a.l1.g;
import f.i.a.a.m1.h;
import f.i.a.a.n1.q;
import f.i.a.a.n1.s;
import f.i.a.a.u0;
import f.i.a.a.v0.b;
import f.i.a.a.w;
import f.i.a.a.w0.l;
import f.i.a.a.w0.o;
import f.i.a.a.y0.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: AnalyticsCollector.java */
/* loaded from: classes.dex */
public class a implements l0.b, e, o, s, f0, g.a, f.i.a.a.z0.c, q, l {
    public final CopyOnWriteArraySet<f.i.a.a.v0.b> a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final u0.c f5810c;

    /* renamed from: d  reason: collision with root package name */
    public final c f5811d;

    /* renamed from: e  reason: collision with root package name */
    public l0 f5812e;

    /* compiled from: AnalyticsCollector.java */
    /* renamed from: f.i.a.a.v0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0089a {
    }

    /* compiled from: AnalyticsCollector.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final e0.a a;
        public final u0 b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5813c;

        public b(e0.a aVar, u0 u0Var, int i2) {
            this.a = aVar;
            this.b = u0Var;
            this.f5813c = i2;
        }
    }

    /* compiled from: AnalyticsCollector.java */
    /* loaded from: classes.dex */
    public static final class c {
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public b f5815d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public b f5816e;

        /* renamed from: g  reason: collision with root package name */
        public boolean f5818g;
        public final ArrayList<b> a = new ArrayList<>();
        public final HashMap<e0.a, b> b = new HashMap<>();

        /* renamed from: c  reason: collision with root package name */
        public final u0.b f5814c = new u0.b();

        /* renamed from: f  reason: collision with root package name */
        public u0 f5817f = u0.a;

        public final void a() {
            if (this.a.isEmpty()) {
                return;
            }
            this.f5815d = this.a.get(0);
        }

        public final b b(b bVar, u0 u0Var) {
            int b = u0Var.b(bVar.a.a);
            if (b == -1) {
                return bVar;
            }
            return new b(bVar.a, u0Var, u0Var.f(b, this.f5814c).f5795c);
        }
    }

    public a(@Nullable l0 l0Var, h hVar) {
        if (l0Var != null) {
            this.f5812e = l0Var;
        }
        if (hVar != null) {
            this.b = hVar;
            this.a = new CopyOnWriteArraySet<>();
            this.f5811d = new c();
            this.f5810c = new u0.c();
            return;
        }
        throw null;
    }

    public final b.a A(@Nullable b bVar) {
        c.a.a.b.g.h.t(this.f5812e);
        if (bVar == null) {
            int z = this.f5812e.z();
            c cVar = this.f5811d;
            b bVar2 = null;
            int i2 = 0;
            while (true) {
                if (i2 >= cVar.a.size()) {
                    break;
                }
                b bVar3 = cVar.a.get(i2);
                int b2 = cVar.f5817f.b(bVar3.a.a);
                if (b2 != -1 && cVar.f5817f.f(b2, cVar.f5814c).f5795c == z) {
                    if (bVar2 != null) {
                        bVar2 = null;
                        break;
                    }
                    bVar2 = bVar3;
                }
                i2++;
            }
            if (bVar2 == null) {
                u0 w = this.f5812e.w();
                if (!(z < w.p())) {
                    w = u0.a;
                }
                return z(w, z, null);
            }
            bVar = bVar2;
        }
        return z(bVar.b, bVar.f5813c, bVar.a);
    }

    public final b.a B() {
        return A(this.f5811d.f5815d);
    }

    public final b.a C() {
        b bVar;
        c cVar = this.f5811d;
        if (cVar.a.isEmpty()) {
            bVar = null;
        } else {
            ArrayList<b> arrayList = cVar.a;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return A(bVar);
    }

    public final b.a D(int i2, @Nullable e0.a aVar) {
        c.a.a.b.g.h.t(this.f5812e);
        if (aVar != null) {
            b bVar = this.f5811d.b.get(aVar);
            if (bVar != null) {
                return A(bVar);
            }
            return z(u0.a, i2, aVar);
        }
        u0 w = this.f5812e.w();
        if (!(i2 < w.p())) {
            w = u0.a;
        }
        return z(w, i2, null);
    }

    public final b.a E() {
        c cVar = this.f5811d;
        return A((cVar.a.isEmpty() || cVar.f5817f.q() || cVar.f5818g) ? null : cVar.a.get(0));
    }

    public final b.a F() {
        return A(this.f5811d.f5816e);
    }

    public final void G() {
        B();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().x();
        }
    }

    public final void H() {
        Iterator it = new ArrayList(this.f5811d.a).iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            l(bVar.f5813c, bVar.a);
        }
    }

    @Override // f.i.a.a.n1.s
    public final void a(int i2, int i3, int i4, float f2) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().C();
        }
    }

    @Override // f.i.a.a.n1.q
    public final void b() {
    }

    @Override // f.i.a.a.w0.o
    public final void c(int i2) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().l();
        }
    }

    @Override // f.i.a.a.w0.o
    public final void d(d dVar) {
        B();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().i();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void e(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().o();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void f(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar, IOException iOException, boolean z) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().r();
        }
    }

    @Override // f.i.a.a.w0.o
    public final void g(d dVar) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().E();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void h(String str, long j2, long j3) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().s();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void i(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().n();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void j(b0 b0Var) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().t();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void k(d dVar) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().E();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void l(int i2, e0.a aVar) {
        D(i2, aVar);
        c cVar = this.f5811d;
        b remove = cVar.b.remove(aVar);
        boolean z = false;
        if (remove != null) {
            cVar.a.remove(remove);
            b bVar = cVar.f5816e;
            if (bVar != null && aVar.equals(bVar.a)) {
                cVar.f5816e = cVar.a.isEmpty() ? null : cVar.a.get(0);
            }
            z = true;
        }
        if (z) {
            Iterator<f.i.a.a.v0.b> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().D();
            }
        }
    }

    @Override // f.i.a.a.w0.o
    public final void m(b0 b0Var) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().t();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void n(int i2, e0.a aVar) {
        c cVar = this.f5811d;
        cVar.f5816e = cVar.b.get(aVar);
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().v();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void o(int i2, @Nullable e0.a aVar, f0.b bVar, f0.c cVar) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onLoadingChanged(boolean z) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().onLoadingChanged();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onPlaybackParametersChanged(j0 j0Var) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onPlayerError(w wVar) {
        if (wVar.a == 0) {
            C();
        } else {
            E();
        }
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().h();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onPlayerStateChanged(boolean z, int i2) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().F();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onPositionDiscontinuity(int i2) {
        this.f5811d.a();
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().q();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onRepeatModeChanged(int i2) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onSeekProcessed() {
        c cVar = this.f5811d;
        if (cVar.f5818g) {
            cVar.f5818g = false;
            cVar.a();
            E();
            Iterator<f.i.a.a.v0.b> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed();
            }
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onShuffleModeEnabledChanged(boolean z) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().m();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onTimelineChanged(u0 u0Var, @Nullable Object obj, int i2) {
        c cVar = this.f5811d;
        for (int i3 = 0; i3 < cVar.a.size(); i3++) {
            b b2 = cVar.b(cVar.a.get(i3), u0Var);
            cVar.a.set(i3, b2);
            cVar.b.put(b2.a, b2);
        }
        b bVar = cVar.f5816e;
        if (bVar != null) {
            cVar.f5816e = cVar.b(bVar, u0Var);
        }
        cVar.f5817f = u0Var;
        cVar.a();
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().u();
        }
    }

    @Override // f.i.a.a.l0.b
    public final void onTracksChanged(p0 p0Var, k kVar) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().B();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void p(int i2, e0.a aVar) {
        c cVar = this.f5811d;
        b bVar = new b(aVar, cVar.f5817f.b(aVar.a) != -1 ? cVar.f5817f : u0.a, i2);
        cVar.a.add(bVar);
        cVar.b.put(aVar, bVar);
        if (cVar.a.size() == 1 && !cVar.f5817f.q()) {
            cVar.a();
        }
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().p();
        }
    }

    @Override // f.i.a.a.w0.o
    public final void q(int i2, long j2, long j3) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().z();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void r(@Nullable Surface surface) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void s(d dVar) {
        B();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().i();
        }
    }

    @Override // f.i.a.a.w0.o
    public final void t(String str, long j2, long j3) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().s();
        }
    }

    @Override // f.i.a.a.n1.q
    public void u(int i2, int i3) {
        F();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().k();
        }
    }

    @Override // f.i.a.a.d1.e
    public final void v(f.i.a.a.d1.a aVar) {
        E();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().w();
        }
    }

    @Override // f.i.a.a.n1.s
    public final void w(int i2, long j2) {
        B();
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().g();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void x(int i2, @Nullable e0.a aVar, f0.c cVar) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    @Override // f.i.a.a.h1.f0
    public final void y(int i2, @Nullable e0.a aVar, f0.c cVar) {
        D(i2, aVar);
        Iterator<f.i.a.a.v0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @RequiresNonNull({"player"})
    public b.a z(u0 u0Var, int i2, @Nullable e0.a aVar) {
        long b2;
        if (u0Var.q()) {
            aVar = null;
        }
        e0.a aVar2 = aVar;
        long c2 = this.b.c();
        boolean z = false;
        boolean z2 = u0Var == this.f5812e.w() && i2 == this.f5812e.z();
        long j2 = 0;
        if (aVar2 == null || !aVar2.b()) {
            if (z2) {
                b2 = this.f5812e.i();
            } else if (!u0Var.q()) {
                b2 = f.i.a.a.q.b(u0Var.n(i2, this.f5810c).f5804h);
            }
            j2 = b2;
        } else {
            if (z2 && this.f5812e.p() == aVar2.b && this.f5812e.s() == aVar2.f4741c) {
                z = true;
            }
            if (z) {
                b2 = this.f5812e.C();
                j2 = b2;
            }
        }
        return new b.a(c2, u0Var, i2, aVar2, j2, this.f5812e.C(), this.f5812e.j());
    }
}
