package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: InternalFrame.java */
/* loaded from: classes.dex */
public final class i extends h {
    public static final Parcelable.Creator<i> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4572c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4573d;

    /* compiled from: InternalFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<i> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public i[] newArray(int i2) {
            return new i[i2];
        }
    }

    public i(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.f4572c = str2;
        this.f4573d = str3;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (!h0.b(this.f4572c, iVar.f4572c) || !h0.b(this.b, iVar.b) || !h0.b(this.f4573d, iVar.f4573d)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.b;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4572c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4573d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    @Override // f.i.a.a.d1.i.h, java.lang.Object
    public String toString() {
        return this.a + ": domain=" + this.b + ", description=" + this.f4572c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4573d);
    }

    public i(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4572c = parcel.readString();
        this.f4573d = parcel.readString();
    }
}
