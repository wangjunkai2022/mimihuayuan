package f.i.a.a.d1.i;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: MlltFrame.java */
/* loaded from: classes.dex */
public final class j extends h {
    public static final Parcelable.Creator<j> CREATOR = new a();
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4649c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4650d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f4651e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f4652f;

    /* compiled from: MlltFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public j[] newArray(int i2) {
            return new j[i2];
        }
    }

    public j(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.b = i2;
        this.f4649c = i3;
        this.f4650d = i4;
        this.f4651e = iArr;
        this.f4652f = iArr2;
    }

    @Override // f.i.a.a.d1.i.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.b == jVar.b && this.f4649c == jVar.f4649c && this.f4650d == jVar.f4650d && Arrays.equals(this.f4651e, jVar.f4651e) && Arrays.equals(this.f4652f, jVar.f4652f);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.f4651e);
        return Arrays.hashCode(this.f4652f) + ((hashCode + ((((((527 + this.b) * 31) + this.f4649c) * 31) + this.f4650d) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f4649c);
        parcel.writeInt(this.f4650d);
        parcel.writeIntArray(this.f4651e);
        parcel.writeIntArray(this.f4652f);
    }

    public j(Parcel parcel) {
        super("MLLT");
        this.b = parcel.readInt();
        this.f4649c = parcel.readInt();
        this.f4650d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        h0.g(createIntArray);
        this.f4651e = createIntArray;
        this.f4652f = parcel.createIntArray();
    }
}
