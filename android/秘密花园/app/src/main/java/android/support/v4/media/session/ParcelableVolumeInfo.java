package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f18c;

    /* renamed from: d  reason: collision with root package name */
    public int f19d;

    /* renamed from: e  reason: collision with root package name */
    public int f20e;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo[] newArray(int i2) {
            return new ParcelableVolumeInfo[i2];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.a = parcel.readInt();
        this.f18c = parcel.readInt();
        this.f19d = parcel.readInt();
        this.f20e = parcel.readInt();
        this.b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.f18c);
        parcel.writeInt(this.f19d);
        parcel.writeInt(this.f20e);
        parcel.writeInt(this.b);
    }
}
