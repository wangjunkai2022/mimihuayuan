package f.i.a.a.i1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.i1.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import f.i.a.a.p;
import f.i.a.a.w;
import java.util.Collections;
import java.util.List;
/* compiled from: TextRenderer.java */
/* loaded from: classes.dex */
public final class l extends p implements Handler.Callback {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final Handler f5326j;

    /* renamed from: k  reason: collision with root package name */
    public final k f5327k;

    /* renamed from: l  reason: collision with root package name */
    public final h f5328l;

    /* renamed from: m  reason: collision with root package name */
    public final c0 f5329m;
    public boolean n;
    public boolean o;
    public int p;
    public b0 q;
    public f r;
    public i s;
    public j t;
    public j u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(k kVar, @Nullable Looper looper) {
        super(3);
        h hVar = h.a;
        if (kVar != null) {
            this.f5327k = kVar;
            this.f5326j = looper != null ? h0.t(looper, this) : null;
            this.f5328l = hVar;
            this.f5329m = new c0();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.p
    public void D(b0[] b0VarArr, long j2) throws w {
        b0 b0Var = b0VarArr[0];
        this.q = b0Var;
        if (this.r != null) {
            this.p = 1;
        } else {
            this.r = ((h.a) this.f5328l).a(b0Var);
        }
    }

    @Override // f.i.a.a.p
    public int F(b0 b0Var) {
        if (((h.a) this.f5328l) != null) {
            String str = b0Var.f4097i;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) ? p.G(null, b0Var.f4100l) ? 4 : 2 : r.i(b0Var.f4097i) ? 1 : 0;
        }
        throw null;
    }

    public final void I() {
        List<b> emptyList = Collections.emptyList();
        Handler handler = this.f5326j;
        if (handler != null) {
            handler.obtainMessage(0, emptyList).sendToTarget();
        } else {
            this.f5327k.e(emptyList);
        }
    }

    public final long J() {
        int i2 = this.v;
        if (i2 != -1) {
            e eVar = this.t.f5324c;
            c.a.a.b.g.h.t(eVar);
            if (i2 < eVar.d()) {
                j jVar = this.t;
                int i3 = this.v;
                e eVar2 = jVar.f5324c;
                c.a.a.b.g.h.t(eVar2);
                return eVar2.b(i3) + jVar.f5325d;
            }
        }
        return RecyclerView.FOREVER_NS;
    }

    public final void K() {
        this.s = null;
        this.v = -1;
        j jVar = this.t;
        if (jVar != null) {
            jVar.i();
            this.t = null;
        }
        j jVar2 = this.u;
        if (jVar2 != null) {
            jVar2.i();
            this.u = null;
        }
    }

    public final void L() {
        K();
        this.r.a();
        this.r = null;
        this.p = 0;
        this.r = ((h.a) this.f5328l).a(this.q);
    }

    @Override // f.i.a.a.p0
    public boolean a() {
        return this.o;
    }

    @Override // f.i.a.a.p0
    public boolean d() {
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            this.f5327k.e((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // f.i.a.a.p0
    public void i(long j2, long j3) throws w {
        boolean z;
        if (this.o) {
            return;
        }
        if (this.u == null) {
            this.r.b(j2);
            try {
                this.u = this.r.d();
            } catch (g e2) {
                throw w.a(e2, this.f5843c);
            }
        }
        if (this.f5844d != 2) {
            return;
        }
        if (this.t != null) {
            long J = J();
            z = false;
            while (J <= j2) {
                this.v++;
                J = J();
                z = true;
            }
        } else {
            z = false;
        }
        j jVar = this.u;
        if (jVar != null) {
            if (jVar.h()) {
                if (!z && J() == RecyclerView.FOREVER_NS) {
                    if (this.p == 2) {
                        L();
                    } else {
                        K();
                        this.o = true;
                    }
                }
            } else if (this.u.b <= j2) {
                j jVar2 = this.t;
                if (jVar2 != null) {
                    jVar2.i();
                }
                j jVar3 = this.u;
                this.t = jVar3;
                this.u = null;
                e eVar = jVar3.f5324c;
                c.a.a.b.g.h.t(eVar);
                this.v = eVar.a(j2 - jVar3.f5325d);
                z = true;
            }
        }
        if (z) {
            j jVar4 = this.t;
            e eVar2 = jVar4.f5324c;
            c.a.a.b.g.h.t(eVar2);
            List<b> c2 = eVar2.c(j2 - jVar4.f5325d);
            Handler handler = this.f5326j;
            if (handler != null) {
                handler.obtainMessage(0, c2).sendToTarget();
            } else {
                this.f5327k.e(c2);
            }
        }
        if (this.p == 2) {
            return;
        }
        while (!this.n) {
            try {
                if (this.s == null) {
                    i e3 = this.r.e();
                    this.s = e3;
                    if (e3 == null) {
                        return;
                    }
                }
                if (this.p == 1) {
                    this.s.a = 4;
                    this.r.c(this.s);
                    this.s = null;
                    this.p = 2;
                    return;
                }
                int E = E(this.f5329m, this.s, false);
                if (E == -4) {
                    if (this.s.h()) {
                        this.n = true;
                    } else {
                        this.s.f5323f = this.f5329m.a.f4101m;
                        this.s.f6039c.flip();
                    }
                    this.r.c(this.s);
                    this.s = null;
                } else if (E == -3) {
                    return;
                }
            } catch (g e4) {
                throw w.a(e4, this.f5843c);
            }
        }
    }

    @Override // f.i.a.a.p
    public void x() {
        this.q = null;
        I();
        K();
        this.r.a();
        this.r = null;
        this.p = 0;
    }

    @Override // f.i.a.a.p
    public void z(long j2, boolean z) {
        I();
        this.n = false;
        this.o = false;
        if (this.p != 0) {
            L();
            return;
        }
        K();
        this.r.flush();
    }
}
