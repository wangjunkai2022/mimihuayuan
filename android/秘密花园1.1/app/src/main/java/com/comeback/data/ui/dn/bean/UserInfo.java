package com.comeback.data.ui.dn.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class UserInfo extends j implements Parcelable {
    public static final Parcelable.Creator<UserInfo> CREATOR = new a();
    public String age;
    public String avatar;
    public String avatar_thumb;
    public String birthday;
    public String city;
    public String disable_comment;
    public String fans;
    public String follows;
    public String id;
    public int is_vip;
    public String likeVideos;
    public String praise;
    public String province;
    public String sex;
    public String signature;
    public String user_nicename;
    public String vip_expiretime;
    public String workVideos;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<UserInfo> {
        @Override // android.os.Parcelable.Creator
        public UserInfo createFromParcel(Parcel parcel) {
            return new UserInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public UserInfo[] newArray(int i2) {
            return new UserInfo[i2];
        }
    }

    public UserInfo(Parcel parcel) {
        this.id = parcel.readString();
        this.user_nicename = parcel.readString();
        this.avatar = parcel.readString();
        this.avatar_thumb = parcel.readString();
        this.sex = parcel.readString();
        this.signature = parcel.readString();
        this.province = parcel.readString();
        this.city = parcel.readString();
        this.birthday = parcel.readString();
        this.age = parcel.readString();
        this.disable_comment = parcel.readString();
        this.vip_expiretime = parcel.readString();
        this.praise = parcel.readString();
        this.fans = parcel.readString();
        this.follows = parcel.readString();
        this.workVideos = parcel.readString();
        this.likeVideos = parcel.readString();
        this.is_vip = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAge() {
        return this.age;
    }

    public String getAvatar() {
        return this.avatar.replace(e.a("GE0H"), e.a("GAY="));
    }

    public String getAvatar_thumb() {
        return this.avatar_thumb;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getCity() {
        return this.city;
    }

    public String getDisable_comment() {
        return this.disable_comment;
    }

    public String getFans() {
        return e.a("0NDqgNPu1o/p") + this.fans;
    }

    public String getFollows() {
        return this.follows;
    }

    public String getId() {
        return this.id;
    }

    public String getIdString() {
        return e.a("fiaM2PE=") + this.id;
    }

    public int getIs_vip() {
        return this.is_vip;
    }

    public String getLikeVideos() {
        return e.a("0vT/gsfRGQ==") + this.likeVideos;
    }

    public String getPraise() {
        return this.praise;
    }

    public String getProvince() {
        return this.province;
    }

    public String getSex() {
        return this.sex;
    }

    public String getSignature() {
        return this.signature;
    }

    public String getUser_nicename() {
        return e.a("dw==") + this.user_nicename;
    }

    public String getVip_expiretime() {
        return this.vip_expiretime;
    }

    public String getWorkVideos() {
        return e.a("09//gfjyGQ==") + this.workVideos;
    }

    public void setAge(String str) {
        this.age = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setAvatar_thumb(String str) {
        this.avatar_thumb = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setDisable_comment(String str) {
        this.disable_comment = str;
    }

    public void setFans(String str) {
        this.fans = str;
    }

    public void setFollows(String str) {
        this.follows = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIs_vip(int i2) {
        this.is_vip = i2;
    }

    public void setLikeVideos(String str) {
        this.likeVideos = str;
    }

    public void setPraise(String str) {
        this.praise = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUser_nicename(String str) {
        this.user_nicename = str;
    }

    public void setVip_expiretime(String str) {
        this.vip_expiretime = str;
    }

    public void setWorkVideos(String str) {
        this.workVideos = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.id);
        parcel.writeString(this.user_nicename);
        parcel.writeString(this.avatar);
        parcel.writeString(this.avatar_thumb);
        parcel.writeString(this.sex);
        parcel.writeString(this.signature);
        parcel.writeString(this.province);
        parcel.writeString(this.city);
        parcel.writeString(this.birthday);
        parcel.writeString(this.age);
        parcel.writeString(this.disable_comment);
        parcel.writeString(this.vip_expiretime);
        parcel.writeString(this.praise);
        parcel.writeString(this.fans);
        parcel.writeString(this.follows);
        parcel.writeString(this.workVideos);
        parcel.writeString(this.likeVideos);
        parcel.writeInt(this.is_vip);
    }
}
