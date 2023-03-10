package com.umeng.commonsdk.proguard;
/* compiled from: ShortStack.java */
/* loaded from: classes.dex */
public class h {
    public short[] a;
    public int b = -1;

    public h(int i2) {
        this.a = new short[i2];
    }

    private void d() {
        short[] sArr = this.a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.a = sArr2;
    }

    public short a() {
        short[] sArr = this.a;
        int i2 = this.b;
        this.b = i2 - 1;
        return sArr[i2];
    }

    public short b() {
        return this.a[this.b];
    }

    public void c() {
        this.b = -1;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("<ShortStack vector:[");
        for (int i2 = 0; i2 < this.a.length; i2++) {
            if (i2 != 0) {
                o.append(" ");
            }
            if (i2 == this.b) {
                o.append(">>");
            }
            o.append((int) this.a[i2]);
            if (i2 == this.b) {
                o.append("<<");
            }
        }
        o.append("]>");
        return o.toString();
    }

    public void a(short s) {
        if (this.a.length == this.b + 1) {
            d();
        }
        short[] sArr = this.a;
        int i2 = this.b + 1;
        this.b = i2;
        sArr[i2] = s;
    }
}
