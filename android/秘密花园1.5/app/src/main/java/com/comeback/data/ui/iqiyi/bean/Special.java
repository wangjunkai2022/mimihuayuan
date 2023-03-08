package com.comeback.data.ui.iqiyi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class Special extends k implements Parcelable {
    public static final Parcelable.Creator<Special> CREATOR = new a();
    public String description;
    public String id;
    public String img;
    public String isRecommend;
    public String name;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<Special> {
        @Override // android.os.Parcelable.Creator
        public Special createFromParcel(Parcel parcel) {
            return new Special(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Special[] newArray(int i2) {
            return new Special[i2];
        }
    }

    public Special() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDescription() {
        return this.description;
    }

    public String getId() {
        return this.id;
    }

    public String getImg() {
        return this.img;
    }

    public String getIsRecommend() {
        return this.isRecommend;
    }

    public String getName() {
        return this.name;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsRecommend(String str) {
        this.isRecommend = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.description);
        parcel.writeString(this.id);
        parcel.writeString(this.img);
        parcel.writeString(this.isRecommend);
        parcel.writeString(this.name);
    }

    public Special(Parcel parcel) {
        this.description = parcel.readString();
        this.id = parcel.readString();
        this.img = parcel.readString();
        this.isRecommend = parcel.readString();
        this.name = parcel.readString();
    }
}
