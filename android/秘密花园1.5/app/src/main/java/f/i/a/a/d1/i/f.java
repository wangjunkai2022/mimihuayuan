package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: GeobFrame.java */
/* loaded from: classes.dex */
public final class f extends h {
    public static final Parcelable.Creator<f> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4643c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4644d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f4645e;

    /* compiled from: GeobFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public f[] newArray(int i2) {
            return new f[i2];
        }
    }

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.b = str;
        this.f4643c = str2;
        this.f4644d = str3;
        this.f4645e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return h0.b(this.b, fVar.b) && h0.b(this.f4643c, fVar.f4643c) && h0.b(this.f4644d, fVar.f4644d) && Arrays.equals(this.f4645e, fVar.f4645e);
    }

    public int hashCode() {
        String str = this.b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4643c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4644d;
        return Arrays.hashCode(this.f4645e) + ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": mimeType=" + this.b + ", filename=" + this.f4643c + ", description=" + this.f4644d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeString(this.f4643c);
        parcel.writeString(this.f4644d);
        parcel.writeByteArray(this.f4645e);
    }

    public f(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4643c = parcel.readString();
        this.f4644d = parcel.readString();
        this.f4645e = parcel.createByteArray();
    }
}
