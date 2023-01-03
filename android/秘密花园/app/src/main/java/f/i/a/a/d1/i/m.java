package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: UrlLinkFrame.java */
/* loaded from: classes.dex */
public final class m extends h {
    public static final Parcelable.Creator<m> CREATOR = new a();
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4580c;

    /* compiled from: UrlLinkFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<m> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public m createFromParcel(Parcel parcel) {
            return new m(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public m[] newArray(int i2) {
            return new m[i2];
        }
    }

    public m(String str, @Nullable String str2, String str3) {
        super(str);
        this.b = str2;
        this.f4580c = str3;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (!this.a.equals(mVar.a) || !h0.b(this.b, mVar.b) || !h0.b(this.f4580c, mVar.f4580c)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        int hashCode = (this.a.hashCode() + 527) * 31;
        String str = this.b;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4580c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    @Override // f.i.a.a.d1.i.h, java.lang.Object
    public String toString() {
        return this.a + ": url=" + this.f4580c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4580c);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public m(android.os.Parcel r2) {
        /*
            r1 = this;
            java.lang.String r0 = r2.readString()
            f.i.a.a.m1.h0.g(r0)
            java.lang.String r0 = (java.lang.String) r0
            r1.<init>(r0)
            java.lang.String r0 = r2.readString()
            r1.b = r0
            java.lang.String r2 = r2.readString()
            r1.f4580c = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.m.<init>(android.os.Parcel):void");
    }
}
