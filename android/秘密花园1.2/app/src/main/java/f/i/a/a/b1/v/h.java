package f.i.a.a.b1.v;

import f.i.a.a.b0;
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
    public f.i.a.a.b1.h f4340c;

    /* renamed from: d  reason: collision with root package name */
    public f f4341d;

    /* renamed from: e  reason: collision with root package name */
    public long f4342e;

    /* renamed from: f  reason: collision with root package name */
    public long f4343f;

    /* renamed from: g  reason: collision with root package name */
    public long f4344g;

    /* renamed from: h  reason: collision with root package name */
    public int f4345h;

    /* renamed from: i  reason: collision with root package name */
    public int f4346i;

    /* renamed from: j  reason: collision with root package name */
    public b f4347j;

    /* renamed from: k  reason: collision with root package name */
    public long f4348k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4349l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4350m;

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
            return new n.b(-9223372036854775807L, 0L);
        }

        @Override // f.i.a.a.b1.v.f
        public long c(f.i.a.a.b1.d dVar) {
            return -1L;
        }

        @Override // f.i.a.a.b1.v.f
        public void d(long j2) {
        }
    }

    public long a(long j2) {
        return (j2 * 1000000) / this.f4346i;
    }

    public long b(long j2) {
        return (this.f4346i * j2) / 1000000;
    }

    public void c(long j2) {
        this.f4344g = j2;
    }

    public abstract long d(u uVar);

    public abstract boolean e(u uVar, long j2, b bVar) throws IOException, InterruptedException;

    public void f(boolean z) {
        if (z) {
            this.f4347j = new b();
            this.f4343f = 0L;
            this.f4345h = 0;
        } else {
            this.f4345h = 1;
        }
        this.f4342e = -1L;
        this.f4344g = 0L;
    }
}
