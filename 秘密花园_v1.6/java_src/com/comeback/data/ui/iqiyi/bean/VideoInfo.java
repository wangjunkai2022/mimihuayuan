package com.comeback.data.ui.iqiyi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class VideoInfo extends k implements Parcelable {
    public static final Parcelable.Creator<VideoInfo> CREATOR = new a();
    public String adType;
    public String comment;
    public String headico;
    public String id;
    public String img;
    public String isAd;
    public String love;
    public String name;
    public String nickname;
    public String playTips;
    public String tagId;
    public String tagImg;
    public String tagName;
    public String userId;
    public String videoLink;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<VideoInfo> {
        @Override // android.os.Parcelable.Creator
        public VideoInfo createFromParcel(Parcel parcel) {
            return new VideoInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VideoInfo[] newArray(int i2) {
            return new VideoInfo[i2];
        }
    }

    public VideoInfo(Parcel parcel) {
        this.adType = parcel.readString();
        this.comment = parcel.readString();
        this.headico = parcel.readString();
        this.id = parcel.readString();
        this.img = parcel.readString();
        this.love = parcel.readString();
        this.name = parcel.readString();
        this.nickname = parcel.readString();
        this.isAd = parcel.readString();
        this.playTips = parcel.readString();
        this.tagId = parcel.readString();
        this.tagImg = parcel.readString();
        this.tagName = parcel.readString();
        this.userId = parcel.readString();
        this.videoLink = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdType() {
        return this.adType;
    }

    public String getComment() {
        return this.comment;
    }

    public String getHeadico() {
        return this.headico;
    }

    public String getId() {
        return this.id;
    }

    public String getImg() {
        return this.img;
    }

    public String getLove() {
        return this.love;
    }

    public String getName() {
        return this.name;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPlayTips() {
        return this.playTips;
    }

    public String getTagId() {
        return this.tagId;
    }

    public String getTagImg() {
        return this.tagImg;
    }

    public String getTagName() {
        return this.tagName;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getVideoLink() {
        return this.videoLink;
    }

    public String getVideoNone() {
        if (TextUtils.isEmpty(this.videoLink)) {
            return e.a("XxYXFFFcFkQEERoFGQMHHhkBDAk=");
        }
        return this.videoLink;
    }

    public boolean isAd() {
        return e.a("Bg==").equals(this.adType);
    }

    public void setAdType(String str) {
        this.adType = str;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setHeadico(String str) {
        this.headico = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLove(String str) {
        this.love = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPlayTips(String str) {
        this.playTips = str;
    }

    public void setTagId(String str) {
        this.tagId = str;
    }

    public void setTagImg(String str) {
        this.tagImg = str;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setVideoLink(String str) {
        this.videoLink = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.adType);
        parcel.writeString(this.comment);
        parcel.writeString(this.headico);
        parcel.writeString(this.id);
        parcel.writeString(this.img);
        parcel.writeString(this.love);
        parcel.writeString(this.name);
        parcel.writeString(this.nickname);
        parcel.writeString(this.isAd);
        parcel.writeString(this.playTips);
        parcel.writeString(this.tagId);
        parcel.writeString(this.tagImg);
        parcel.writeString(this.tagName);
        parcel.writeString(this.userId);
        parcel.writeString(this.videoLink);
    }
}
