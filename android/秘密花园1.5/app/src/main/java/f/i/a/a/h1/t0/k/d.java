package f.i.a.a.h1.t0.k;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: Descriptor.java */
/* loaded from: classes.dex */
public final class d {
    @NonNull
    public final String a;
    @Nullable
    public final String b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f5048c;

    public d(@NonNull String str, @Nullable String str2, @Nullable String str3) {
        this.a = str;
        this.b = str2;
        this.f5048c = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return h0.b(this.a, dVar.a) && h0.b(this.b, dVar.b) && h0.b(this.f5048c, dVar.f5048c);
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5048c;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }
}
