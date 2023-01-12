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
    public RandomAccessFile f5727e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5728f;

    /* renamed from: g  reason: collision with root package name */
    public long f5729g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5730h;

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
            this.f5728f = pVar.a;
            g(pVar);
            RandomAccessFile randomAccessFile = new RandomAccessFile(pVar.a.getPath(), "r");
            this.f5727e = randomAccessFile;
            randomAccessFile.seek(pVar.f5680e);
            long length = pVar.f5681f == -1 ? this.f5727e.length() - pVar.f5680e : pVar.f5681f;
            this.f5729g = length;
            if (length >= 0) {
                this.f5730h = true;
                h(pVar);
                return this.f5729g;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5728f = null;
        try {
            try {
                if (this.f5727e != null) {
                    this.f5727e.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f5727e = null;
            if (this.f5730h) {
                this.f5730h = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5728f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5729g;
        if (j2 == 0) {
            return -1;
        }
        try {
            int read = this.f5727e.read(bArr, i2, (int) Math.min(j2, i3));
            if (read > 0) {
                this.f5729g -= read;
                e(read);
            }
            return read;
        } catch (IOException e2) {
            throw new a(e2);
        }
    }
}
