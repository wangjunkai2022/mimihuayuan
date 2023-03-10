package com.comeback.data.ui.km2.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import g.a.f1.n;
import g.a.g0;
import g.a.w0;
/* loaded from: classes.dex */
public class Km2Video extends g0 implements Parcelable, w0 {
    public static final Parcelable.Creator<Km2Video> CREATOR = new a();
    public String cover;
    public float gold;
    public int height;
    public String id;
    public String is_vip;
    public String m3u8_url;
    public String nickname;
    public String normal_url;
    public int praise_num;
    public String thunder_download_tutorial_url;
    public String title;
    public int type;
    public int user_id;
    public String vip_url;
    public int width;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<Km2Video> {
        @Override // android.os.Parcelable.Creator
        public Km2Video createFromParcel(Parcel parcel) {
            return new Km2Video(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Km2Video[] newArray(int i2) {
            return new Km2Video[i2];
        }
    }

    public Km2Video() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCover() {
        return realmGet$cover();
    }

    public float getGold() {
        return realmGet$gold();
    }

    public int getHeight() {
        return realmGet$height();
    }

    public String getId() {
        return realmGet$id();
    }

    public String getIs_vip() {
        return realmGet$is_vip();
    }

    public String getM3u8_url() {
        return realmGet$m3u8_url();
    }

    public String getNickname() {
        return realmGet$nickname();
    }

    public String getNormal_url() {
        return realmGet$normal_url();
    }

    public int getPraise_num() {
        return realmGet$praise_num();
    }

    public String getThunder_download_tutorial_url() {
        return realmGet$thunder_download_tutorial_url();
    }

    public String getTitle() {
        return realmGet$title();
    }

    public int getType() {
        return realmGet$type();
    }

    public int getUser_id() {
        return realmGet$user_id();
    }

    public String getVip_url() {
        return realmGet$vip_url();
    }

    public int getWidth() {
        return realmGet$width();
    }

    public boolean isLandscape() {
        return getWidth() / getHeight() > 1 || getWidth() / getHeight() == 1;
    }

    public boolean needGold() {
        return realmGet$gold() != 0.0f;
    }

    public boolean needVip() {
        return !e.a("Bw==").equals(realmGet$is_vip());
    }

    @Override // g.a.w0
    public String realmGet$cover() {
        return this.cover;
    }

    @Override // g.a.w0
    public float realmGet$gold() {
        return this.gold;
    }

    @Override // g.a.w0
    public int realmGet$height() {
        return this.height;
    }

    @Override // g.a.w0
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.w0
    public String realmGet$is_vip() {
        return this.is_vip;
    }

    @Override // g.a.w0
    public String realmGet$m3u8_url() {
        return this.m3u8_url;
    }

    @Override // g.a.w0
    public String realmGet$nickname() {
        return this.nickname;
    }

    @Override // g.a.w0
    public String realmGet$normal_url() {
        return this.normal_url;
    }

    @Override // g.a.w0
    public int realmGet$praise_num() {
        return this.praise_num;
    }

    @Override // g.a.w0
    public String realmGet$thunder_download_tutorial_url() {
        return this.thunder_download_tutorial_url;
    }

    @Override // g.a.w0
    public String realmGet$title() {
        return this.title;
    }

    @Override // g.a.w0
    public int realmGet$type() {
        return this.type;
    }

    @Override // g.a.w0
    public int realmGet$user_id() {
        return this.user_id;
    }

    @Override // g.a.w0
    public String realmGet$vip_url() {
        return this.vip_url;
    }

    @Override // g.a.w0
    public int realmGet$width() {
        return this.width;
    }

    @Override // g.a.w0
    public void realmSet$cover(String str) {
        this.cover = str;
    }

    @Override // g.a.w0
    public void realmSet$gold(float f2) {
        this.gold = f2;
    }

    @Override // g.a.w0
    public void realmSet$height(int i2) {
        this.height = i2;
    }

    @Override // g.a.w0
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.w0
    public void realmSet$is_vip(String str) {
        this.is_vip = str;
    }

    @Override // g.a.w0
    public void realmSet$m3u8_url(String str) {
        this.m3u8_url = str;
    }

    @Override // g.a.w0
    public void realmSet$nickname(String str) {
        this.nickname = str;
    }

    @Override // g.a.w0
    public void realmSet$normal_url(String str) {
        this.normal_url = str;
    }

    @Override // g.a.w0
    public void realmSet$praise_num(int i2) {
        this.praise_num = i2;
    }

    @Override // g.a.w0
    public void realmSet$thunder_download_tutorial_url(String str) {
        this.thunder_download_tutorial_url = str;
    }

    @Override // g.a.w0
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // g.a.w0
    public void realmSet$type(int i2) {
        this.type = i2;
    }

    @Override // g.a.w0
    public void realmSet$user_id(int i2) {
        this.user_id = i2;
    }

    @Override // g.a.w0
    public void realmSet$vip_url(String str) {
        this.vip_url = str;
    }

    @Override // g.a.w0
    public void realmSet$width(int i2) {
        this.width = i2;
    }

    public void setCover(String str) {
        realmSet$cover(str);
    }

    public void setGold(float f2) {
        realmSet$gold(f2);
    }

    public void setHeight(int i2) {
        realmSet$height(i2);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setIs_vip(String str) {
        realmSet$is_vip(str);
    }

    public void setM3u8_url(String str) {
        realmSet$m3u8_url(str);
    }

    public void setNickname(String str) {
        realmSet$nickname(str);
    }

    public void setNormal_url(String str) {
        realmSet$normal_url(str);
    }

    public void setPraise_num(int i2) {
        realmSet$praise_num(i2);
    }

    public void setThunder_download_tutorial_url(String str) {
        realmSet$thunder_download_tutorial_url(str);
    }

    public void setTitle(String str) {
        realmSet$title(str);
    }

    public void setType(int i2) {
        realmSet$type(i2);
    }

    public void setUser_id(int i2) {
        realmSet$user_id(i2);
    }

    public void setVip_url(String str) {
        realmSet$vip_url(str);
    }

    public void setWidth(int i2) {
        realmSet$width(i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$id());
        parcel.writeString(realmGet$title());
        parcel.writeInt(realmGet$praise_num());
        parcel.writeInt(realmGet$width());
        parcel.writeInt(realmGet$height());
        parcel.writeString(realmGet$cover());
        parcel.writeString(realmGet$nickname());
        parcel.writeInt(realmGet$type());
        parcel.writeString(realmGet$normal_url());
        parcel.writeString(realmGet$m3u8_url());
        parcel.writeString(realmGet$vip_url());
        parcel.writeString(realmGet$thunder_download_tutorial_url());
        parcel.writeInt(realmGet$user_id());
        parcel.writeFloat(realmGet$gold());
        parcel.writeString(realmGet$is_vip());
    }

    public Km2Video(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$id(parcel.readString());
        realmSet$title(parcel.readString());
        realmSet$praise_num(parcel.readInt());
        realmSet$width(parcel.readInt());
        realmSet$height(parcel.readInt());
        realmSet$cover(parcel.readString());
        realmSet$nickname(parcel.readString());
        realmSet$type(parcel.readInt());
        realmSet$normal_url(parcel.readString());
        realmSet$m3u8_url(parcel.readString());
        realmSet$vip_url(parcel.readString());
        realmSet$thunder_download_tutorial_url(parcel.readString());
        realmSet$user_id(parcel.readInt());
        realmSet$gold(parcel.readFloat());
        realmSet$is_vip(parcel.readString());
    }
}
