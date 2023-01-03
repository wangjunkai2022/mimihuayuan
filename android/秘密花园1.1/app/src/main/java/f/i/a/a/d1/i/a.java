package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: ApicFrame.java */
/* loaded from: classes.dex */
public final class a extends h {
    public static final Parcelable.Creator<a> CREATOR = new C0069a();
    public final String b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f4554c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4555d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f4556e;

    /* compiled from: ApicFrame.java */
    /* renamed from: f.i.a.a.d1.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0069a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i2) {
            return new a[i2];
        }
    }

    public a(String str, @Nullable String str2, int i2, byte[] bArr) {
        super("APIC");
        this.b = str;
        this.f4554c = str2;
        this.f4555d = i2;
        this.f4556e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f4555d == aVar.f4555d && h0.b(this.b, aVar.b) && h0.b(this.f4554c, aVar.f4554c) && Arrays.equals(this.f4556e, aVar.f4556e);
    }

    public int hashCode() {
        int i2 = (527 + this.f4555d) * 31;
        String str = this.b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4554c;
        return Arrays.hashCode(this.f4556e) + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": mimeType=" + this.b + ", description=" + this.f4554c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeString(this.f4554c);
        parcel.writeInt(this.f4555d);
        parcel.writeByteArray(this.f4556e);
    }

    public a(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4554c = parcel.readString();
        this.f4555d = parcel.readInt();
        this.f4556e = parcel.createByteArray();
    }
}
