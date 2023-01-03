package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.b.a.a.a;
import java.util.Arrays;

/* compiled from: DataSpec.java */
/* loaded from: classes.dex */
public final class p {
    public final Uri a;
    public final int b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5603c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5604d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5605e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5606f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f5607g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5608h;

    public p(Uri uri, long j2, long j3, @Nullable String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    public static String a(int i2) {
        if (i2 == 1) {
            return "GET";
        }
        if (i2 == 2) {
            return "POST";
        }
        if (i2 == 3) {
            return "HEAD";
        }
        throw new AssertionError(i2);
    }

    public boolean b(int i2) {
        return (this.f5608h & i2) == i2;
    }

    public p c(long j2) {
        long j3 = this.f5606f;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j3 - j2;
        }
        return d(j2, j4);
    }

    public p d(long j2, long j3) {
        if (j2 == 0 && this.f5606f == j3) {
            return this;
        }
        return new p(this.a, this.b, this.f5603c, this.f5604d + j2, this.f5605e + j2, j3, this.f5607g, this.f5608h);
    }

    public String toString() {
        StringBuilder o = a.o("DataSpec[");
        o.append(a(this.b));
        o.append(" ");
        o.append(this.a);
        o.append(", ");
        o.append(Arrays.toString(this.f5603c));
        o.append(", ");
        o.append(this.f5604d);
        o.append(", ");
        o.append(this.f5605e);
        o.append(", ");
        o.append(this.f5606f);
        o.append(", ");
        o.append(this.f5607g);
        o.append(", ");
        return a.k(o, this.f5608h, "]");
    }

    public p(Uri uri, long j2, long j3, @Nullable String str, int i2) {
        this(uri, j2, j2, j3, str, i2);
    }

    public p(Uri uri, long j2, long j3, long j4, @Nullable String str, int i2) {
        this(uri, 1, null, j2, j3, j4, str, i2);
    }

    public p(Uri uri, int i2, @Nullable byte[] bArr, long j2, long j3, long j4, @Nullable String str, int i3) {
        byte[] bArr2 = bArr;
        boolean z = true;
        h.m(j2 >= 0);
        h.m(j3 >= 0);
        if (j4 <= 0 && j4 != -1) {
            z = false;
        }
        h.m(z);
        this.a = uri;
        this.b = i2;
        this.f5603c = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f5604d = j2;
        this.f5605e = j3;
        this.f5606f = j4;
        this.f5607g = str;
        this.f5608h = i3;
    }
}
