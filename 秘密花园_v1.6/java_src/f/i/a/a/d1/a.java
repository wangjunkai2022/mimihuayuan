package f.i.a.a.d1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.Arrays;
import java.util.List;
/* compiled from: Metadata.java */
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0067a();
    public final b[] a;

    /* compiled from: Metadata.java */
    /* renamed from: f.i.a.a.d1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0067a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i2) {
            return new a[i2];
        }
    }

    /* compiled from: Metadata.java */
    /* loaded from: classes.dex */
    public interface b extends Parcelable {
    }

    public a(b... bVarArr) {
        this.a = bVarArr == null ? new b[0] : bVarArr;
    }

    public a a(b... bVarArr) {
        b[] bVarArr2 = this.a;
        b[] bVarArr3 = (b[]) Arrays.copyOf(bVarArr2, bVarArr2.length + bVarArr.length);
        System.arraycopy(bVarArr, 0, bVarArr3, this.a.length, bVarArr.length);
        h0.h(bVarArr3);
        return new a(bVarArr3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.a, ((a) obj).a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a.length);
        for (b bVar : this.a) {
            parcel.writeParcelable(bVar, 0);
        }
    }

    public a(List<? extends b> list) {
        b[] bVarArr = new b[list.size()];
        this.a = bVarArr;
        list.toArray(bVarArr);
    }

    public a(Parcel parcel) {
        this.a = new b[parcel.readInt()];
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.a;
            if (i2 >= bVarArr.length) {
                return;
            }
            bVarArr[i2] = (b) parcel.readParcelable(b.class.getClassLoader());
            i2++;
        }
    }
}
