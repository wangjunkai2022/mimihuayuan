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
    public final AssetManager f5502e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5503f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public InputStream f5504g;

    /* renamed from: h  reason: collision with root package name */
    public long f5505h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5506i;

    /* compiled from: AssetDataSource.java */
    /* loaded from: classes.dex */
    public static final class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public f(Context context) {
        super(false);
        this.f5502e = context.getAssets();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            Uri uri = pVar.a;
            this.f5503f = uri;
            String path = uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            g(pVar);
            InputStream open = this.f5502e.open(path, 1);
            this.f5504g = open;
            if (open.skip(pVar.f5605e) >= pVar.f5605e) {
                if (pVar.f5606f != -1) {
                    this.f5505h = pVar.f5606f;
                } else {
                    long available = this.f5504g.available();
                    this.f5505h = available;
                    if (available == 2147483647L) {
                        this.f5505h = -1L;
                    }
                }
                this.f5506i = true;
                h(pVar);
                return this.f5505h;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5503f = null;
        try {
            try {
                if (this.f5504g != null) {
                    this.f5504g.close();
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        } finally {
            this.f5504g = null;
            if (this.f5506i) {
                this.f5506i = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5503f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5505h;
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
        int read = this.f5504g.read(bArr, i2, i3);
        if (read == -1) {
            if (this.f5505h == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j3 = this.f5505h;
        if (j3 != -1) {
            this.f5505h = j3 - read;
        }
        e(read);
        return read;
    }
}
