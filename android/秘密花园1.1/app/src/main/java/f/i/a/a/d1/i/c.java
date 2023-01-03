package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: ChapterFrame.java */
/* loaded from: classes.dex */
public final class c extends h {
    public static final Parcelable.Creator<c> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4557c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4558d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4559e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4560f;

    /* renamed from: g  reason: collision with root package name */
    public final h[] f4561g;

    /* compiled from: ChapterFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public c[] newArray(int i2) {
            return new c[i2];
        }
    }

    public c(String str, int i2, int i3, long j2, long j3, h[] hVarArr) {
        super("CHAP");
        this.b = str;
        this.f4557c = i2;
        this.f4558d = i3;
        this.f4559e = j2;
        this.f4560f = j3;
        this.f4561g = hVarArr;
    }

    @Override // f.i.a.a.d1.i.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4557c == cVar.f4557c && this.f4558d == cVar.f4558d && this.f4559e == cVar.f4559e && this.f4560f == cVar.f4560f && h0.b(this.b, cVar.b) && Arrays.equals(this.f4561g, cVar.f4561g);
    }

    public int hashCode() {
        int i2 = (((((((527 + this.f4557c) * 31) + this.f4558d) * 31) + ((int) this.f4559e)) * 31) + ((int) this.f4560f)) * 31;
        String str = this.b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeInt(this.f4557c);
        parcel.writeInt(this.f4558d);
        parcel.writeLong(this.f4559e);
        parcel.writeLong(this.f4560f);
        parcel.writeInt(this.f4561g.length);
        for (h hVar : this.f4561g) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public c(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4557c = parcel.readInt();
        this.f4558d = parcel.readInt();
        this.f4559e = parcel.readLong();
        this.f4560f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f4561g = new h[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4561g[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
