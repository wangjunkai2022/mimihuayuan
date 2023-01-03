package f.i.a.a.h1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import java.util.Arrays;

/* compiled from: TrackGroup.java */
/* loaded from: classes.dex */
public final class o0 implements Parcelable {
    public static final Parcelable.Creator<o0> CREATOR = new a();
    public final int a;
    public final b0[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f4835c;

    /* compiled from: TrackGroup.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<o0> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public o0 createFromParcel(Parcel parcel) {
            return new o0(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public o0[] newArray(int i2) {
            return new o0[i2];
        }
    }

    public o0(b0... b0VarArr) {
        h.v(b0VarArr.length > 0);
        this.b = b0VarArr;
        this.a = b0VarArr.length;
    }

    public int a(b0 b0Var) {
        int i2 = 0;
        while (true) {
            b0[] b0VarArr = this.b;
            if (i2 >= b0VarArr.length) {
                return -1;
            }
            if (b0Var == b0VarArr[i2]) {
                return i2;
            }
            i2++;
        }
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
        if (obj == null || o0.class != obj.getClass()) {
            return false;
        }
        o0 o0Var = (o0) obj;
        if (this.a != o0Var.a || !Arrays.equals(this.b, o0Var.b)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        if (this.f4835c == 0) {
            this.f4835c = 527 + Arrays.hashCode(this.b);
        }
        return this.f4835c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        for (int i3 = 0; i3 < this.a; i3++) {
            parcel.writeParcelable(this.b[i3], 0);
        }
    }

    public o0(Parcel parcel) {
        int readInt = parcel.readInt();
        this.a = readInt;
        this.b = new b0[readInt];
        for (int i2 = 0; i2 < this.a; i2++) {
            this.b[i2] = (b0) parcel.readParcelable(b0.class.getClassLoader());
        }
    }
}
