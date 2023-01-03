package f.i.a.a.l1;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import f.b.a.a.a;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.net.URLDecoder;

/* compiled from: DataSchemeDataSource.java */
/* loaded from: classes.dex */
public final class j extends h {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public p f5525e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public byte[] f5526f;

    /* renamed from: g  reason: collision with root package name */
    public int f5527g;

    /* renamed from: h  reason: collision with root package name */
    public int f5528h;

    public j() {
        super(false);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        g(pVar);
        this.f5525e = pVar;
        this.f5528h = (int) pVar.f5605e;
        Uri uri = pVar.a;
        String scheme = uri.getScheme();
        if ("data".equals(scheme)) {
            String[] l0 = h0.l0(uri.getSchemeSpecificPart(), ",");
            if (l0.length == 2) {
                String str = l0[1];
                if (l0[0].contains(";base64")) {
                    try {
                        this.f5526f = Base64.decode(str, 0);
                    } catch (IllegalArgumentException e2) {
                        throw new f.i.a.a.h0(a.f("Error while parsing Base64 encoded string: ", str), e2);
                    }
                } else {
                    this.f5526f = h0.O(URLDecoder.decode(str, "US-ASCII"));
                }
                long j2 = pVar.f5606f;
                int length = j2 != -1 ? ((int) j2) + this.f5528h : this.f5526f.length;
                this.f5527g = length;
                if (length > this.f5526f.length || this.f5528h > length) {
                    this.f5526f = null;
                    throw new n(0);
                }
                h(pVar);
                return ((long) this.f5527g) - ((long) this.f5528h);
            }
            throw new f.i.a.a.h0(a.d("Unexpected URI format: ", uri));
        }
        throw new f.i.a.a.h0(a.f("Unsupported scheme: ", scheme));
    }

    @Override // f.i.a.a.l1.m
    public void close() {
        if (this.f5526f != null) {
            this.f5526f = null;
            f();
        }
        this.f5525e = null;
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        p pVar = this.f5525e;
        if (pVar != null) {
            return pVar.a;
        }
        return null;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.f5527g - this.f5528h;
        if (i4 == 0) {
            return -1;
        }
        int min = Math.min(i3, i4);
        byte[] bArr2 = this.f5526f;
        h0.g(bArr2);
        System.arraycopy(bArr2, this.f5528h, bArr, i2, min);
        this.f5528h += min;
        e(min);
        return min;
    }
}
