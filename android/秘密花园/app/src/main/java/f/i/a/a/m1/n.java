package f.i.a.a.m1;

/* compiled from: FlacStreamMetadata.java */
/* loaded from: classes.dex */
public final class n {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5682c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5683d;

    public n(byte[] bArr, int i2) {
        t tVar = new t(bArr);
        tVar.j(i2 * 8);
        tVar.f(16);
        tVar.f(16);
        tVar.f(24);
        tVar.f(24);
        this.a = tVar.f(20);
        this.b = tVar.f(3) + 1;
        this.f5682c = tVar.f(5) + 1;
        this.f5683d = ((((long) tVar.f(4)) & 15) << 32) | (((long) tVar.f(32)) & 4294967295L);
    }
}
