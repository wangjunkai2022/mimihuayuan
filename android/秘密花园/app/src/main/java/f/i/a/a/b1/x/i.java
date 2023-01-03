package f.i.a.a.b1.x;

import f.i.a.a.b0;
import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.u;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbSubtitleReader.java */
/* loaded from: classes.dex */
public final class i implements j {
    public final List<c0.a> a;
    public final p[] b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4374c;

    /* renamed from: d  reason: collision with root package name */
    public int f4375d;

    /* renamed from: e  reason: collision with root package name */
    public int f4376e;

    /* renamed from: f  reason: collision with root package name */
    public long f4377f;

    public i(List<c0.a> list) {
        this.a = list;
        this.b = new p[list.size()];
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4374c = false;
    }

    public final boolean b(u uVar, int i2) {
        if (uVar.a() == 0) {
            return false;
        }
        if (uVar.p() != i2) {
            this.f4374c = false;
        }
        this.f4375d--;
        return this.f4374c;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(u uVar) {
        if (!this.f4374c) {
            return;
        }
        if (this.f4375d != 2 || b(uVar, 32)) {
            if (this.f4375d != 1 || b(uVar, 0)) {
                int i2 = uVar.b;
                int a = uVar.a();
                p[] pVarArr = this.b;
                for (p pVar : pVarArr) {
                    uVar.A(i2);
                    pVar.a(uVar, a);
                }
                this.f4376e += a;
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
        if (this.f4374c) {
            for (p pVar : this.b) {
                pVar.c(this.f4377f, 1, this.f4376e, 0, null);
            }
            this.f4374c = false;
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        if ((i2 & 4) != 0) {
            this.f4374c = true;
            this.f4377f = j2;
            this.f4376e = 0;
            this.f4375d = 2;
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void f(h hVar, c0.d dVar) {
        for (int i2 = 0; i2 < this.b.length; i2++) {
            c0.a aVar = this.a.get(i2);
            dVar.a();
            p q = hVar.q(dVar.c(), 3);
            q.d(b0.l(dVar.b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(aVar.b), aVar.a, null));
            this.b[i2] = q;
        }
    }
}
