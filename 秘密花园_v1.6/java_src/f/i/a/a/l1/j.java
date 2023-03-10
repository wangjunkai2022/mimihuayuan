package f.i.a.a.l1;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.URLDecoder;
/* compiled from: DataSchemeDataSource.java */
/* loaded from: classes.dex */
public final class j extends h {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public p f5609e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public byte[] f5610f;

    /* renamed from: g  reason: collision with root package name */
    public int f5611g;

    /* renamed from: h  reason: collision with root package name */
    public int f5612h;

    public j() {
        super(false);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        g(pVar);
        this.f5609e = pVar;
        this.f5612h = (int) pVar.f5689e;
        Uri uri = pVar.a;
        String scheme = uri.getScheme();
        if ("data".equals(scheme)) {
            String[] l0 = f.i.a.a.m1.h0.l0(uri.getSchemeSpecificPart(), ",");
            if (l0.length == 2) {
                String str = l0[1];
                if (l0[0].contains(";base64")) {
                    try {
                        this.f5610f = Base64.decode(str, 0);
                    } catch (IllegalArgumentException e2) {
                        throw new f.i.a.a.h0(f.b.a.a.a.f("Error while parsing Base64 encoded string: ", str), e2);
                    }
                } else {
                    this.f5610f = f.i.a.a.m1.h0.O(URLDecoder.decode(str, "US-ASCII"));
                }
                long j2 = pVar.f5690f;
                int length = j2 != -1 ? ((int) j2) + this.f5612h : this.f5610f.length;
                this.f5611g = length;
                if (length <= this.f5610f.length && this.f5612h <= length) {
                    h(pVar);
                    return this.f5611g - this.f5612h;
                }
                this.f5610f = null;
                throw new n(0);
            }
            throw new f.i.a.a.h0(f.b.a.a.a.d("Unexpected URI format: ", uri));
        }
        throw new f.i.a.a.h0(f.b.a.a.a.f("Unsupported scheme: ", scheme));
    }

    @Override // f.i.a.a.l1.m
    public void close() {
        if (this.f5610f != null) {
            this.f5610f = null;
            f();
        }
        this.f5609e = null;
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        p pVar = this.f5609e;
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
        int i4 = this.f5611g - this.f5612h;
        if (i4 == 0) {
            return -1;
        }
        int min = Math.min(i3, i4);
        byte[] bArr2 = this.f5610f;
        f.i.a.a.m1.h0.g(bArr2);
        System.arraycopy(bArr2, this.f5612h, bArr, i2, min);
        this.f5612h += min;
        e(min);
        return min;
    }
}
