package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();
    public final int a;
    public final float b;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<RatingCompat> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public RatingCompat[] newArray(int i2) {
            return new RatingCompat[i2];
        }
    }

    public RatingCompat(int i2, float f2) {
        this.a = i2;
        this.b = f2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.a;
    }

    @Override // java.lang.Object
    public String toString() {
        String str;
        StringBuilder o = f.b.a.a.a.o("Rating:style=");
        o.append(this.a);
        o.append(" rating=");
        float f2 = this.b;
        if (f2 < 0.0f) {
            str = "unrated";
        } else {
            str = String.valueOf(f2);
        }
        o.append(str);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeFloat(this.b);
    }
}
