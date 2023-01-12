package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbSubtitleReader.java */
/* loaded from: classes.dex */
public final class i implements j {
    public final List<c0.a> a;
    public final f.i.a.a.b1.p[] b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4449c;

    /* renamed from: d  reason: collision with root package name */
    public int f4450d;

    /* renamed from: e  reason: collision with root package name */
    public int f4451e;

    /* renamed from: f  reason: collision with root package name */
    public long f4452f;

    public i(List<c0.a> list) {
        this.a = list;
        this.b = new f.i.a.a.b1.p[list.size()];
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4449c = false;
    }

    public final boolean b(f.i.a.a.m1.u uVar, int i2) {
        if (uVar.a() == 0) {
            return false;
        }
        if (uVar.p() != i2) {
            this.f4449c = false;
        }
        this.f4450d--;
        return this.f4449c;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        f.i.a.a.b1.p[] pVarArr;
        if (this.f4449c) {
            if (this.f4450d != 2 || b(uVar, 32)) {
                if (this.f4450d != 1 || b(uVar, 0)) {
                    int i2 = uVar.b;
                    int a = uVar.a();
                    for (f.i.a.a.b1.p pVar : this.b) {
                        uVar.A(i2);
                        pVar.a(uVar, a);
                    }
                    this.f4451e += a;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
        if (this.f4449c) {
            for (f.i.a.a.b1.p pVar : this.b) {
                pVar.c(this.f4452f, 1, this.f4451e, 0, null);
            }
            this.f4449c = false;
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.f4449c = true;
        this.f4452f = j2;
        this.f4451e = 0;
        this.f4450d = 2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        for (int i2 = 0; i2 < this.b.length; i2++) {
            c0.a aVar = this.a.get(i2);
            dVar.a();
            f.i.a.a.b1.p q = hVar.q(dVar.c(), 3);
            q.d(f.i.a.a.b0.l(dVar.b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(aVar.b), aVar.a, null));
            this.b[i2] = q;
        }
    }
}
