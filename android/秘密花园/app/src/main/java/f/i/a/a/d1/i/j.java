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
    public final int f4574c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4575d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f4576e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f4577f;

    /* compiled from: MlltFrame.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<j> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public j[] newArray(int i2) {
            return new j[i2];
        }
    }

    public j(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.b = i2;
        this.f4574c = i3;
        this.f4575d = i4;
        this.f4576e = iArr;
        this.f4577f = iArr2;
    }

    @Override // f.i.a.a.d1.i.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        if (this.b == jVar.b && this.f4574c == jVar.f4574c && this.f4575d == jVar.f4575d && Arrays.equals(this.f4576e, jVar.f4576e) && Arrays.equals(this.f4577f, jVar.f4577f)) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        int hashCode = Arrays.hashCode(this.f4576e);
        return Arrays.hashCode(this.f4577f) + ((hashCode + ((((((527 + this.b) * 31) + this.f4574c) * 31) + this.f4575d) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f4574c);
        parcel.writeInt(this.f4575d);
        parcel.writeIntArray(this.f4576e);
        parcel.writeIntArray(this.f4577f);
    }

    public j(Parcel parcel) {
        super("MLLT");
        this.b = parcel.readInt();
        this.f4574c = parcel.readInt();
        this.f4575d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        h0.g(createIntArray);
        this.f4576e = createIntArray;
        this.f4577f = parcel.createIntArray();
    }
}
