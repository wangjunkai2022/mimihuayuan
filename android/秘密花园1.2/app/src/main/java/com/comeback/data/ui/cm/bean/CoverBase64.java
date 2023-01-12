package com.comeback.data.ui.cm.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class CoverBase64 extends k implements Parcelable {
    public static final Parcelable.Creator<CoverBase64> CREATOR = new a();
    public String type;
    public String url;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<CoverBase64> {
        @Override // android.os.Parcelable.Creator
        public CoverBase64 createFromParcel(Parcel parcel) {
            return new CoverBase64(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CoverBase64[] newArray(int i2) {
            return new CoverBase64[i2];
        }
    }

    public CoverBase64(Parcel parcel) {
        this.type = parcel.readString();
        this.url = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.type);
        parcel.writeString(this.url);
    }
}
