package f.i.a.a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.Nullable;
import f.i.a.a.l0;
import f.i.a.a.o;
import f.i.a.a.v0.a;
import f.i.a.a.w0.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: SimpleExoPlayer.java */
/* loaded from: classes.dex */
public class t0 extends o implements l0, l0.d, l0.c {
    @Nullable
    public f.i.a.a.h1.e0 A;
    public List<f.i.a.a.i1.b> B;
    public boolean C;
    @Nullable
    public f.i.a.a.m1.x D;
    public boolean E;
    public final p0[] b;

    /* renamed from: c  reason: collision with root package name */
    public final y f5857c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f5858d;

    /* renamed from: e  reason: collision with root package name */
    public final b f5859e;

    /* renamed from: f  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.n1.q> f5860f;

    /* renamed from: g  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.w0.l> f5861g;

    /* renamed from: h  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.i1.k> f5862h;

    /* renamed from: i  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.d1.e> f5863i;

    /* renamed from: j  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.n1.s> f5864j;

    /* renamed from: k  reason: collision with root package name */
    public final CopyOnWriteArraySet<f.i.a.a.w0.o> f5865k;

    /* renamed from: l  reason: collision with root package name */
    public final f.i.a.a.l1.g f5866l;

    /* renamed from: m  reason: collision with root package name */
    public final f.i.a.a.v0.a f5867m;
    public final f.i.a.a.w0.k n;
    @Nullable
    public b0 o;
    @Nullable
    public b0 p;
    @Nullable
    public Surface q;
    public boolean r;
    @Nullable
    public SurfaceHolder s;
    @Nullable
    public TextureView t;
    public int u;
    public int v;
    @Nullable
    public f.i.a.a.y0.d w;
    @Nullable
    public f.i.a.a.y0.d x;
    public int y;
    public float z;

    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes.dex */
    public final class b implements f.i.a.a.n1.s, f.i.a.a.w0.o, f.i.a.a.i1.k, f.i.a.a.d1.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, k.c, l0.b {
        public b(a aVar) {
        }

        @Override // f.i.a.a.n1.s
        public void a(int i2, int i3, int i4, float f2) {
            Iterator<f.i.a.a.n1.q> it = t0.this.f5860f.iterator();
            while (it.hasNext()) {
                f.i.a.a.n1.q next = it.next();
                if (!t0.this.f5864j.contains(next)) {
                    next.a(i2, i3, i4, f2);
                }
            }
            Iterator<f.i.a.a.n1.s> it2 = t0.this.f5864j.iterator();
            while (it2.hasNext()) {
                it2.next().a(i2, i3, i4, f2);
            }
        }

        public void b(int i2) {
            t0 t0Var = t0.this;
            t0Var.N(t0Var.m(), i2);
        }

        @Override // f.i.a.a.w0.o
        public void c(int i2) {
            t0 t0Var = t0.this;
            if (t0Var.y == i2) {
                return;
            }
            t0Var.y = i2;
            Iterator<f.i.a.a.w0.l> it = t0Var.f5861g.iterator();
            while (it.hasNext()) {
                f.i.a.a.w0.l next = it.next();
                if (!t0.this.f5865k.contains(next)) {
                    next.c(i2);
                }
            }
            Iterator<f.i.a.a.w0.o> it2 = t0.this.f5865k.iterator();
            while (it2.hasNext()) {
                it2.next().c(i2);
            }
        }

        @Override // f.i.a.a.w0.o
        public void d(f.i.a.a.y0.d dVar) {
            Iterator<f.i.a.a.w0.o> it = t0.this.f5865k.iterator();
            while (it.hasNext()) {
                it.next().d(dVar);
            }
            t0 t0Var = t0.this;
            t0Var.p = null;
            t0Var.y = 0;
        }

        @Override // f.i.a.a.i1.k
        public void e(List<f.i.a.a.i1.b> list) {
            t0 t0Var = t0.this;
            t0Var.B = list;
            Iterator<f.i.a.a.i1.k> it = t0Var.f5862h.iterator();
            while (it.hasNext()) {
                it.next().e(list);
            }
        }

        @Override // f.i.a.a.w0.o
        public void g(f.i.a.a.y0.d dVar) {
            t0 t0Var = t0.this;
            t0Var.x = dVar;
            Iterator<f.i.a.a.w0.o> it = t0Var.f5865k.iterator();
            while (it.hasNext()) {
                it.next().g(dVar);
            }
        }

        @Override // f.i.a.a.n1.s
        public void h(String str, long j2, long j3) {
            Iterator<f.i.a.a.n1.s> it = t0.this.f5864j.iterator();
            while (it.hasNext()) {
                it.next().h(str, j2, j3);
            }
        }

        @Override // f.i.a.a.n1.s
        public void j(b0 b0Var) {
            t0 t0Var = t0.this;
            t0Var.o = b0Var;
            Iterator<f.i.a.a.n1.s> it = t0Var.f5864j.iterator();
            while (it.hasNext()) {
                it.next().j(b0Var);
            }
        }

        @Override // f.i.a.a.n1.s
        public void k(f.i.a.a.y0.d dVar) {
            t0 t0Var = t0.this;
            t0Var.w = dVar;
            Iterator<f.i.a.a.n1.s> it = t0Var.f5864j.iterator();
            while (it.hasNext()) {
                it.next().k(dVar);
            }
        }

        @Override // f.i.a.a.w0.o
        public void m(b0 b0Var) {
            t0 t0Var = t0.this;
            t0Var.p = b0Var;
            Iterator<f.i.a.a.w0.o> it = t0Var.f5865k.iterator();
            while (it.hasNext()) {
                it.next().m(b0Var);
            }
        }

        @Override // f.i.a.a.l0.b
        public void onLoadingChanged(boolean z) {
            t0 t0Var = t0.this;
            f.i.a.a.m1.x xVar = t0Var.D;
            if (xVar != null) {
                if (z && !t0Var.E) {
                    xVar.a(0);
                    t0.this.E = true;
                } else if (z) {
                } else {
                    t0 t0Var2 = t0.this;
                    if (t0Var2.E) {
                        t0Var2.D.b(0);
                        t0.this.E = false;
                    }
                }
            }
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPlaybackParametersChanged(j0 j0Var) {
            m0.b(this, j0Var);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPlayerError(w wVar) {
            m0.c(this, wVar);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPlayerStateChanged(boolean z, int i2) {
            m0.d(this, z, i2);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPositionDiscontinuity(int i2) {
            m0.e(this, i2);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onRepeatModeChanged(int i2) {
            m0.f(this, i2);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onSeekProcessed() {
            m0.g(this);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            m0.h(this, z);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            t0.this.K(new Surface(surfaceTexture), true);
            t0.this.E(i2, i3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            t0.this.K(null, true);
            t0.this.E(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            t0.this.E(i2, i3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onTimelineChanged(u0 u0Var, @Nullable Object obj, int i2) {
            m0.i(this, u0Var, obj, i2);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onTracksChanged(f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.k kVar) {
            m0.j(this, p0Var, kVar);
        }

        @Override // f.i.a.a.w0.o
        public void q(int i2, long j2, long j3) {
            Iterator<f.i.a.a.w0.o> it = t0.this.f5865k.iterator();
            while (it.hasNext()) {
                it.next().q(i2, j2, j3);
            }
        }

        @Override // f.i.a.a.n1.s
        public void r(Surface surface) {
            t0 t0Var = t0.this;
            if (t0Var.q == surface) {
                Iterator<f.i.a.a.n1.q> it = t0Var.f5860f.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
            }
            Iterator<f.i.a.a.n1.s> it2 = t0.this.f5864j.iterator();
            while (it2.hasNext()) {
                it2.next().r(surface);
            }
        }

        @Override // f.i.a.a.n1.s
        public void s(f.i.a.a.y0.d dVar) {
            Iterator<f.i.a.a.n1.s> it = t0.this.f5864j.iterator();
            while (it.hasNext()) {
                it.next().s(dVar);
            }
            t0.this.o = null;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            t0.this.E(i3, i4);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            t0.this.K(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            t0.this.K(null, false);
            t0.this.E(0, 0);
        }

        @Override // f.i.a.a.w0.o
        public void t(String str, long j2, long j3) {
            Iterator<f.i.a.a.w0.o> it = t0.this.f5865k.iterator();
            while (it.hasNext()) {
                it.next().t(str, j2, j3);
            }
        }

        @Override // f.i.a.a.d1.e
        public void v(f.i.a.a.d1.a aVar) {
            Iterator<f.i.a.a.d1.e> it = t0.this.f5863i.iterator();
            while (it.hasNext()) {
                it.next().v(aVar);
            }
        }

        @Override // f.i.a.a.n1.s
        public void w(int i2, long j2) {
            Iterator<f.i.a.a.n1.s> it = t0.this.f5864j.iterator();
            while (it.hasNext()) {
                it.next().w(i2, j2);
            }
        }
    }

    public t0(Context context, r0 r0Var, f.i.a.a.j1.m mVar, t tVar, @Nullable f.i.a.a.z0.g<f.i.a.a.z0.j> gVar, f.i.a.a.l1.g gVar2, a.C0089a c0089a, Looper looper) {
        f.i.a.a.m1.h hVar = f.i.a.a.m1.h.a;
        this.f5866l = gVar2;
        this.f5859e = new b(null);
        this.f5860f = new CopyOnWriteArraySet<>();
        this.f5861g = new CopyOnWriteArraySet<>();
        this.f5862h = new CopyOnWriteArraySet<>();
        this.f5863i = new CopyOnWriteArraySet<>();
        this.f5864j = new CopyOnWriteArraySet<>();
        this.f5865k = new CopyOnWriteArraySet<>();
        Handler handler = new Handler(looper);
        this.f5858d = handler;
        b bVar = this.f5859e;
        this.b = ((v) r0Var).a(handler, bVar, bVar, bVar, bVar, gVar);
        this.z = 1.0f;
        this.y = 0;
        this.B = Collections.emptyList();
        y yVar = new y(this.b, mVar, tVar, gVar2, hVar, looper);
        this.f5857c = yVar;
        if (c0089a != null) {
            f.i.a.a.v0.a aVar = new f.i.a.a.v0.a(yVar, hVar);
            this.f5867m = aVar;
            r(aVar);
            r(this.f5859e);
            this.f5864j.add(this.f5867m);
            this.f5860f.add(this.f5867m);
            this.f5865k.add(this.f5867m);
            this.f5861g.add(this.f5867m);
            this.f5863i.add(this.f5867m);
            gVar2.g(this.f5858d, this.f5867m);
            if (gVar instanceof f.i.a.a.z0.d) {
                if (((f.i.a.a.z0.d) gVar) != null) {
                    throw null;
                }
                throw null;
            }
            this.n = new f.i.a.a.w0.k(context, this.f5859e);
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.l0
    public f.i.a.a.j1.k A() {
        O();
        return this.f5857c.t.f5292i.f5527c;
    }

    @Override // f.i.a.a.l0
    public int B(int i2) {
        O();
        return this.f5857c.f5999c[i2].t();
    }

    @Override // f.i.a.a.l0
    public long C() {
        O();
        return this.f5857c.C();
    }

    @Override // f.i.a.a.l0
    @Nullable
    public l0.c D() {
        return this;
    }

    public final void E(int i2, int i3) {
        if (i2 == this.u && i3 == this.v) {
            return;
        }
        this.u = i2;
        this.v = i3;
        Iterator<f.i.a.a.n1.q> it = this.f5860f.iterator();
        while (it.hasNext()) {
            it.next().u(i2, i3);
        }
    }

    public void F(f.i.a.a.h1.e0 e0Var, boolean z, boolean z2) {
        int i2;
        O();
        f.i.a.a.h1.e0 e0Var2 = this.A;
        if (e0Var2 != null) {
            e0Var2.h(this.f5867m);
            this.f5867m.H();
        }
        this.A = e0Var;
        e0Var.g(this.f5858d, this.f5867m);
        f.i.a.a.w0.k kVar = this.n;
        boolean m2 = m();
        if (kVar != null) {
            if (m2) {
                if (kVar.f5946d != 0) {
                    kVar.a(true);
                }
                i2 = 1;
            } else {
                i2 = -1;
            }
            N(m(), i2);
            y yVar = this.f5857c;
            yVar.s = null;
            i0 F = yVar.F(z, z2, 2);
            yVar.p = true;
            yVar.o++;
            yVar.f6002f.f6048g.a.obtainMessage(0, z ? 1 : 0, z2 ? 1 : 0, e0Var).sendToTarget();
            yVar.U(F, false, 4, 1, false);
            return;
        }
        throw null;
    }

    public void G() {
        O();
        this.n.a(true);
        y yVar = this.f5857c;
        if (yVar != null) {
            Integer.toHexString(System.identityHashCode(yVar));
            String str = f.i.a.a.m1.h0.f5739e;
            a0.b();
            z zVar = yVar.f6002f;
            synchronized (zVar) {
                if (!zVar.w) {
                    zVar.f6048g.c(7);
                    boolean z = false;
                    while (!zVar.w) {
                        try {
                            zVar.wait();
                        } catch (InterruptedException unused) {
                            z = true;
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
            yVar.f6001e.removeCallbacksAndMessages(null);
            yVar.t = yVar.F(false, false, 1);
            H();
            Surface surface = this.q;
            if (surface != null) {
                if (this.r) {
                    surface.release();
                }
                this.q = null;
            }
            f.i.a.a.h1.e0 e0Var = this.A;
            if (e0Var != null) {
                e0Var.h(this.f5867m);
                this.A = null;
            }
            if (!this.E) {
                this.f5866l.b(this.f5867m);
                this.B = Collections.emptyList();
                return;
            }
            throw null;
        }
        throw null;
    }

    public final void H() {
        TextureView textureView = this.t;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() == this.f5859e) {
                this.t.setSurfaceTextureListener(null);
            }
            this.t = null;
        }
        SurfaceHolder surfaceHolder = this.s;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f5859e);
            this.s = null;
        }
    }

    public void I(@Nullable j0 j0Var) {
        O();
        y yVar = this.f5857c;
        if (yVar != null) {
            if (j0Var == null) {
                j0Var = j0.f5458e;
            }
            yVar.f6002f.f6048g.b(4, j0Var).sendToTarget();
            return;
        }
        throw null;
    }

    public void J(SurfaceHolder surfaceHolder) {
        O();
        H();
        this.s = surfaceHolder;
        if (surfaceHolder == null) {
            K(null, false);
            E(0, 0);
            return;
        }
        surfaceHolder.addCallback(this.f5859e);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            K(surface, false);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            E(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        K(null, false);
        E(0, 0);
    }

    public final void K(@Nullable Surface surface, boolean z) {
        p0[] p0VarArr;
        ArrayList arrayList = new ArrayList();
        for (p0 p0Var : this.b) {
            if (p0Var.t() == 2) {
                n0 E = this.f5857c.E(p0Var);
                c.a.a.b.g.h.v(!E.f5795j);
                E.f5789d = 1;
                c.a.a.b.g.h.v(true ^ E.f5795j);
                E.f5790e = surface;
                E.c();
                arrayList.add(E);
            }
        }
        Surface surface2 = this.q;
        if (surface2 != null && surface2 != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    n0 n0Var = (n0) it.next();
                    synchronized (n0Var) {
                        c.a.a.b.g.h.v(n0Var.f5795j);
                        c.a.a.b.g.h.v(n0Var.f5791f.getLooper().getThread() != Thread.currentThread());
                        while (!n0Var.f5797l) {
                            n0Var.wait();
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            if (this.r) {
                this.q.release();
            }
        }
        this.q = surface;
        this.r = z;
    }

    public void L(TextureView textureView) {
        O();
        H();
        this.t = textureView;
        if (textureView == null) {
            K(null, true);
            E(0, 0);
            return;
        }
        textureView.getSurfaceTextureListener();
        textureView.setSurfaceTextureListener(this.f5859e);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            K(null, true);
            E(0, 0);
            return;
        }
        K(new Surface(surfaceTexture), true);
        E(textureView.getWidth(), textureView.getHeight());
    }

    public void M(boolean z) {
        O();
        this.f5857c.T(z);
        f.i.a.a.h1.e0 e0Var = this.A;
        if (e0Var != null) {
            e0Var.h(this.f5867m);
            this.f5867m.H();
            if (z) {
                this.A = null;
            }
        }
        this.n.a(true);
        this.B = Collections.emptyList();
    }

    public final void N(boolean z, int i2) {
        this.f5857c.R(z && i2 != -1, i2 != 1);
    }

    public final void O() {
        if (Looper.myLooper() != this.f5857c.f6001e.getLooper()) {
            if (!this.C) {
                new IllegalStateException();
            }
            this.C = true;
        }
    }

    @Override // f.i.a.a.l0
    public j0 e() {
        O();
        return this.f5857c.r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (r5 != false) goto L12;
     */
    @Override // f.i.a.a.l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(boolean r5) {
        /*
            r4 = this;
            r4.O()
            f.i.a.a.w0.k r0 = r4.n
            int r1 = r4.o()
            if (r0 == 0) goto L26
            r2 = -1
            if (r5 != 0) goto L13
            r1 = 0
            r0.a(r1)
            goto L22
        L13:
            r3 = 1
            if (r1 != r3) goto L1a
            if (r5 == 0) goto L22
        L18:
            r2 = 1
            goto L22
        L1a:
            int r1 = r0.f5946d
            if (r1 == 0) goto L18
            r0.a(r3)
            goto L18
        L22:
            r4.N(r5, r2)
            return
        L26:
            r5 = 0
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.t0.f(boolean):void");
    }

    @Override // f.i.a.a.l0
    @Nullable
    public l0.d g() {
        return this;
    }

    @Override // f.i.a.a.l0
    public boolean h() {
        O();
        return this.f5857c.h();
    }

    @Override // f.i.a.a.l0
    public long i() {
        O();
        return this.f5857c.i();
    }

    @Override // f.i.a.a.l0
    public long j() {
        O();
        return q.b(this.f5857c.t.f5295l);
    }

    @Override // f.i.a.a.l0
    public void k(int i2, long j2) {
        O();
        f.i.a.a.v0.a aVar = this.f5867m;
        if (!aVar.f5886d.f5893g) {
            aVar.E();
            aVar.f5886d.f5893g = true;
            Iterator<f.i.a.a.v0.b> it = aVar.a.iterator();
            while (it.hasNext()) {
                it.next().y();
            }
        }
        this.f5857c.k(i2, j2);
    }

    @Override // f.i.a.a.l0
    public long l() {
        O();
        return this.f5857c.l();
    }

    @Override // f.i.a.a.l0
    public boolean m() {
        O();
        return this.f5857c.f6007k;
    }

    @Override // f.i.a.a.l0
    public void n(boolean z) {
        O();
        this.f5857c.n(z);
    }

    @Override // f.i.a.a.l0
    public int o() {
        O();
        return this.f5857c.t.f5289f;
    }

    @Override // f.i.a.a.l0
    public int p() {
        O();
        y yVar = this.f5857c;
        if (yVar.h()) {
            return yVar.t.f5286c.b;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public void q(int i2) {
        O();
        this.f5857c.q(i2);
    }

    @Override // f.i.a.a.l0
    public void r(l0.b bVar) {
        O();
        this.f5857c.f6004h.addIfAbsent(new o.a(bVar));
    }

    @Override // f.i.a.a.l0
    public int s() {
        O();
        y yVar = this.f5857c;
        if (yVar.h()) {
            return yVar.t.f5286c.f4816c;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public f.i.a.a.h1.p0 t() {
        O();
        return this.f5857c.t.f5291h;
    }

    @Override // f.i.a.a.l0
    public int u() {
        O();
        return this.f5857c.f6009m;
    }

    @Override // f.i.a.a.l0
    public long v() {
        O();
        return this.f5857c.v();
    }

    @Override // f.i.a.a.l0
    public u0 w() {
        O();
        return this.f5857c.t.a;
    }

    @Override // f.i.a.a.l0
    public boolean x() {
        O();
        return this.f5857c.n;
    }

    @Override // f.i.a.a.l0
    public void y(l0.b bVar) {
        O();
        this.f5857c.y(bVar);
    }

    @Override // f.i.a.a.l0
    public int z() {
        O();
        return this.f5857c.z();
    }
}
