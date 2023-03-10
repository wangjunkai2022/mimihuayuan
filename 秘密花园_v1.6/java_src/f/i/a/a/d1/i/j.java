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
    public final int f4658c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4659d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f4660e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f4661f;

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
        this.f4658c = i3;
        this.f4659d = i4;
        this.f4660e = iArr;
        this.f4661f = iArr2;
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
        return this.b == jVar.b && this.f4658c == jVar.f4658c && this.f4659d == jVar.f4659d && Arrays.equals(this.f4660e, jVar.f4660e) && Arrays.equals(this.f4661f, jVar.f4661f);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.f4660e);
        return Arrays.hashCode(this.f4661f) + ((hashCode + ((((((527 + this.b) * 31) + this.f4658c) * 31) + this.f4659d) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f4658c);
        parcel.writeInt(this.f4659d);
        parcel.writeIntArray(this.f4660e);
        parcel.writeIntArray(this.f4661f);
    }

    public j(Parcel parcel) {
        super("MLLT");
        this.b = parcel.readInt();
        this.f4658c = parcel.readInt();
        this.f4659d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        h0.g(createIntArray);
        this.f4660e = createIntArray;
        this.f4661f = parcel.createIntArray();
    }
}
