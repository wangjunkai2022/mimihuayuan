package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: TextInformationFrame.java */
/* loaded from: classes.dex */
public final class l extends h {
    public static final Parcelable.Creator<l> CREATOR = new a();
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4654c;

    /* compiled from: TextInformationFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public l[] newArray(int i2) {
            return new l[i2];
        }
    }

    public l(String str, @Nullable String str2, String str3) {
        super(str);
        this.b = str2;
        this.f4654c = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.a.equals(lVar.a) && h0.b(this.b, lVar.b) && h0.b(this.f4654c, lVar.f4654c);
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() + 527) * 31;
        String str = this.b;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4654c;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": value=" + this.f4654c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4654c);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public l(android.os.Parcel r2) {
        /*
            r1 = this;
            java.lang.String r0 = r2.readString()
            f.i.a.a.m1.h0.g(r0)
            java.lang.String r0 = (java.lang.String) r0
            r1.<init>(r0)
            java.lang.String r0 = r2.readString()
            r1.b = r0
            java.lang.String r2 = r2.readString()
            r1.f4654c = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.l.<init>(android.os.Parcel):void");
    }
}
