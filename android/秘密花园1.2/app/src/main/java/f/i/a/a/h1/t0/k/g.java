package f.i.a.a.h1.t0.k;

import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: ProgramInformation.java */
/* loaded from: classes.dex */
public class g {
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5053c;

    /* renamed from: d  reason: collision with root package name */
    public final String f5054d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5055e;

    public g(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.f5053c = str3;
        this.f5054d = str4;
        this.f5055e = str5;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return h0.b(this.a, gVar.a) && h0.b(this.b, gVar.b) && h0.b(this.f5053c, gVar.f5053c) && h0.b(this.f5054d, gVar.f5054d) && h0.b(this.f5055e, gVar.f5055e);
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5053c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f5054d;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f5055e;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
