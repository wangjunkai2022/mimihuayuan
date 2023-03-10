package f.i.a.a.b1.x;

import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.b1.x.c0;
import f.i.a.a.h0;
/* compiled from: LatmReader.java */
/* loaded from: classes.dex */
public final class o implements j {
    public final String a;
    public final f.i.a.a.m1.u b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.t f4535c;

    /* renamed from: d  reason: collision with root package name */
    public f.i.a.a.b1.p f4536d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.b0 f4537e;

    /* renamed from: f  reason: collision with root package name */
    public String f4538f;

    /* renamed from: g  reason: collision with root package name */
    public int f4539g;

    /* renamed from: h  reason: collision with root package name */
    public int f4540h;

    /* renamed from: i  reason: collision with root package name */
    public int f4541i;

    /* renamed from: j  reason: collision with root package name */
    public int f4542j;

    /* renamed from: k  reason: collision with root package name */
    public long f4543k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4544l;

    /* renamed from: m  reason: collision with root package name */
    public int f4545m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public int t;

    public o(@Nullable String str) {
        this.a = str;
        f.i.a.a.m1.u uVar = new f.i.a.a.m1.u(1024);
        this.b = uVar;
        this.f4535c = new f.i.a.a.m1.t(uVar.a);
    }

    public static long b(f.i.a.a.m1.t tVar) {
        return tVar.f((tVar.f(2) + 1) * 8);
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4539g = 0;
        this.f4544l = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0148, code lost:
        if (r23.f4544l == false) goto L111;
     */
    @Override // f.i.a.a.b1.x.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(f.i.a.a.m1.u r24) throws f.i.a.a.h0 {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.o.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4543k = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4536d = hVar.q(dVar.c(), 1);
        this.f4538f = dVar.b();
    }

    public final int g(f.i.a.a.m1.t tVar) throws h0 {
        int b = tVar.b();
        Pair<Integer, Integer> d2 = f.i.a.a.m1.i.d(tVar, true);
        this.r = ((Integer) d2.first).intValue();
        this.t = ((Integer) d2.second).intValue();
        return b - tVar.b();
    }
}
