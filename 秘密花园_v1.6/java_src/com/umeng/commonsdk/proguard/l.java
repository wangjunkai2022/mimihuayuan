package com.umeng.commonsdk.proguard;

import java.io.ByteArrayOutputStream;
/* compiled from: TByteArrayOutputStream.java */
/* loaded from: classes.dex */
public class l extends ByteArrayOutputStream {
    public l(int i2) {
        super(i2);
    }

    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((ByteArrayOutputStream) this).count;
    }

    public l() {
    }
}
