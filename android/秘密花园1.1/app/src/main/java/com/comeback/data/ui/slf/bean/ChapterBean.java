package com.comeback.data.ui.slf.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ChapterBean extends j implements Parcelable {
    public static final Parcelable.Creator<ChapterBean> CREATOR = new a();
    public String description;
    public String hasBuy;
    public int id;
    public List<String> images;
    public String img;
    public String label;
    public String limitFree;
    public String name;
    public int point;
    public String textUrl;
    public String updateTime;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<ChapterBean> {
        @Override // android.os.Parcelable.Creator
        public ChapterBean createFromParcel(Parcel parcel) {
            return new ChapterBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ChapterBean[] newArray(int i2) {
            return new ChapterBean[i2];
        }
    }

    public ChapterBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDescription() {
        return this.description;
    }

    public String getHasBuy() {
        return this.hasBuy;
    }

    public int getId() {
        return this.id;
    }

    public List<String> getImages() {
        return this.images;
    }

    public String getImg() {
        return this.img;
    }

    public String getLabel() {
        if (TextUtils.isEmpty(this.label)) {
            return this.name;
        }
        return this.label;
    }

    public String getLimitFree() {
        return this.limitFree;
    }

    public String getName() {
        return this.name;
    }

    public int getPoint() {
        return this.point;
    }

    public String getTextUrl() {
        return this.textUrl;
    }

    public String getUpdateTime() {
        return this.updateTime;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setHasBuy(String str) {
        this.hasBuy = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setImages(List<String> list) {
        this.images = list;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLimitFree(String str) {
        this.limitFree = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPoint(int i2) {
        this.point = i2;
    }

    public void setTextUrl(String str) {
        this.textUrl = str;
    }

    public void setUpdateTime(String str) {
        this.updateTime = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.label);
        parcel.writeInt(this.point);
        parcel.writeString(this.hasBuy);
        parcel.writeString(this.img);
        parcel.writeString(this.limitFree);
        parcel.writeStringList(this.images);
        parcel.writeString(this.description);
        parcel.writeString(this.updateTime);
    }

    public ChapterBean(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        this.label = parcel.readString();
        this.point = parcel.readInt();
        this.hasBuy = parcel.readString();
        this.img = parcel.readString();
        this.limitFree = parcel.readString();
        this.images = parcel.createStringArrayList();
        this.description = parcel.readString();
        this.updateTime = parcel.readString();
    }
}
