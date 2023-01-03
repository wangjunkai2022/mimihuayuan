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
    public final Resources f5507e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5508f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public AssetFileDescriptor f5509g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public InputStream f5510h;

    /* renamed from: i  reason: collision with root package name */
    public long f5511i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5512j;

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
        this.f5507e = context.getResources();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            Uri uri = pVar.a;
            this.f5508f = uri;
            if (TextUtils.equals("rawresource", uri.getScheme())) {
                try {
                    int parseInt = Integer.parseInt(this.f5508f.getLastPathSegment());
                    g(pVar);
                    this.f5509g = this.f5507e.openRawResourceFd(parseInt);
                    FileInputStream fileInputStream = new FileInputStream(this.f5509g.getFileDescriptor());
                    this.f5510h = fileInputStream;
                    fileInputStream.skip(this.f5509g.getStartOffset());
                    if (this.f5510h.skip(pVar.f5605e) >= pVar.f5605e) {
                        long j2 = -1;
                        if (pVar.f5606f != -1) {
                            this.f5511i = pVar.f5606f;
                        } else {
                            long length = this.f5509g.getLength();
                            if (length != -1) {
                                j2 = length - pVar.f5605e;
                            }
                            this.f5511i = j2;
                        }
                        this.f5512j = true;
                        h(pVar);
                        return this.f5511i;
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
        this.f5508f = null;
        try {
            try {
                if (this.f5510h != null) {
                    this.f5510h.close();
                }
                this.f5510h = null;
                try {
                    try {
                        if (this.f5509g != null) {
                            this.f5509g.close();
                        }
                    } catch (IOException e2) {
                        throw new a(e2);
                    }
                } finally {
                    this.f5509g = null;
                    if (this.f5512j) {
                        this.f5512j = false;
                        f();
                    }
                }
            } catch (IOException e3) {
                throw new a(e3);
            }
        } catch (Throwable th) {
            this.f5510h = null;
            try {
                try {
                    if (this.f5509g != null) {
                        this.f5509g.close();
                    }
                    this.f5509g = null;
                    if (this.f5512j) {
                        this.f5512j = false;
                        f();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new a(e4);
                }
            } finally {
                this.f5509g = null;
                if (this.f5512j) {
                    this.f5512j = false;
                    f();
                }
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5508f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5511i;
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
        int read = this.f5510h.read(bArr, i2, i3);
        if (read == -1) {
            if (this.f5511i == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j3 = this.f5511i;
        if (j3 != -1) {
            this.f5511i = j3 - read;
        }
        e(read);
        return read;
    }
}
