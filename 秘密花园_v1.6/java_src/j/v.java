package j;
/* compiled from: Segment.kt */
/* loaded from: classes.dex */
public final class v {
    public final byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f7074c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7075d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7076e;

    /* renamed from: f  reason: collision with root package name */
    public v f7077f;

    /* renamed from: g  reason: collision with root package name */
    public v f7078g;

    public v() {
        this.a = new byte[8192];
        this.f7076e = true;
        this.f7075d = false;
    }

    public final v a() {
        v vVar = this.f7077f;
        if (vVar == this) {
            vVar = null;
        }
        v vVar2 = this.f7078g;
        if (vVar2 != null) {
            vVar2.f7077f = this.f7077f;
            v vVar3 = this.f7077f;
            if (vVar3 != null) {
                vVar3.f7078g = vVar2;
                this.f7077f = null;
                this.f7078g = null;
                return vVar;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final v b(v vVar) {
        vVar.f7078g = this;
        vVar.f7077f = this.f7077f;
        v vVar2 = this.f7077f;
        if (vVar2 != null) {
            vVar2.f7078g = vVar;
            this.f7077f = vVar;
            return vVar;
        }
        h.o.c.g.e();
        throw null;
    }

    public final v c() {
        this.f7075d = true;
        return new v(this.a, this.b, this.f7074c, true, false);
    }

    public final void d(v vVar, int i2) {
        if (vVar != null) {
            if (vVar.f7076e) {
                int i3 = vVar.f7074c;
                if (i3 + i2 > 8192) {
                    if (!vVar.f7075d) {
                        int i4 = vVar.b;
                        if ((i3 + i2) - i4 <= 8192) {
                            byte[] bArr = vVar.a;
                            b.c(bArr, i4, bArr, 0, i3 - i4);
                            vVar.f7074c -= vVar.b;
                            vVar.b = 0;
                        } else {
                            throw new IllegalArgumentException();
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                b.c(this.a, this.b, vVar.a, vVar.f7074c, i2);
                vVar.f7074c += i2;
                this.b += i2;
                return;
            }
            throw new IllegalStateException("only owner can write".toString());
        }
        h.o.c.g.f("sink");
        throw null;
    }

    public v(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        if (bArr != null) {
            this.a = bArr;
            this.b = i2;
            this.f7074c = i3;
            this.f7075d = z;
            this.f7076e = z2;
            return;
        }
        h.o.c.g.f("data");
        throw null;
    }
}
