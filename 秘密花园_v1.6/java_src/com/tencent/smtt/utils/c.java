package com.tencent.smtt.utils;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: DataReader.java */
/* loaded from: classes.dex */
public class c implements Closeable {
    public final RandomAccessFile a;
    public final File b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2698c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2699d;

    public c(String str) throws FileNotFoundException {
        this(new File(str));
    }

    public void a(boolean z) {
        this.f2699d = z;
    }

    public final int b() throws IOException {
        int readInt = this.a.readInt();
        if (this.f2699d) {
            return ((readInt & (-16777216)) >>> 24) | ((readInt & 255) << 24) | ((65280 & readInt) << 8) | ((16711680 & readInt) >>> 8);
        }
        return readInt;
    }

    public final long c() throws IOException {
        if (this.f2699d) {
            this.a.readFully(this.f2698c, 0, 8);
            byte[] bArr = this.f2698c;
            return (bArr[0] & 255) | (bArr[7] << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8);
        }
        return this.a.readLong();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.a.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public c(File file) throws FileNotFoundException {
        this.f2698c = new byte[8];
        this.b = file;
        this.a = new RandomAccessFile(this.b, "r");
    }

    public void a(long j2) throws IOException {
        this.a.seek(j2);
    }

    public final int a(byte[] bArr) throws IOException {
        return this.a.read(bArr);
    }

    public final int a(char[] cArr) throws IOException {
        byte[] bArr = new byte[cArr.length];
        int read = this.a.read(bArr);
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = (char) bArr[i2];
        }
        return read;
    }

    public final short a() throws IOException {
        short readShort = this.a.readShort();
        if (this.f2699d) {
            return (short) (((readShort & 65280) >>> 8) | ((readShort & 255) << 8));
        }
        return readShort;
    }
}
