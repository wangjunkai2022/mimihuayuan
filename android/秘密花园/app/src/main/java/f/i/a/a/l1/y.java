package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: FileDataSource.java */
/* loaded from: classes.dex */
public final class y extends h {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public RandomAccessFile f5652e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5653f;

    /* renamed from: g  reason: collision with root package name */
    public long f5654g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5655h;

    /* compiled from: FileDataSource.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public y() {
        super(false);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            this.f5653f = pVar.a;
            g(pVar);
            RandomAccessFile randomAccessFile = new RandomAccessFile(pVar.a.getPath(), "r");
            this.f5652e = randomAccessFile;
            randomAccessFile.seek(pVar.f5605e);
            long length = pVar.f5606f == -1 ? this.f5652e.length() - pVar.f5605e : pVar.f5606f;
            this.f5654g = length;
            if (length >= 0) {
                this.f5655h = true;
                h(pVar);
                return this.f5654g;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        try {
            this.f5653f = null;
            try {
                if (this.f5652e != null) {
                    this.f5652e.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f5652e = null;
            if (this.f5655h) {
                this.f5655h = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5653f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5654g;
        if (j2 == 0) {
            return -1;
        }
        try {
            int read = this.f5652e.read(bArr, i2, (int) Math.min(j2, (long) i3));
            if (read > 0) {
                this.f5654g -= (long) read;
                e(read);
            }
            return read;
        } catch (IOException e2) {
            throw new a(e2);
        }
    }
}
