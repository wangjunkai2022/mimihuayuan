package f.i.a.a.d1.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: EventMessage.java */
/* loaded from: classes.dex */
public final class a implements a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0068a();
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4546c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4547d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f4548e;

    /* renamed from: f  reason: collision with root package name */
    public int f4549f;

    /* compiled from: EventMessage.java */
    /* renamed from: f.i.a.a.d1.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0068a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i2) {
            return new a[i2];
        }
    }

    public a(String str, String str2, long j2, long j3, byte[] bArr) {
        this.a = str;
        this.b = str2;
        this.f4546c = j2;
        this.f4547d = j3;
        this.f4548e = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f4546c == aVar.f4546c && this.f4547d == aVar.f4547d && h0.b(this.a, aVar.a) && h0.b(this.b, aVar.b) && Arrays.equals(this.f4548e, aVar.f4548e);
    }

    public int hashCode() {
        if (this.f4549f == 0) {
            String str = this.a;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            long j2 = this.f4546c;
            long j3 = this.f4547d;
            this.f4549f = Arrays.hashCode(this.f4548e) + ((((((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31);
        }
        return this.f4549f;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("EMSG: scheme=");
        o.append(this.a);
        o.append(", id=");
        o.append(this.f4547d);
        o.append(", value=");
        o.append(this.b);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeLong(this.f4546c);
        parcel.writeLong(this.f4547d);
        parcel.writeByteArray(this.f4548e);
    }

    public a(Parcel parcel) {
        String readString = parcel.readString();
        h0.g(readString);
        this.a = readString;
        this.b = parcel.readString();
        this.f4546c = parcel.readLong();
        this.f4547d = parcel.readLong();
        this.f4548e = parcel.createByteArray();
    }
}
