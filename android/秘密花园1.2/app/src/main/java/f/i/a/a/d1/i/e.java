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
    public final String f4641c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4642d;

    /* compiled from: CommentFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public e[] newArray(int i2) {
            return new e[i2];
        }
    }

    public e(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.f4641c = str2;
        this.f4642d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return h0.b(this.f4641c, eVar.f4641c) && h0.b(this.b, eVar.b) && h0.b(this.f4642d, eVar.f4642d);
    }

    public int hashCode() {
        String str = this.b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4641c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4642d;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // f.i.a.a.d1.i.h
    public String toString() {
        return this.a + ": language=" + this.b + ", description=" + this.f4641c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4642d);
    }

    public e(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        h0.g(readString);
        this.b = readString;
        this.f4641c = parcel.readString();
        this.f4642d = parcel.readString();
    }
}
