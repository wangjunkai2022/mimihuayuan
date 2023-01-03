package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: ChapterTocFrame.java */
/* loaded from: classes.dex */
public final class d extends h {
    public static final Parcelable.Creator<d> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f4562c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4563d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f4564e;

    /* renamed from: f  reason: collision with root package name */
    public final h[] f4565f;

    /* compiled from: ChapterTocFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d[] newArray(int i2) {
            return new d[i2];
        }
    }

    public d(String str, boolean z, boolean z2, String[] strArr, h[] hVarArr) {
        super("CTOC");
        this.b = str;
        this.f4562c = z;
        this.f4563d = z2;
        this.f4564e = strArr;
        this.f4565f = hVarArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f4562c == dVar.f4562c && this.f4563d == dVar.f4563d && h0.b(this.b, dVar.b) && Arrays.equals(this.f4564e, dVar.f4564e) && Arrays.equals(this.f4565f, dVar.f4565f);
    }

    public int hashCode() {
        int i2 = (((527 + (this.f4562c ? 1 : 0)) * 31) + (this.f4563d ? 1 : 0)) * 31;
        String str = this.b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeByte(this.f4562c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4563d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f4564e);
        parcel.writeInt(this.f4565f.length);
        for (h hVar : this.f4565f) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public d(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4562c = parcel.readByte() != 0;
        this.f4563d = parcel.readByte() != 0;
        this.f4564e = parcel.createStringArray();
        int readInt = parcel.readInt();
        this.f4565f = new h[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4565f[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
