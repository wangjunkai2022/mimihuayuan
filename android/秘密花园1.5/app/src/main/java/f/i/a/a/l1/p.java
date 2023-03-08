package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: DataSpec.java */
/* loaded from: classes.dex */
public final class p {
    public final Uri a;
    public final int b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5678c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5679d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5680e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5681f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f5682g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5683h;

    public p(Uri uri, long j2, long j3, @Nullable String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    public static String a(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return "HEAD";
                }
                throw new AssertionError(i2);
            }
            return "POST";
        }
        return "GET";
    }

    public boolean b(int i2) {
        return (this.f5683h & i2) == i2;
    }

    public p c(long j2) {
        long j3 = this.f5681f;
        return d(j2, j3 != -1 ? j3 - j2 : -1L);
    }

    public p d(long j2, long j3) {
        return (j2 == 0 && this.f5681f == j3) ? this : new p(this.a, this.b, this.f5678c, this.f5679d + j2, this.f5680e + j2, j3, this.f5682g, this.f5683h);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("DataSpec[");
        o.append(a(this.b));
        o.append(" ");
        o.append(this.a);
        o.append(", ");
        o.append(Arrays.toString(this.f5678c));
        o.append(", ");
        o.append(this.f5679d);
        o.append(", ");
        o.append(this.f5680e);
        o.append(", ");
        o.append(this.f5681f);
        o.append(", ");
        o.append(this.f5682g);
        o.append(", ");
        return f.b.a.a.a.k(o, this.f5683h, "]");
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
        c.a.a.b.g.h.m(j2 >= 0);
        c.a.a.b.g.h.m(j3 >= 0);
        if (j4 <= 0 && j4 != -1) {
            z = false;
        }
        c.a.a.b.g.h.m(z);
        this.a = uri;
        this.b = i2;
        this.f5678c = (bArr2 == null || bArr2.length == 0) ? null : null;
        this.f5679d = j2;
        this.f5680e = j3;
        this.f5681f = j4;
        this.f5682g = str;
        this.f5683h = i3;
    }
}
