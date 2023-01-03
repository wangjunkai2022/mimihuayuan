package f.i.a.a.h1.t0;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.c0;
import f.i.a.a.d1.d;
import f.i.a.a.h1.i0;
import f.i.a.a.h1.j0;
import f.i.a.a.l1.e;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.TreeMap;

/* compiled from: PlayerEmsgHandler.java */
/* loaded from: classes.dex */
public final class j implements Handler.Callback {
    public final e a;
    public final b b;

    /* renamed from: f  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.b f4945f;

    /* renamed from: g  reason: collision with root package name */
    public long f4946g;

    /* renamed from: j  reason: collision with root package name */
    public boolean f4949j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4950k;

    /* renamed from: e  reason: collision with root package name */
    public final TreeMap<Long, Long> f4944e = new TreeMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final Handler f4943d = h0.s(this);

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.d1.g.b f4942c = new f.i.a.a.d1.g.b();

    /* renamed from: h  reason: collision with root package name */
    public long f4947h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    public long f4948i = -9223372036854775807L;

    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final long a;
        public final long b;

        public a(long j2, long j3) {
            this.a = j2;
            this.b = j3;
        }
    }

    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes.dex */
    public interface b {
    }

    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes.dex */
    public final class c implements p {
        public final j0 a;
        public final c0 b = new c0();

        /* renamed from: c  reason: collision with root package name */
        public final d f4951c = new d();

        public c(j0 j0Var) {
            this.a = j0Var;
        }

        @Override // f.i.a.a.b1.p
        public void a(u uVar, int i2) {
            this.a.a(uVar, i2);
        }

        @Override // f.i.a.a.b1.p
        public int b(f.i.a.a.b1.d dVar, int i2, boolean z) throws IOException, InterruptedException {
            return this.a.b(dVar, i2, z);
        }

        @Override // f.i.a.a.b1.p
        public void c(long j2, int i2, int i3, int i4, @Nullable p.a aVar) {
            long j3;
            d dVar;
            long j4;
            this.a.c(j2, i2, i3, i4, aVar);
            while (this.a.o()) {
                this.f4951c.i();
                if (this.a.s(this.b, this.f4951c, false, false, 0) == -4) {
                    this.f4951c.f5955c.flip();
                    dVar = this.f4951c;
                } else {
                    dVar = null;
                }
                if (dVar != null) {
                    long j5 = dVar.f5956d;
                    boolean z = false;
                    f.i.a.a.d1.g.a aVar2 = (f.i.a.a.d1.g.a) j.this.f4942c.a(dVar).a[0];
                    String str = aVar2.a;
                    String str2 = aVar2.b;
                    if ("urn:mpeg:dash:event:2012".equals(str) && (UMRTLog.RTLOG_ENABLE.equals(str2) || "2".equals(str2) || "3".equals(str2))) {
                        z = true;
                    }
                    if (z) {
                        try {
                            j4 = h0.d0(h0.v(aVar2.f4548e));
                        } catch (f.i.a.a.h0 unused) {
                            j4 = -9223372036854775807L;
                        }
                        if (j4 != -9223372036854775807L) {
                            a aVar3 = new a(j5, j4);
                            Handler handler = j.this.f4943d;
                            handler.sendMessage(handler.obtainMessage(1, aVar3));
                        }
                    }
                }
            }
            j0 j0Var = this.a;
            i0 i0Var = j0Var.f4803c;
            synchronized (i0Var) {
                if (i0Var.f4799l == 0) {
                    j3 = -1;
                } else {
                    j3 = i0Var.a(i0Var.f4799l);
                }
            }
            j0Var.h(j3);
        }

        @Override // f.i.a.a.b1.p
        public void d(b0 b0Var) {
            this.a.d(b0Var);
        }
    }

    public j(f.i.a.a.h1.t0.k.b bVar, b bVar2, e eVar) {
        this.f4945f = bVar;
        this.b = bVar2;
        this.a = eVar;
    }

    public final void a() {
        long j2 = this.f4948i;
        if (j2 == -9223372036854775807L || j2 != this.f4947h) {
            this.f4949j = true;
            this.f4948i = this.f4947h;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            dashMediaSource.A.removeCallbacks(dashMediaSource.s);
            dashMediaSource.u();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f4950k) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        long j2 = aVar.a;
        long j3 = aVar.b;
        Long l2 = this.f4944e.get(Long.valueOf(j3));
        if (l2 == null) {
            this.f4944e.put(Long.valueOf(j3), Long.valueOf(j2));
        } else if (l2.longValue() > j2) {
            this.f4944e.put(Long.valueOf(j3), Long.valueOf(j2));
        }
        return true;
    }
}
