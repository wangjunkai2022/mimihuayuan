package com.comeback.data.ui.fengliu.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.comeback.data.ui.fengliu.FengliuActivity;
import f.e.a.e;
import f.e.a.f.j;
import f.e.a.k.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RecordsEntity extends j implements Parcelable {
    public static final Parcelable.Creator<RecordsEntity> CREATOR = new a();
    public String address;
    public boolean anonymous;
    public int cityCode;
    public String cityCodeReadable;
    public String consumeAllNight;
    public String consumeLv;
    public String coverPicture;
    public long createdAt;
    public String desc;
    public String environment;
    public String girlAge;
    public String girlBeauty;
    public String girlNum;
    public String guestView;
    public int id;
    public String ip;
    public boolean isExpired;
    public String isFavorite;
    public boolean isRecommend;
    public String phone;
    public String picture;
    public long publishedAt;
    public String publisher;
    public String qq;
    public int score;
    public String serveList;
    public String serveLv;
    public int source;
    public int status;
    public String tags;
    public String telegram;
    public String title;
    public int type;
    public int userId;
    public String userName;
    public String userReputation;
    public String userStatus;
    public String userView;
    public int viewCount;
    public String vipProfileStatus;
    public String vipView;
    public String wechat;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<RecordsEntity> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public RecordsEntity createFromParcel(Parcel parcel) {
            return new RecordsEntity(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public RecordsEntity[] newArray(int i2) {
            return new RecordsEntity[i2];
        }
    }

    public RecordsEntity(Parcel parcel) {
        boolean z = true;
        this.isRecommend = parcel.readByte() != 0;
        this.consumeLv = parcel.readString();
        this.coverPicture = parcel.readString();
        this.userStatus = parcel.readString();
        this.girlAge = parcel.readString();
        this.cityCode = parcel.readInt();
        this.source = parcel.readInt();
        this.vipProfileStatus = parcel.readString();
        this.type = parcel.readInt();
        this.title = parcel.readString();
        this.girlNum = parcel.readString();
        this.userReputation = parcel.readString();
        this.guestView = parcel.readString();
        this.userView = parcel.readString();
        this.score = parcel.readInt();
        this.createdAt = parcel.readLong();
        this.girlBeauty = parcel.readString();
        this.id = parcel.readInt();
        this.viewCount = parcel.readInt();
        this.qq = parcel.readString();
        this.address = parcel.readString();
        this.publishedAt = parcel.readLong();
        this.serveList = parcel.readString();
        this.ip = parcel.readString();
        this.wechat = parcel.readString();
        this.telegram = parcel.readString();
        this.userName = parcel.readString();
        this.userId = parcel.readInt();
        this.consumeAllNight = parcel.readString();
        this.picture = parcel.readString();
        this.tags = parcel.readString();
        this.environment = parcel.readString();
        this.phone = parcel.readString();
        this.anonymous = parcel.readByte() != 0;
        this.publisher = parcel.readString();
        this.serveLv = parcel.readString();
        this.isExpired = parcel.readByte() == 0 ? false : z;
        this.vipView = parcel.readString();
        this.status = parcel.readInt();
        this.desc = parcel.readString();
        this.isFavorite = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public int getCityCode() {
        return this.cityCode;
    }

    public String getCityCodeReadable() {
        if (TextUtils.isEmpty(this.cityCodeReadable)) {
            this.cityCodeReadable = FengliuActivity.f654k.get(String.valueOf(this.cityCode));
        }
        return this.cityCodeReadable;
    }

    public String getConsumeAllNight() {
        return this.consumeAllNight;
    }

    public String getConsumeLv() {
        return this.consumeLv;
    }

    public String getCoverPicture() {
        return this.coverPicture;
    }

    public String getCover_picture() {
        if (TextUtils.isEmpty(this.coverPicture)) {
            return this.coverPicture;
        }
        if (this.coverPicture.startsWith(e.a("XxYXFA=="))) {
            return this.coverPicture;
        }
        return e.a("XxYXFBhJFhwAVBoWCgMODBkaGh5EGldVHElEDhseFhlSTQ==") + this.coverPicture;
    }

    public long getCreatedAt() {
        return this.createdAt;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getEnvironment() {
        return this.environment;
    }

    public String getGirlAge() {
        return this.girlAge;
    }

    public String getGirlBeauty() {
        return this.girlBeauty;
    }

    public String getGirlNum() {
        return this.girlNum;
    }

    public String getGuestView() {
        return this.guestView;
    }

    public int getId() {
        return this.id;
    }

    public String getIp() {
        return this.ip;
    }

    public String getIsFavorite() {
        return this.isFavorite;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPicture() {
        return this.picture;
    }

    public List<String> getPictureList() {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.picture)) {
            String[] split = this.picture.split(e.a("Gw=="));
            int length = split.length;
            for (int i2 = 0; i2 < length; i2++) {
                String str = split[i2];
                if (str.startsWith(e.a("XxYXFA==")) || !str.startsWith(e.a("GE0="))) {
                    if (str.contains(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"))) {
                        str = str.replace(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"), b.n0);
                    }
                    if (!str.startsWith(e.a("XxYXFA=="))) {
                        str = e.a("XxYXFBhJFhwAVBoWCgMODBkaGh5EGldVHElEDhseFhlSTQ==") + str;
                    }
                    arrayList.add(str);
                } else {
                    arrayList.add(e.a("XxYXFFE=") + str);
                }
            }
        }
        return arrayList;
    }

    public long getPublishedAt() {
        return this.publishedAt;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public String getQq() {
        return this.qq;
    }

    public int getScore() {
        return this.score;
    }

    public String getServeList() {
        return this.serveList;
    }

    public String getServeLv() {
        return this.serveLv;
    }

    public int getSource() {
        return this.source;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTags() {
        return this.tags;
    }

    public String getTelegram() {
        return this.telegram;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getUserReputation() {
        return this.userReputation;
    }

    public String getUserStatus() {
        return this.userStatus;
    }

    public String getUserView() {
        return this.userView;
    }

    public int getViewCount() {
        return this.viewCount;
    }

    public String getVipProfileStatus() {
        return this.vipProfileStatus;
    }

    public String getVipView() {
        return this.vipView;
    }

    public String getWechat() {
        return this.wechat;
    }

    public boolean isAnonymous() {
        return this.anonymous;
    }

    public boolean isIsExpired() {
        return this.isExpired;
    }

    public boolean isIsRecommend() {
        return this.isRecommend;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAnonymous(boolean z) {
        this.anonymous = z;
    }

    public void setCityCode(int i2) {
        this.cityCode = i2;
    }

    public void setConsumeAllNight(String str) {
        this.consumeAllNight = str;
    }

    public void setConsumeLv(String str) {
        this.consumeLv = str;
    }

    public void setCoverPicture(String str) {
        this.coverPicture = str;
    }

    public void setCreatedAt(long j2) {
        this.createdAt = j2;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setEnvironment(String str) {
        this.environment = str;
    }

    public void setGirlAge(String str) {
        this.girlAge = str;
    }

    public void setGirlBeauty(String str) {
        this.girlBeauty = str;
    }

    public void setGirlNum(String str) {
        this.girlNum = str;
    }

    public void setGuestView(String str) {
        this.guestView = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setIsExpired(boolean z) {
        this.isExpired = z;
    }

    public void setIsFavorite(String str) {
        this.isFavorite = str;
    }

    public void setIsRecommend(boolean z) {
        this.isRecommend = z;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setPicture(String str) {
        this.picture = str;
    }

    public void setPublishedAt(long j2) {
        this.publishedAt = j2;
    }

    public void setPublisher(String str) {
        this.publisher = str;
    }

    public void setQq(String str) {
        this.qq = str;
    }

    public void setScore(int i2) {
        this.score = i2;
    }

    public void setServeList(String str) {
        this.serveList = str;
    }

    public void setServeLv(String str) {
        this.serveLv = str;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public void setTelegram(String str) {
        this.telegram = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUserId(int i2) {
        this.userId = i2;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setUserReputation(String str) {
        this.userReputation = str;
    }

    public void setUserStatus(String str) {
        this.userStatus = str;
    }

    public void setUserView(String str) {
        this.userView = str;
    }

    public void setViewCount(int i2) {
        this.viewCount = i2;
    }

    public void setVipProfileStatus(String str) {
        this.vipProfileStatus = str;
    }

    public void setVipView(String str) {
        this.vipView = str;
    }

    public void setWechat(String str) {
        this.wechat = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.isRecommend ? (byte) 1 : 0);
        parcel.writeString(this.consumeLv);
        parcel.writeString(this.coverPicture);
        parcel.writeString(this.userStatus);
        parcel.writeString(this.girlAge);
        parcel.writeInt(this.cityCode);
        parcel.writeInt(this.source);
        parcel.writeString(this.vipProfileStatus);
        parcel.writeInt(this.type);
        parcel.writeString(this.title);
        parcel.writeString(this.girlNum);
        parcel.writeString(this.userReputation);
        parcel.writeString(this.guestView);
        parcel.writeString(this.userView);
        parcel.writeInt(this.score);
        parcel.writeLong(this.createdAt);
        parcel.writeString(this.girlBeauty);
        parcel.writeInt(this.id);
        parcel.writeInt(this.viewCount);
        parcel.writeString(this.qq);
        parcel.writeString(this.address);
        parcel.writeLong(this.publishedAt);
        parcel.writeString(this.serveList);
        parcel.writeString(this.ip);
        parcel.writeString(this.wechat);
        parcel.writeString(this.telegram);
        parcel.writeString(this.userName);
        parcel.writeInt(this.userId);
        parcel.writeString(this.consumeAllNight);
        parcel.writeString(this.picture);
        parcel.writeString(this.tags);
        parcel.writeString(this.environment);
        parcel.writeString(this.phone);
        parcel.writeByte(this.anonymous ? (byte) 1 : 0);
        parcel.writeString(this.publisher);
        parcel.writeString(this.serveLv);
        parcel.writeByte(this.isExpired ? (byte) 1 : 0);
        parcel.writeString(this.vipView);
        parcel.writeInt(this.status);
        parcel.writeString(this.desc);
        parcel.writeString(this.isFavorite);
    }
}
