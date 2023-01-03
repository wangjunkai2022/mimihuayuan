package f.i.a.a.e1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: StreamKey.java */
/* loaded from: classes.dex */
public final class c0 implements Comparable<c0>, Parcelable {
    public static final Parcelable.Creator<c0> CREATOR = new a();
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4628c;

    /* compiled from: StreamKey.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<c0> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public c0 createFromParcel(Parcel parcel) {
            return new c0(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public c0[] newArray(int i2) {
            return new c0[i2];
        }
    }

    public c0(int i2, int i3, int i4) {
        this.a = i2;
        this.b = i3;
        this.f4628c = i4;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public int compareTo(@NonNull c0 c0Var) {
        c0 c0Var2 = c0Var;
        int i2 = this.a - c0Var2.a;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.b - c0Var2.b;
        return i3 == 0 ? this.f4628c - c0Var2.f4628c : i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        if (this.a == c0Var.a && this.b == c0Var.b && this.f4628c == c0Var.f4628c) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.f4628c;
    }

    @Override // java.lang.Object
    public String toString() {
        return this.a + "." + this.b + "." + this.f4628c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f4628c);
    }

    public c0(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.f4628c = parcel.readInt();
    }
}
