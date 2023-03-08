package com.umeng.commonsdk.proguard;

/* compiled from: TMemoryInputTransport.java */
/* loaded from: classes.dex */
public final class av extends aw {
    public byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f3117c;

    public av() {
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public boolean a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void b() throws ax {
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void b(byte[] bArr, int i2, int i3) throws ax {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void c() {
    }

    public void c(byte[] bArr, int i2, int i3) {
        this.a = bArr;
        this.b = i2;
        this.f3117c = i2 + i3;
    }

    public void e() {
        this.a = null;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public byte[] f() {
        return this.a;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public int g() {
        return this.b;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public int h() {
        return this.f3117c - this.b;
    }

    public av(byte[] bArr) {
        a(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public int a(byte[] bArr, int i2, int i3) throws ax {
        int h2 = h();
        if (i3 > h2) {
            i3 = h2;
        }
        if (i3 > 0) {
            System.arraycopy(this.a, this.b, bArr, i2, i3);
            a(i3);
        }
        return i3;
    }

    public av(byte[] bArr, int i2, int i3) {
        c(bArr, i2, i3);
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void a(int i2) {
        this.b += i2;
    }
}
