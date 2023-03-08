package f.i.a.a.h1.t0.k;

import android.net.Uri;
import androidx.annotation.Nullable;

/* compiled from: RangedUri.java */
/* loaded from: classes.dex */
public final class h {
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5056c;

    /* renamed from: d  reason: collision with root package name */
    public int f5057d;

    public h(@Nullable String str, long j2, long j3) {
        this.f5056c = str == null ? "" : str;
        this.a = j2;
        this.b = j3;
    }

    @Nullable
    public h a(@Nullable h hVar, String str) {
        String d1 = c.a.a.b.g.h.d1(str, this.f5056c);
        if (hVar != null && d1.equals(c.a.a.b.g.h.d1(str, hVar.f5056c))) {
            long j2 = this.b;
            if (j2 != -1) {
                long j3 = this.a;
                if (j3 + j2 == hVar.a) {
                    long j4 = hVar.b;
                    return new h(d1, j3, j4 == -1 ? -1L : j2 + j4);
                }
            }
            long j5 = hVar.b;
            if (j5 != -1) {
                long j6 = hVar.a;
                if (j6 + j5 == this.a) {
                    long j7 = this.b;
                    return new h(d1, j6, j7 == -1 ? -1L : j5 + j7);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return c.a.a.b.g.h.e1(str, this.f5056c);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.a == hVar.a && this.b == hVar.b && this.f5056c.equals(hVar.f5056c);
    }

    public int hashCode() {
        if (this.f5057d == 0) {
            this.f5057d = this.f5056c.hashCode() + ((((527 + ((int) this.a)) * 31) + ((int) this.b)) * 31);
        }
        return this.f5057d;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("RangedUri(referenceUri=");
        o.append(this.f5056c);
        o.append(", start=");
        o.append(this.a);
        o.append(", length=");
        o.append(this.b);
        o.append(")");
        return o.toString();
    }
}
