package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
/* compiled from: Id3Reader.java */
/* loaded from: classes.dex */
public final class n implements j {
    public final f.i.a.a.m1.u a = new f.i.a.a.m1.u(10);
    public f.i.a.a.b1.p b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4531c;

    /* renamed from: d  reason: collision with root package name */
    public long f4532d;

    /* renamed from: e  reason: collision with root package name */
    public int f4533e;

    /* renamed from: f  reason: collision with root package name */
    public int f4534f;

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4531c = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        if (this.f4531c) {
            int a = uVar.a();
            int i2 = this.f4534f;
            if (i2 < 10) {
                int min = Math.min(a, 10 - i2);
                System.arraycopy(uVar.a, uVar.b, this.a.a, this.f4534f, min);
                if (this.f4534f + min == 10) {
                    this.a.A(0);
                    if (73 == this.a.p() && 68 == this.a.p() && 51 == this.a.p()) {
                        this.a.B(3);
                        this.f4533e = this.a.o() + 10;
                    } else {
                        this.f4531c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a, this.f4533e - this.f4534f);
            this.b.a(uVar, min2);
            this.f4534f += min2;
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
        int i2;
        if (this.f4531c && (i2 = this.f4533e) != 0 && this.f4534f == i2) {
            this.b.c(this.f4532d, 1, i2, 0, null);
            this.f4531c = false;
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.f4531c = true;
        this.f4532d = j2;
        this.f4533e = 0;
        this.f4534f = 0;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        f.i.a.a.b1.p q = hVar.q(dVar.c(), 4);
        this.b = q;
        q.d(f.i.a.a.b0.n(dVar.b(), "application/id3", null, -1, null));
    }
}
