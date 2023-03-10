package f.i.a.a.l1;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* compiled from: ContentDataSource.java */
/* loaded from: classes.dex */
public final class i extends h {

    /* renamed from: e  reason: collision with root package name */
    public final ContentResolver f5603e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Uri f5604f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public AssetFileDescriptor f5605g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public FileInputStream f5606h;

    /* renamed from: i  reason: collision with root package name */
    public long f5607i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5608j;

    /* compiled from: ContentDataSource.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public i(Context context) {
        super(false);
        this.f5603e = context.getContentResolver();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        try {
            this.f5604f = pVar.a;
            g(pVar);
            AssetFileDescriptor openAssetFileDescriptor = this.f5603e.openAssetFileDescriptor(this.f5604f, "r");
            this.f5605g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                this.f5606h = new FileInputStream(this.f5605g.getFileDescriptor());
                long startOffset = this.f5605g.getStartOffset();
                long skip = this.f5606h.skip(pVar.f5689e + startOffset) - startOffset;
                if (skip == pVar.f5689e) {
                    long j2 = -1;
                    if (pVar.f5690f != -1) {
                        this.f5607i = pVar.f5690f;
                    } else {
                        long length = this.f5605g.getLength();
                        if (length == -1) {
                            FileChannel channel = this.f5606h.getChannel();
                            long size = channel.size();
                            if (size != 0) {
                                j2 = size - channel.position();
                            }
                            this.f5607i = j2;
                        } else {
                            this.f5607i = length - skip;
                        }
                    }
                    this.f5608j = true;
                    h(pVar);
                    return this.f5607i;
                }
                throw new EOFException();
            }
            throw new FileNotFoundException("Could not open file descriptor for: " + this.f5604f);
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a {
        this.f5604f = null;
        try {
            try {
                if (this.f5606h != null) {
                    this.f5606h.close();
                }
                this.f5606h = null;
                try {
                    try {
                        if (this.f5605g != null) {
                            this.f5605g.close();
                        }
                    } catch (IOException e2) {
                        throw new a(e2);
                    }
                } finally {
                    this.f5605g = null;
                    if (this.f5608j) {
                        this.f5608j = false;
                        f();
                    }
                }
            } catch (IOException e3) {
                throw new a(e3);
            }
        } catch (Throwable th) {
            this.f5606h = null;
            try {
                try {
                    if (this.f5605g != null) {
                        this.f5605g.close();
                    }
                    this.f5605g = null;
                    if (this.f5608j) {
                        this.f5608j = false;
                        f();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new a(e4);
                }
            } finally {
                this.f5605g = null;
                if (this.f5608j) {
                    this.f5608j = false;
                    f();
                }
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5604f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f5607i;
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
        int read = this.f5606h.read(bArr, i2, i3);
        if (read == -1) {
            if (this.f5607i == -1) {
                return -1;
            }
            throw new a(new EOFException());
        }
        long j3 = this.f5607i;
        if (j3 != -1) {
            this.f5607i = j3 - read;
        }
        e(read);
        return read;
    }
}
