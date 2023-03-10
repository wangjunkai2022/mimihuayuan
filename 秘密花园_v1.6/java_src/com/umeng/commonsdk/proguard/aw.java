package com.umeng.commonsdk.proguard;
/* compiled from: TTransport.java */
/* loaded from: classes.dex */
public abstract class aw {
    public abstract int a(byte[] bArr, int i2, int i3) throws ax;

    public void a(int i2) {
    }

    public abstract boolean a();

    public abstract void b() throws ax;

    public void b(byte[] bArr) throws ax {
        b(bArr, 0, bArr.length);
    }

    public abstract void b(byte[] bArr, int i2, int i3) throws ax;

    public abstract void c();

    public int d(byte[] bArr, int i2, int i3) throws ax {
        int i4 = 0;
        while (i4 < i3) {
            int a = a(bArr, i2 + i4, i3 - i4);
            if (a <= 0) {
                throw new ax("Cannot read. Remote side has closed. Tried to read " + i3 + " bytes, but only got " + i4 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i4 += a;
        }
        return i4;
    }

    public void d() throws ax {
    }

    public byte[] f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public int h() {
        return -1;
    }

    public boolean i() {
        return a();
    }
}
