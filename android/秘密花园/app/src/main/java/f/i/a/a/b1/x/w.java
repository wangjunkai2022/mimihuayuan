package f.i.a.a.b1.x;

import f.i.a.a.b1.h;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;

/* compiled from: SectionReader.java */
/* loaded from: classes.dex */
public final class w implements c0 {
    public final v a;
    public final u b = new u(32);

    /* renamed from: c  reason: collision with root package name */
    public int f4506c;

    /* renamed from: d  reason: collision with root package name */
    public int f4507d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4508e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4509f;

    public w(v vVar) {
        this.a = vVar;
    }

    @Override // f.i.a.a.b1.x.c0
    public void a() {
        this.f4509f = true;
    }

    @Override // f.i.a.a.b1.x.c0
    public void b(e0 e0Var, h hVar, c0.d dVar) {
        this.a.b(e0Var, hVar, dVar);
        this.f4509f = true;
    }

    @Override // f.i.a.a.b1.x.c0
    public void c(u uVar, int i2) {
        boolean z = (i2 & 1) != 0;
        int p = z ? uVar.b + uVar.p() : -1;
        if (this.f4509f) {
            if (z) {
                this.f4509f = false;
                uVar.A(p);
                this.f4507d = 0;
            } else {
                return;
            }
        }
        while (uVar.a() > 0) {
            int i3 = this.f4507d;
            if (i3 < 3) {
                if (i3 == 0) {
                    int p2 = uVar.p();
                    uVar.A(uVar.b - 1);
                    if (p2 == 255) {
                        this.f4509f = true;
                        return;
                    }
                }
                int min = Math.min(uVar.a(), 3 - this.f4507d);
                uVar.c(this.b.a, this.f4507d, min);
                int i4 = this.f4507d + min;
                this.f4507d = i4;
                if (i4 == 3) {
                    this.b.w(3);
                    this.b.B(1);
                    int p3 = this.b.p();
                    int p4 = this.b.p();
                    this.f4508e = (p3 & 128) != 0;
                    int i5 = (((p3 & 15) << 8) | p4) + 3;
                    this.f4506c = i5;
                    u uVar2 = this.b;
                    byte[] bArr = uVar2.a;
                    if (bArr.length < i5) {
                        uVar2.w(Math.min(4098, Math.max(i5, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.b.a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(uVar.a(), this.f4506c - this.f4507d);
                uVar.c(this.b.a, this.f4507d, min2);
                int i6 = this.f4507d + min2;
                this.f4507d = i6;
                int i7 = this.f4506c;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.f4508e) {
                        this.b.w(i7);
                    } else if (h0.r(this.b.a, 0, i7, -1) != 0) {
                        this.f4509f = true;
                        return;
                    } else {
                        this.b.w(this.f4506c - 4);
                    }
                    this.a.c(this.b);
                    this.f4507d = 0;
                }
            }
        }
    }
}
