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
    public final boolean f4646c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4647d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f4648e;

    /* renamed from: f  reason: collision with root package name */
    public final h[] f4649f;

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
        this.f4646c = z;
        this.f4647d = z2;
        this.f4648e = strArr;
        this.f4649f = hVarArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f4646c == dVar.f4646c && this.f4647d == dVar.f4647d && h0.b(this.b, dVar.b) && Arrays.equals(this.f4648e, dVar.f4648e) && Arrays.equals(this.f4649f, dVar.f4649f);
    }

    public int hashCode() {
        int i2 = (((527 + (this.f4646c ? 1 : 0)) * 31) + (this.f4647d ? 1 : 0)) * 31;
        String str = this.b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeByte(this.f4646c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4647d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f4648e);
        parcel.writeInt(this.f4649f.length);
        for (h hVar : this.f4649f) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public d(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4646c = parcel.readByte() != 0;
        this.f4647d = parcel.readByte() != 0;
        this.f4648e = parcel.createStringArray();
        int readInt = parcel.readInt();
        this.f4649f = new h[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4649f[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
