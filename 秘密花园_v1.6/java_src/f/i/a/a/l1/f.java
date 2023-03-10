package f.i.a.a.l1;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: AssetDataSource.java */
/* loaded from: classes.dex */
public final class f extends h {

    /* renamed from: e  reason: collision with root package name */
    public final AssetManager f5586e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5587f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public InputStream f5588g;

    /* renamed from: h  reason: collision with root package name */
    public long f5589h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5590i;

    /* compiled from: AssetDataSource.java */
    /* loaded from: classes.dex */
    public static final class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public f(Context context) {
        super(false);
        this.f5586e = context.getAssets();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            Uri uri = pVar.a;
            this.f5587f = uri;
            String path = uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            g(pVar);
            InputStream open = this.f5586e.open(path, 1);
            this.f5588g = open;
            if (open.skip(pVar.f5689e) >= pVar.f5689e) {
                if (pVar.f5690f != -1) {
                    this.f5589h = pVar.f5690f;
                } else {
                    long available = this.f5588g.available();
                    this.f5589h = available;
                    if (available == 2147483647L) {
                        this.f5589h = -1L;
                    }
                }
                this.f5590i = true;
                h(pVar);
                return this.f5589h;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5587f = null;
        try {
            try {
                if (this.f5588g != null) {
                    this.f5588g.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f5588g = null;
            if (this.f5590i) {
                this.f5590i = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5587f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5589h;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
        int read = this.f5588g.read(bArr, i2, i3);
        if (read == -1) {
            if (this.f5589h == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j3 = this.f5589h;
        if (j3 != -1) {
            this.f5589h = j3 - read;
        }
        e(read);
        return read;
    }
}
