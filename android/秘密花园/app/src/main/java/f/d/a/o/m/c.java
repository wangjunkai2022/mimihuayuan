package f.d.a.o.m;

import androidx.annotation.NonNull;
import f.d.a.o.n.b0.b;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream.java */
/* loaded from: classes.dex */
public final class c extends OutputStream {
    @NonNull
    public final OutputStream a;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public b f3477c;

    /* renamed from: d  reason: collision with root package name */
    public int f3478d;

    public c(@NonNull OutputStream outputStream, @NonNull b bVar) {
        this.a = outputStream;
        this.f3477c = bVar;
        this.b = (byte[]) bVar.f(65536, byte[].class);
    }

    /* JADX INFO: finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.a.close();
            byte[] bArr = this.b;
            if (bArr != null) {
                this.f3477c.e(bArr);
                this.b = null;
            }
        } catch (Throwable th) {
            this.a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        int i2 = this.f3478d;
        if (i2 > 0) {
            this.a.write(this.b, 0, i2);
            this.f3478d = 0;
        }
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        byte[] bArr = this.b;
        int i3 = this.f3478d;
        int i4 = i3 + 1;
        this.f3478d = i4;
        bArr[i3] = (byte) i2;
        if (i4 == bArr.length && i4 > 0) {
            this.a.write(bArr, 0, i4);
            this.f3478d = 0;
        }
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
            if (this.f3478d != 0 || i5 < this.b.length) {
                int min = Math.min(i5, this.b.length - this.f3478d);
                System.arraycopy(bArr, i6, this.b, this.f3478d, min);
                int i7 = this.f3478d + min;
                this.f3478d = i7;
                i4 += min;
                byte[] bArr2 = this.b;
                if (i7 == bArr2.length && i7 > 0) {
                    this.a.write(bArr2, 0, i7);
                    this.f3478d = 0;
                    continue;
                }
            } else {
                this.a.write(bArr, i6, i5);
                return;
            }
        } while (i4 < i3);
    }
}
