package f.i.a.a.h1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: TrackGroupArray.java */
/* loaded from: classes.dex */
public final class p0 implements Parcelable {
    public final int a;
    public final o0[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f4912c;

    /* renamed from: d  reason: collision with root package name */
    public static final p0 f4911d = new p0(new o0[0]);
    public static final Parcelable.Creator<p0> CREATOR = new a();

    /* compiled from: TrackGroupArray.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<p0> {
        @Override // android.os.Parcelable.Creator
        public p0 createFromParcel(Parcel parcel) {
            return new p0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public p0[] newArray(int i2) {
            return new p0[i2];
        }
    }

    public p0(o0... o0VarArr) {
        this.b = o0VarArr;
        this.a = o0VarArr.length;
    }

    public int a(o0 o0Var) {
        for (int i2 = 0; i2 < this.a; i2++) {
            if (this.b[i2] == o0Var) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p0.class != obj.getClass()) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return this.a == p0Var.a && Arrays.equals(this.b, p0Var.b);
    }

    public int hashCode() {
        if (this.f4912c == 0) {
            this.f4912c = Arrays.hashCode(this.b);
        }
        return this.f4912c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        for (int i3 = 0; i3 < this.a; i3++) {
            parcel.writeParcelable(this.b[i3], 0);
        }
    }

    public p0(Parcel parcel) {
        int readInt = parcel.readInt();
        this.a = readInt;
        this.b = new o0[readInt];
        for (int i2 = 0; i2 < this.a; i2++) {
            this.b[i2] = (o0) parcel.readParcelable(o0.class.getClassLoader());
        }
    }
}
