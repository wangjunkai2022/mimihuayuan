package f.i.a.a.h1.t0.k;

import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: ProgramInformation.java */
/* loaded from: classes.dex */
public class g {
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4978c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4979d;

    /* renamed from: e  reason: collision with root package name */
    public final String f4980e;

    public g(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.f4978c = str3;
        this.f4979d = str4;
        this.f4980e = str5;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (!h0.b(this.a, gVar.a) || !h0.b(this.b, gVar.b) || !h0.b(this.f4978c, gVar.f4978c) || !h0.b(this.f4979d, gVar.f4979d) || !h0.b(this.f4980e, gVar.f4980e)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.a;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4978c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f4979d;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f4980e;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }
}
