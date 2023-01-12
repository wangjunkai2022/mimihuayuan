package j;

/* compiled from: Segment.kt */
/* loaded from: classes.dex */
public final class v {
    public final byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f7065c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7066d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7067e;

    /* renamed from: f  reason: collision with root package name */
    public v f7068f;

    /* renamed from: g  reason: collision with root package name */
    public v f7069g;

    public v() {
        this.a = new byte[8192];
        this.f7067e = true;
        this.f7066d = false;
    }

    public final v a() {
        v vVar = this.f7068f;
        if (vVar == this) {
            vVar = null;
        }
        v vVar2 = this.f7069g;
        if (vVar2 != null) {
            vVar2.f7068f = this.f7068f;
            v vVar3 = this.f7068f;
            if (vVar3 != null) {
                vVar3.f7069g = vVar2;
                this.f7068f = null;
                this.f7069g = null;
                return vVar;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final v b(v vVar) {
        vVar.f7069g = this;
        vVar.f7068f = this.f7068f;
        v vVar2 = this.f7068f;
        if (vVar2 != null) {
            vVar2.f7069g = vVar;
            this.f7068f = vVar;
            return vVar;
        }
        h.o.c.g.e();
        throw null;
    }

    public final v c() {
        this.f7066d = true;
        return new v(this.a, this.b, this.f7065c, true, false);
    }

    public final void d(v vVar, int i2) {
        if (vVar != null) {
            if (vVar.f7067e) {
                int i3 = vVar.f7065c;
                if (i3 + i2 > 8192) {
                    if (!vVar.f7066d) {
                        int i4 = vVar.b;
                        if ((i3 + i2) - i4 <= 8192) {
                            byte[] bArr = vVar.a;
                            b.c(bArr, i4, bArr, 0, i3 - i4);
                            vVar.f7065c -= vVar.b;
                            vVar.b = 0;
                        } else {
                            throw new IllegalArgumentException();
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                b.c(this.a, this.b, vVar.a, vVar.f7065c, i2);
                vVar.f7065c += i2;
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
            this.f7065c = i3;
            this.f7066d = z;
            this.f7067e = z2;
            return;
        }
        h.o.c.g.f("data");
        throw null;
    }
}
