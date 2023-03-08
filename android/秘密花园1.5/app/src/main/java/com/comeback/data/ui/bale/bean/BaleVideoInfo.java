package com.comeback.data.ui.bale.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.comeback.data.ui.cm.bean.CoverBase64;
import f.e.a.e;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class BaleVideoInfo extends k implements Parcelable {
    public static final Parcelable.Creator<BaleVideoInfo> CREATOR = new a();
    public String artist;
    public int barrage;
    public String code;
    public int comments;
    public CoverBase64 coverbase64;
    public String created_at;
    public String desc;
    public int downloads;
    public int id;
    public String image;
    public boolean isAd;
    public int is_recommend;
    public Object operator;
    public int sort;
    public int status;
    public int sync_status;
    public String tag;
    public String title;
    public int ts_time;
    public String updated_at;
    public String url;
    public int views;
    public int vip_only;
    public int zans;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<BaleVideoInfo> {
        @Override // android.os.Parcelable.Creator
        public BaleVideoInfo createFromParcel(Parcel parcel) {
            return new BaleVideoInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BaleVideoInfo[] newArray(int i2) {
            return new BaleVideoInfo[i2];
        }
    }

    public BaleVideoInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getArtist() {
        return this.artist;
    }

    public int getBarrage() {
        return this.barrage;
    }

    public String getCode() {
        return this.code;
    }

    public int getComments() {
        return this.comments;
    }

    public CoverBase64 getCoverBase64() {
        return this.coverbase64;
    }

    public String getCreated_at() {
        return this.created_at;
    }

    public String getDesc() {
        return this.desc;
    }

    public int getDownloads() {
        return this.downloads;
    }

    public int getId() {
        return this.id;
    }

    public String getImage() {
        return this.image;
    }

    public int getIs_recommend() {
        return this.is_recommend;
    }

    public Object getOperator() {
        return this.operator;
    }

    public int getSort() {
        return this.sort;
    }

    public int getStatus() {
        return this.status;
    }

    public int getSync_status() {
        return this.sync_status;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTitle() {
        return this.title;
    }

    public int getTs_time() {
        return this.ts_time;
    }

    public String getUpdated_at() {
        return this.updated_at;
    }

    public String getUrl() {
        return this.url;
    }

    public String getViewString() {
        return (this.views / 10000) + e.a("09rk");
    }

    public int getViews() {
        return this.views;
    }

    public int getVip_only() {
        return this.vip_only;
    }

    public int getZans() {
        return this.zans;
    }

    public boolean isAd() {
        return this.isAd;
    }

    public void setAd(boolean z) {
        this.isAd = z;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public void setBarrage(int i2) {
        this.barrage = i2;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setComments(int i2) {
        this.comments = i2;
    }

    public void setCoverBase64(CoverBase64 coverBase64) {
        this.coverbase64 = coverBase64;
    }

    public void setCreated_at(String str) {
        this.created_at = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setDownloads(int i2) {
        this.downloads = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public void setIs_recommend(int i2) {
        this.is_recommend = i2;
    }

    public void setOperator(Object obj) {
        this.operator = obj;
    }

    public void setSort(int i2) {
        this.sort = i2;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setSync_status(int i2) {
        this.sync_status = i2;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTs_time(int i2) {
        this.ts_time = i2;
    }

    public void setUpdated_at(String str) {
        this.updated_at = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setViews(int i2) {
        this.views = i2;
    }

    public void setVip_only(int i2) {
        this.vip_only = i2;
    }

    public void setZans(int i2) {
        this.zans = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.id);
        parcel.writeString(this.title);
        parcel.writeString(this.artist);
        parcel.writeString(this.code);
        parcel.writeString(this.url);
        parcel.writeString(this.desc);
        parcel.writeString(this.image);
        parcel.writeInt(this.sort);
        parcel.writeString(this.tag);
        parcel.writeInt(this.views);
        parcel.writeInt(this.zans);
        parcel.writeInt(this.downloads);
        parcel.writeInt(this.comments);
        parcel.writeInt(this.barrage);
        parcel.writeInt(this.vip_only);
        parcel.writeInt(this.is_recommend);
        parcel.writeString(this.created_at);
        parcel.writeString(this.updated_at);
        parcel.writeInt(this.status);
        parcel.writeInt(this.sync_status);
        parcel.writeInt(this.ts_time);
        parcel.writeByte(this.isAd ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.coverbase64, i2);
    }

    public BaleVideoInfo(Parcel parcel) {
        this.id = parcel.readInt();
        this.title = parcel.readString();
        this.artist = parcel.readString();
        this.code = parcel.readString();
        this.url = parcel.readString();
        this.desc = parcel.readString();
        this.image = parcel.readString();
        this.sort = parcel.readInt();
        this.tag = parcel.readString();
        this.views = parcel.readInt();
        this.zans = parcel.readInt();
        this.downloads = parcel.readInt();
        this.comments = parcel.readInt();
        this.barrage = parcel.readInt();
        this.vip_only = parcel.readInt();
        this.is_recommend = parcel.readInt();
        this.created_at = parcel.readString();
        this.updated_at = parcel.readString();
        this.status = parcel.readInt();
        this.sync_status = parcel.readInt();
        this.ts_time = parcel.readInt();
        this.isAd = parcel.readByte() != 0;
    }
}
