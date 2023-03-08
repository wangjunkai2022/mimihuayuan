package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: PrivFrame.java */
/* loaded from: classes.dex */
public final class k extends h {
    public static final Parcelable.Creator<k> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f4653c;

    /* compiled from: PrivFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public k createFromParcel(Parcel parcel) {
            return new k(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public k[] newArray(int i2) {
            return new k[i2];
        }
    }

    public k(String str, byte[] bArr) {
        super("PRIV");
        this.b = str;
        this.f4653c = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return h0.b(this.b, kVar.b) && Arrays.equals(this.f4653c, kVar.f4653c);
    }

    public int hashCode() {
        String str = this.b;
        return Arrays.hashCode(this.f4653c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": owner=" + this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.f4653c);
    }

    public k(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4653c = parcel.createByteArray();
    }
}
