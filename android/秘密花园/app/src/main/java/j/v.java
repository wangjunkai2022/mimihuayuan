package j;

import h.o.c.g;

/* compiled from: Segment.kt */
/* loaded from: classes.dex */
public final class v {
    public final byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f6990c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f6991d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6992e;

    /* renamed from: f  reason: collision with root package name */
    public v f6993f;

    /* renamed from: g  reason: collision with root package name */
    public v f6994g;

    public v() {
        this.a = new byte[8192];
        this.f6992e = true;
        this.f6991d = false;
    }

    public final v a() {
        v vVar = this.f6993f;
        if (vVar == this) {
            vVar = null;
        }
        v vVar2 = this.f6994g;
        if (vVar2 != null) {
            vVar2.f6993f = this.f6993f;
            v vVar3 = this.f6993f;
            if (vVar3 != null) {
                vVar3.f6994g = vVar2;
                this.f6993f = null;
                this.f6994g = null;
                return vVar;
            }
            g.e();
            throw null;
        }
        g.e();
        throw null;
    }

    public final v b(v vVar) {
        vVar.f6994g = this;
        vVar.f6993f = this.f6993f;
        v vVar2 = this.f6993f;
        if (vVar2 != null) {
            vVar2.f6994g = vVar;
            this.f6993f = vVar;
            return vVar;
        }
        g.e();
        throw null;
    }

    public final v c() {
        this.f6991d = true;
        return new v(this.a, this.b, this.f6990c, true, false);
    }

    public final void d(v vVar, int i2) {
        if (vVar == null) {
            g.f("sink");
            throw null;
        } else if (vVar.f6992e) {
            int i3 = vVar.f6990c;
            if (i3 + i2 > 8192) {
                if (!vVar.f6991d) {
                    int i4 = vVar.b;
                    if ((i3 + i2) - i4 <= 8192) {
                        byte[] bArr = vVar.a;
                        b.c(bArr, i4, bArr, 0, i3 - i4);
                        vVar.f6990c -= vVar.b;
                        vVar.b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            b.c(this.a, this.b, vVar.a, vVar.f6990c, i2);
            vVar.f6990c += i2;
            this.b += i2;
        } else {
            throw new IllegalStateException("only owner can write".toString());
        }
    }

    public v(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        if (bArr != null) {
            this.a = bArr;
            this.b = i2;
            this.f6990c = i3;
            this.f6991d = z;
            this.f6992e = z2;
            return;
        }
        g.f("data");
        throw null;
    }
}
