package f.i.a.a.b1.u;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: MdtaMetadataEntry.java */
/* loaded from: classes.dex */
public final class e implements a.b {
    public static final Parcelable.Creator<e> CREATOR = new a();
    public final String a;
    public final byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4186c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4187d;

    /* compiled from: MdtaMetadataEntry.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public e createFromParcel(Parcel parcel) {
            return new e(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public e[] newArray(int i2) {
            return new e[i2];
        }
    }

    public e(String str, byte[] bArr, int i2, int i3) {
        this.a = str;
        this.b = bArr;
        this.f4186c = i2;
        this.f4187d = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.a.equals(eVar.a) && Arrays.equals(this.b, eVar.b) && this.f4186c == eVar.f4186c && this.f4187d == eVar.f4187d;
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.b) + ((this.a.hashCode() + 527) * 31)) * 31) + this.f4186c) * 31) + this.f4187d;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("mdta: key=");
        o.append(this.a);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b.length);
        parcel.writeByteArray(this.b);
        parcel.writeInt(this.f4186c);
        parcel.writeInt(this.f4187d);
    }

    public e(Parcel parcel, a aVar) {
        String readString = parcel.readString();
        h0.g(readString);
        this.a = readString;
        byte[] bArr = new byte[parcel.readInt()];
        this.b = bArr;
        parcel.readByteArray(bArr);
        this.f4186c = parcel.readInt();
        this.f4187d = parcel.readInt();
    }
}
