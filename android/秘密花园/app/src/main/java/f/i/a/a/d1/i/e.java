package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: CommentFrame.java */
/* loaded from: classes.dex */
public final class e extends h {
    public static final Parcelable.Creator<e> CREATOR = new a();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4566c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4567d;

    /* compiled from: CommentFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<e> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public e[] newArray(int i2) {
            return new e[i2];
        }
    }

    public e(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.f4566c = str2;
        this.f4567d = str3;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (!h0.b(this.f4566c, eVar.f4566c) || !h0.b(this.b, eVar.b) || !h0.b(this.f4567d, eVar.f4567d)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.b;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4566c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4567d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    @Override // f.i.a.a.d1.i.h, java.lang.Object
    public String toString() {
        return this.a + ": language=" + this.b + ", description=" + this.f4566c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4567d);
    }

    public e(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4566c = parcel.readString();
        this.f4567d = parcel.readString();
    }
}
