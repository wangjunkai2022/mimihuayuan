package f.i.a.a.d1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.m1.h0;
import f.i.a.a.p;
import f.i.a.a.w;
import java.util.Arrays;

/* compiled from: MetadataRenderer.java */
/* loaded from: classes.dex */
public final class f extends p implements Handler.Callback {

    /* renamed from: j  reason: collision with root package name */
    public final c f4542j;

    /* renamed from: k  reason: collision with root package name */
    public final e f4543k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final Handler f4544l;

    /* renamed from: m  reason: collision with root package name */
    public final c0 f4545m;
    public final d n;
    public final a[] o;
    public final long[] p;
    public int q;
    public int r;
    public b s;
    public boolean t;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar, @Nullable Looper looper) {
        super(4);
        c cVar = c.a;
        Handler handler = null;
        if (eVar != null) {
            this.f4543k = eVar;
            this.f4544l = looper != null ? h0.t(looper, this) : handler;
            this.f4542j = cVar;
            this.f4545m = new c0();
            this.n = new d();
            this.o = new a[5];
            this.p = new long[5];
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.p
    public void D(b0[] b0VarArr, long j2) throws w {
        this.s = this.f4542j.a(b0VarArr[0]);
    }

    @Override // f.i.a.a.p
    public int F(b0 b0Var) {
        if (this.f4542j.b(b0Var)) {
            return p.G(null, b0Var.f4016l) ? 4 : 2;
        }
        return 0;
    }

    @Override // f.i.a.a.p0
    public boolean a() {
        return this.t;
    }

    @Override // f.i.a.a.p0
    public boolean d() {
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            this.f4543k.v((a) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // f.i.a.a.p0
    public void i(long j2, long j3) throws w {
        if (!this.t && this.r < 5) {
            this.n.i();
            if (E(this.f4545m, this.n, false) == -4) {
                if (this.n.h()) {
                    this.t = true;
                } else if (!this.n.g()) {
                    d dVar = this.n;
                    dVar.f4541f = this.f4545m.a.f4017m;
                    dVar.f5955c.flip();
                    int i2 = (this.q + this.r) % 5;
                    a a = this.s.a(this.n);
                    if (a != null) {
                        this.o[i2] = a;
                        this.p[i2] = this.n.f5956d;
                        this.r++;
                    }
                }
            }
        }
        if (this.r > 0) {
            long[] jArr = this.p;
            int i3 = this.q;
            if (jArr[i3] <= j2) {
                a aVar = this.o[i3];
                Handler handler = this.f4544l;
                if (handler != null) {
                    handler.obtainMessage(0, aVar).sendToTarget();
                } else {
                    this.f4543k.v(aVar);
                }
                a[] aVarArr = this.o;
                int i4 = this.q;
                aVarArr[i4] = null;
                this.q = (i4 + 1) % 5;
                this.r--;
            }
        }
    }

    @Override // f.i.a.a.p
    public void x() {
        Arrays.fill(this.o, (Object) null);
        this.q = 0;
        this.r = 0;
        this.s = null;
    }

    @Override // f.i.a.a.p
    public void z(long j2, boolean z) {
        Arrays.fill(this.o, (Object) null);
        this.q = 0;
        this.r = 0;
        this.t = false;
    }
}
