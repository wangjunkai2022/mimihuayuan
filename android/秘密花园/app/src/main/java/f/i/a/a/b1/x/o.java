package f.i.a.a.b1.x;

import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.h0;
import f.i.a.a.m1.i;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;

/* compiled from: LatmReader.java */
/* loaded from: classes.dex */
public final class o implements j {
    public final String a;
    public final u b;

    /* renamed from: c  reason: collision with root package name */
    public final t f4451c;

    /* renamed from: d  reason: collision with root package name */
    public p f4452d;

    /* renamed from: e  reason: collision with root package name */
    public b0 f4453e;

    /* renamed from: f  reason: collision with root package name */
    public String f4454f;

    /* renamed from: g  reason: collision with root package name */
    public int f4455g;

    /* renamed from: h  reason: collision with root package name */
    public int f4456h;

    /* renamed from: i  reason: collision with root package name */
    public int f4457i;

    /* renamed from: j  reason: collision with root package name */
    public int f4458j;

    /* renamed from: k  reason: collision with root package name */
    public long f4459k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4460l;

    /* renamed from: m  reason: collision with root package name */
    public int f4461m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public int t;

    public o(@Nullable String str) {
        this.a = str;
        u uVar = new u(1024);
        this.b = uVar;
        this.f4451c = new t(uVar.a);
    }

    public static long b(t tVar) {
        return (long) tVar.f((tVar.f(2) + 1) * 8);
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4455g = 0;
        this.f4460l = false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0148, code lost:
        if (r23.f4460l == false) goto L_0x01a2;
     */
    @Override // f.i.a.a.b1.x.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(f.i.a.a.m1.u r24) throws f.i.a.a.h0 {
        /*
        // Method dump skipped, instructions count: 543
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.o.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4459k = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(h hVar, c0.d dVar) {
        dVar.a();
        this.f4452d = hVar.q(dVar.c(), 1);
        this.f4454f = dVar.b();
    }

    public final int g(t tVar) throws h0 {
        int b = tVar.b();
        Pair<Integer, Integer> d2 = i.d(tVar, true);
        this.r = ((Integer) d2.first).intValue();
        this.t = ((Integer) d2.second).intValue();
        return b - tVar.b();
    }
}
