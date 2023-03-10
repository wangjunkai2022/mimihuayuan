package f.i.a.a.h1.t0.k;

import android.net.Uri;
import androidx.annotation.Nullable;
/* compiled from: RangedUri.java */
/* loaded from: classes.dex */
public final class h {
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5065c;

    /* renamed from: d  reason: collision with root package name */
    public int f5066d;

    public h(@Nullable String str, long j2, long j3) {
        this.f5065c = str == null ? "" : str;
        this.a = j2;
        this.b = j3;
    }

    @Nullable
    public h a(@Nullable h hVar, String str) {
        String f1 = c.a.a.b.g.h.f1(str, this.f5065c);
        if (hVar != null && f1.equals(c.a.a.b.g.h.f1(str, hVar.f5065c))) {
            long j2 = this.b;
            if (j2 != -1) {
                long j3 = this.a;
                if (j3 + j2 == hVar.a) {
                    long j4 = hVar.b;
                    return new h(f1, j3, j4 == -1 ? -1L : j2 + j4);
                }
            }
            long j5 = hVar.b;
            if (j5 != -1) {
                long j6 = hVar.a;
                if (j6 + j5 == this.a) {
                    long j7 = this.b;
                    return new h(f1, j6, j7 == -1 ? -1L : j5 + j7);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return c.a.a.b.g.h.g1(str, this.f5065c);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.a == hVar.a && this.b == hVar.b && this.f5065c.equals(hVar.f5065c);
    }

    public int hashCode() {
        if (this.f5066d == 0) {
            this.f5066d = this.f5065c.hashCode() + ((((527 + ((int) this.a)) * 31) + ((int) this.b)) * 31);
        }
        return this.f5066d;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("RangedUri(referenceUri=");
        o.append(this.f5065c);
        o.append(", start=");
        o.append(this.a);
        o.append(", length=");
        o.append(this.b);
        o.append(")");
        return o.toString();
    }
}
