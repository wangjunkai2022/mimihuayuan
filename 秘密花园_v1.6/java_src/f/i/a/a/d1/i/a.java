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
    public final String f4638c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4639d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f4640e;

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
        this.f4638c = str2;
        this.f4639d = i2;
        this.f4640e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f4639d == aVar.f4639d && h0.b(this.b, aVar.b) && h0.b(this.f4638c, aVar.f4638c) && Arrays.equals(this.f4640e, aVar.f4640e);
    }

    public int hashCode() {
        int i2 = (527 + this.f4639d) * 31;
        String str = this.b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4638c;
        return Arrays.hashCode(this.f4640e) + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": mimeType=" + this.b + ", description=" + this.f4638c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeString(this.f4638c);
        parcel.writeInt(this.f4639d);
        parcel.writeByteArray(this.f4640e);
    }

    public a(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4638c = parcel.readString();
        this.f4639d = parcel.readInt();
        this.f4640e = parcel.createByteArray();
    }
}
