package f.i.a.a.h1.t0;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.c0;
import f.i.a.a.h1.i0;
import f.i.a.a.h1.j0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.TreeMap;

/* compiled from: PlayerEmsgHandler.java */
/* loaded from: classes.dex */
public final class j implements Handler.Callback {
    public final f.i.a.a.l1.e a;
    public final b b;

    /* renamed from: f  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.b f5020f;

    /* renamed from: g  reason: collision with root package name */
    public long f5021g;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5024j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5025k;

    /* renamed from: e  reason: collision with root package name */
    public final TreeMap<Long, Long> f5019e = new TreeMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final Handler f5018d = h0.s(this);

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.d1.g.b f5017c = new f.i.a.a.d1.g.b();

    /* renamed from: h  reason: collision with root package name */
    public long f5022h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    public long f5023i = -9223372036854775807L;

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
        public final f.i.a.a.d1.d f5026c = new f.i.a.a.d1.d();

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
            long a;
            f.i.a.a.d1.d dVar;
            long j3;
            this.a.c(j2, i2, i3, i4, aVar);
            while (this.a.o()) {
                this.f5026c.i();
                if (this.a.s(this.b, this.f5026c, false, false, 0L) == -4) {
                    this.f5026c.f6030c.flip();
                    dVar = this.f5026c;
                } else {
                    dVar = null;
                }
                if (dVar != null) {
                    long j4 = dVar.f6031d;
                    boolean z = false;
                    f.i.a.a.d1.g.a aVar2 = (f.i.a.a.d1.g.a) j.this.f5017c.a(dVar).a[0];
                    String str = aVar2.a;
                    String str2 = aVar2.b;
                    if ("urn:mpeg:dash:event:2012".equals(str) && (UMRTLog.RTLOG_ENABLE.equals(str2) || "2".equals(str2) || "3".equals(str2))) {
                        z = true;
                    }
                    if (z) {
                        try {
                            j3 = h0.d0(h0.v(aVar2.f4623e));
                        } catch (f.i.a.a.h0 unused) {
                            j3 = -9223372036854775807L;
                        }
                        if (j3 != -9223372036854775807L) {
                            a aVar3 = new a(j4, j3);
                            Handler handler = j.this.f5018d;
                            handler.sendMessage(handler.obtainMessage(1, aVar3));
                        }
                    }
                }
            }
            j0 j0Var = this.a;
            i0 i0Var = j0Var.f4878c;
            synchronized (i0Var) {
                a = i0Var.f4874l == 0 ? -1L : i0Var.a(i0Var.f4874l);
            }
            j0Var.h(a);
        }

        @Override // f.i.a.a.b1.p
        public void d(b0 b0Var) {
            this.a.d(b0Var);
        }
    }

    public j(f.i.a.a.h1.t0.k.b bVar, b bVar2, f.i.a.a.l1.e eVar) {
        this.f5020f = bVar;
        this.b = bVar2;
        this.a = eVar;
    }

    public final void a() {
        long j2 = this.f5023i;
        if (j2 == -9223372036854775807L || j2 != this.f5022h) {
            this.f5024j = true;
            this.f5023i = this.f5022h;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            dashMediaSource.A.removeCallbacks(dashMediaSource.s);
            dashMediaSource.u();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f5025k) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        long j2 = aVar.a;
        long j3 = aVar.b;
        Long l2 = this.f5019e.get(Long.valueOf(j3));
        if (l2 == null) {
            this.f5019e.put(Long.valueOf(j3), Long.valueOf(j2));
        } else if (l2.longValue() > j2) {
            this.f5019e.put(Long.valueOf(j3), Long.valueOf(j2));
        }
        return true;
    }
}
