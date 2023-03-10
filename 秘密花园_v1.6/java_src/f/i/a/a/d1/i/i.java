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
    public final String f4656c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4657d;

    /* compiled from: InternalFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public i[] newArray(int i2) {
            return new i[i2];
        }
    }

    public i(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.f4656c = str2;
        this.f4657d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return h0.b(this.f4656c, iVar.f4656c) && h0.b(this.b, iVar.b) && h0.b(this.f4657d, iVar.f4657d);
    }

    public int hashCode() {
        String str = this.b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4656c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4657d;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": domain=" + this.b + ", description=" + this.f4656c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4657d);
    }

    public i(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4656c = parcel.readString();
        this.f4657d = parcel.readString();
    }
}
