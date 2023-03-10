package f.i.a.a.l1;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: RawResourceDataSource.java */
/* loaded from: classes.dex */
public final class f0 extends h {

    /* renamed from: e  reason: collision with root package name */
    public final Resources f5591e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5592f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public AssetFileDescriptor f5593g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public InputStream f5594h;

    /* renamed from: i  reason: collision with root package name */
    public long f5595i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5596j;

    /* compiled from: RawResourceDataSource.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }

        public a(IOException iOException) {
            super(iOException);
        }
    }

    public f0(Context context) {
        super(false);
        this.f5591e = context.getResources();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            Uri uri = pVar.a;
            this.f5592f = uri;
            if (TextUtils.equals("rawresource", uri.getScheme())) {
                try {
                    int parseInt = Integer.parseInt(this.f5592f.getLastPathSegment());
                    g(pVar);
                    this.f5593g = this.f5591e.openRawResourceFd(parseInt);
                    FileInputStream fileInputStream = new FileInputStream(this.f5593g.getFileDescriptor());
                    this.f5594h = fileInputStream;
                    fileInputStream.skip(this.f5593g.getStartOffset());
                    if (this.f5594h.skip(pVar.f5689e) >= pVar.f5689e) {
                        long j2 = -1;
                        if (pVar.f5690f != -1) {
                            this.f5595i = pVar.f5690f;
                        } else {
                            long length = this.f5593g.getLength();
                            if (length != -1) {
                                j2 = length - pVar.f5689e;
                            }
                            this.f5595i = j2;
                        }
                        this.f5596j = true;
                        h(pVar);
                        return this.f5595i;
                    }
                    throw new EOFException();
                } catch (NumberFormatException unused) {
                    throw new a("Resource identifier must be an integer.");
                }
            }
            throw new a("URI must use scheme rawresource");
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5592f = null;
        try {
            try {
                if (this.f5594h != null) {
                    this.f5594h.close();
                }
                this.f5594h = null;
                try {
                    try {
                        if (this.f5593g != null) {
                            this.f5593g.close();
                        }
                    } catch (IOException e2) {
                        throw new a(e2);
                    }
                } finally {
                    this.f5593g = null;
                    if (this.f5596j) {
                        this.f5596j = false;
                        f();
                    }
                }
            } catch (IOException e3) {
                throw new a(e3);
            }
        } catch (Throwable th) {
            this.f5594h = null;
            try {
                try {
                    if (this.f5593g != null) {
                        this.f5593g.close();
                    }
                    this.f5593g = null;
                    if (this.f5596j) {
                        this.f5596j = false;
                        f();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new a(e4);
                }
            } finally {
                this.f5593g = null;
                if (this.f5596j) {
                    this.f5596j = false;
                    f();
                }
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5592f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5595i;
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
        int read = this.f5594h.read(bArr, i2, i3);
        if (read == -1) {
            if (this.f5595i == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j3 = this.f5595i;
        if (j3 != -1) {
            this.f5595i = j3 - read;
        }
        e(read);
        return read;
    }
}
