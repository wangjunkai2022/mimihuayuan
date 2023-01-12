package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: BinaryFrame.java */
/* loaded from: classes.dex */
public final class b extends h {
    public static final Parcelable.Creator<b> CREATOR = new a();
    public final byte[] b;

    /* compiled from: BinaryFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i2) {
            return new b[i2];
        }
    }

    public b(String str, byte[] bArr) {
        super(str);
        this.b = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.a.equals(bVar.a) && Arrays.equals(this.b, bVar.b);
    }

    public int hashCode() {
        return Arrays.hashCode(this.b) + ((this.a.hashCode() + 527) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeByteArray(this.b);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b(android.os.Parcel r2) {
        /*
            r1 = this;
            java.lang.String r0 = r2.readString()
            f.i.a.a.m1.h0.g(r0)
            java.lang.String r0 = (java.lang.String) r0
            r1.<init>(r0)
            byte[] r2 = r2.createByteArray()
            r1.b = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.b.<init>(android.os.Parcel):void");
    }
}
