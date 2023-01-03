package f.i.a.a.d1.j;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PrivateCommand.java */
/* loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new C0070a();
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f4581c;

    /* compiled from: PrivateCommand.java */
    /* renamed from: f.i.a.a.d1.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0070a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i2) {
            return new a[i2];
        }
    }

    public a(long j2, byte[] bArr, long j3) {
        this.a = j3;
        this.b = j2;
        this.f4581c = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.f4581c.length);
        parcel.writeByteArray(this.f4581c);
    }

    public a(Parcel parcel, C0070a c0070a) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        this.f4581c = bArr;
        parcel.readByteArray(bArr);
    }
}
