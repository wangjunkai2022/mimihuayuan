package f.i.a.a.b1.v;

import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.n;
import f.i.a.a.b1.p;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: StreamReader.java */
/* loaded from: classes.dex */
public abstract class h {
    public final d a = new d();
    public p b;

    /* renamed from: c  reason: collision with root package name */
    public f.i.a.a.b1.h f4265c;

    /* renamed from: d  reason: collision with root package name */
    public f f4266d;

    /* renamed from: e  reason: collision with root package name */
    public long f4267e;

    /* renamed from: f  reason: collision with root package name */
    public long f4268f;

    /* renamed from: g  reason: collision with root package name */
    public long f4269g;

    /* renamed from: h  reason: collision with root package name */
    public int f4270h;

    /* renamed from: i  reason: collision with root package name */
    public int f4271i;

    /* renamed from: j  reason: collision with root package name */
    public b f4272j;

    /* renamed from: k  reason: collision with root package name */
    public long f4273k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4274l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4275m;

    /* compiled from: StreamReader.java */
    /* loaded from: classes.dex */
    public static class b {
        public b0 a;
        public f b;
    }

    /* compiled from: StreamReader.java */
    /* loaded from: classes.dex */
    public static final class c implements f {
        public c(a aVar) {
        }

        @Override // f.i.a.a.b1.v.f
        public n a() {
            return new n.b(-9223372036854775807L, 0);
        }

        @Override // f.i.a.a.b1.v.f
        public long c(d dVar) {
            return -1;
        }

        @Override // f.i.a.a.b1.v.f
        public void d(long j2) {
        }
    }

    public long a(long j2) {
        return (j2 * 1000000) / ((long) this.f4271i);
    }

    public long b(long j2) {
        return (((long) this.f4271i) * j2) / 1000000;
    }

    public void c(long j2) {
        this.f4269g = j2;
    }

    public abstract long d(u uVar);

    public abstract boolean e(u uVar, long j2, b bVar) throws IOException, InterruptedException;

    public void f(boolean z) {
        if (z) {
            this.f4272j = new b();
            this.f4268f = 0;
            this.f4270h = 0;
        } else {
            this.f4270h = 1;
        }
        this.f4267e = -1;
        this.f4269g = 0;
    }
}
