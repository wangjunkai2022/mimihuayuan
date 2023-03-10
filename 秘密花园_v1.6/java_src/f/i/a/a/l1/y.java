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
    public RandomAccessFile f5736e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5737f;

    /* renamed from: g  reason: collision with root package name */
    public long f5738g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5739h;

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
            this.f5737f = pVar.a;
            g(pVar);
            RandomAccessFile randomAccessFile = new RandomAccessFile(pVar.a.getPath(), "r");
            this.f5736e = randomAccessFile;
            randomAccessFile.seek(pVar.f5689e);
            long length = pVar.f5690f == -1 ? this.f5736e.length() - pVar.f5689e : pVar.f5690f;
            this.f5738g = length;
            if (length >= 0) {
                this.f5739h = true;
                h(pVar);
                return this.f5738g;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5737f = null;
        try {
            try {
                if (this.f5736e != null) {
                    this.f5736e.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f5736e = null;
            if (this.f5739h) {
                this.f5739h = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5737f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5738g;
        if (j2 == 0) {
            return -1;
        }
        try {
            int read = this.f5736e.read(bArr, i2, (int) Math.min(j2, i3));
            if (read > 0) {
                this.f5738g -= read;
                e(read);
            }
            return read;
        } catch (IOException e2) {
            throw new a(e2);
        }
    }
}
