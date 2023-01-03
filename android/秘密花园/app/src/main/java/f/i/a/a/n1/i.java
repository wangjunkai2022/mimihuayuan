package f.i.a.a.n1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: ColorInfo.java */
/* loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5732c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f5733d;

    /* renamed from: e  reason: collision with root package name */
    public int f5734e;

    /* compiled from: ColorInfo.java */
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

    public i(int i2, int i3, int i4, @Nullable byte[] bArr) {
        this.a = i2;
        this.b = i3;
        this.f5732c = i4;
        this.f5733d = bArr;
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
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.a == iVar.a && this.b == iVar.b && this.f5732c == iVar.f5732c && Arrays.equals(this.f5733d, iVar.f5733d)) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        if (this.f5734e == 0) {
            this.f5734e = Arrays.hashCode(this.f5733d) + ((((((527 + this.a) * 31) + this.b) * 31) + this.f5732c) * 31);
        }
        return this.f5734e;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ColorInfo(");
        o.append(this.a);
        o.append(", ");
        o.append(this.b);
        o.append(", ");
        o.append(this.f5732c);
        o.append(", ");
        o.append(this.f5733d != null);
        o.append(")");
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f5732c);
        h0.s0(parcel, this.f5733d != null);
        byte[] bArr = this.f5733d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }

    public i(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.f5732c = parcel.readInt();
        this.f5733d = h0.e0(parcel) ? parcel.createByteArray() : null;
    }
}
