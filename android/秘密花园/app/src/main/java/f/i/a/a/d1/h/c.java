package f.i.a.a.d1.h;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;

/* compiled from: IcyInfo.java */
/* loaded from: classes.dex */
public final class c implements a.b {
    public static final Parcelable.Creator<c> CREATOR = new a();
    @Nullable
    public final String a;
    @Nullable
    public final String b;

    /* compiled from: IcyInfo.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<c> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public c[] newArray(int i2) {
            return new c[i2];
        }
    }

    public c(@Nullable String str, @Nullable String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (!h0.b(this.a, cVar.a) || !h0.b(this.b, cVar.b)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.a;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ICY: title=\"");
        o.append(this.a);
        o.append("\", url=\"");
        return f.b.a.a.a.l(o, this.b, "\"");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public c(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }
}
