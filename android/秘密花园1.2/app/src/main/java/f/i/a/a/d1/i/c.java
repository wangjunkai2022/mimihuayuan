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
    public final int f4632c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4633d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4634e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4635f;

    /* renamed from: g  reason: collision with root package name */
    public final h[] f4636g;

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
        this.f4632c = i2;
        this.f4633d = i3;
        this.f4634e = j2;
        this.f4635f = j3;
        this.f4636g = hVarArr;
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
        return this.f4632c == cVar.f4632c && this.f4633d == cVar.f4633d && this.f4634e == cVar.f4634e && this.f4635f == cVar.f4635f && h0.b(this.b, cVar.b) && Arrays.equals(this.f4636g, cVar.f4636g);
    }

    public int hashCode() {
        int i2 = (((((((527 + this.f4632c) * 31) + this.f4633d) * 31) + ((int) this.f4634e)) * 31) + ((int) this.f4635f)) * 31;
        String str = this.b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeInt(this.f4632c);
        parcel.writeInt(this.f4633d);
        parcel.writeLong(this.f4634e);
        parcel.writeLong(this.f4635f);
        parcel.writeInt(this.f4636g.length);
        for (h hVar : this.f4636g) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public c(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4632c = parcel.readInt();
        this.f4633d = parcel.readInt();
        this.f4634e = parcel.readLong();
        this.f4635f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f4636g = new h[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4636g[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
