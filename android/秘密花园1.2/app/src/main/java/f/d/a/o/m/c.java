package f.d.a.o.m;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream.java */
/* loaded from: classes.dex */
public final class c extends OutputStream {
    @NonNull
    public final OutputStream a;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public f.d.a.o.n.b0.b f3552c;

    /* renamed from: d  reason: collision with root package name */
    public int f3553d;

    public c(@NonNull OutputStream outputStream, @NonNull f.d.a.o.n.b0.b bVar) {
        this.a = outputStream;
        this.f3552c = bVar;
        this.b = (byte[]) bVar.f(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.a.close();
            byte[] bArr = this.b;
            if (bArr != null) {
                this.f3552c.e(bArr);
                this.b = null;
            }
        } catch (Throwable th) {
            this.a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        int i2 = this.f3553d;
        if (i2 > 0) {
            this.a.write(this.b, 0, i2);
            this.f3553d = 0;
        }
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        byte[] bArr = this.b;
        int i3 = this.f3553d;
        int i4 = i3 + 1;
        this.f3553d = i4;
        bArr[i3] = (byte) i2;
        if (i4 != bArr.length || i4 <= 0) {
            return;
        }
        this.a.write(bArr, 0, i4);
        this.f3553d = 0;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i2, int i3) throws IOException {
        int i4 = 0;
        do {
            int i5 = i3 - i4;
            int i6 = i2 + i4;
            if (this.f3553d == 0 && i5 >= this.b.length) {
                this.a.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.b.length - this.f3553d);
            System.arraycopy(bArr, i6, this.b, this.f3553d, min);
            int i7 = this.f3553d + min;
            this.f3553d = i7;
            i4 += min;
            byte[] bArr2 = this.b;
            if (i7 == bArr2.length && i7 > 0) {
                this.a.write(bArr2, 0, i7);
                this.f3553d = 0;
                continue;
            }
        } while (i4 < i3);
    }
}
