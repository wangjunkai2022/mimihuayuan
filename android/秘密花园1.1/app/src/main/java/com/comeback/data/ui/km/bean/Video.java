package com.comeback.data.ui.km.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import g.a.f1.n;
import g.a.g0;
import g.a.y0;

/* loaded from: classes.dex */
public class Video extends g0 implements Parcelable, y0 {
    public int is_cat_ads;
    public String mu_avatar;
    public String mu_id;
    public String mu_name;
    public String mv_comment;
    public String mv_created;
    public String mv_id;
    public String mv_img_url;
    public String mv_like;
    public int mv_play_height;
    public String mv_play_url;
    public int mv_play_width;
    public String mv_title;
    public static String targetUrl = e.a("XxYXFBhJFhwFD1ACF0QIBgASVEoTCkM=");
    public static String targetUrlDetail = e.a("0v7Tgfbz3YvzRkIOCEpDS18WFxRRXBZFGhYaXk8BFgpeDwILRRBWXkleBF9BYIb3h4f+5I/JtdXqyN3n4koLH0MSEF5EXFJeXV8DDA0LCgZWDU0HBB4zOXkFUAmd9tOOquJDREsbTUcDXBtIDgMTRVQGBQABGRdQHAs+bRsODVkXQgsQHwMDHFwQXQMdBU0IUwQHDgFdWlwe");
    public static final Parcelable.Creator<Video> CREATOR = new a();

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<Video> {
        @Override // android.os.Parcelable.Creator
        public Video createFromParcel(Parcel parcel) {
            return new Video(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Video[] newArray(int i2) {
            return new Video[i2];
        }
    }

    public Video() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getMuName() {
        return e.a("0u3ygdPw0bP2iYj9") + realmGet$mu_name();
    }

    public String getMu_avatar() {
        return realmGet$mu_avatar();
    }

    public String getMu_id() {
        return realmGet$mu_id();
    }

    public String getMu_name() {
        return realmGet$mu_name();
    }

    public String getMv_comment() {
        return realmGet$mv_comment();
    }

    public String getMv_created() {
        return realmGet$mv_created();
    }

    public String getMv_id() {
        return realmGet$mv_id();
    }

    public String getMv_img_url() {
        return realmGet$mv_img_url();
    }

    public String getMv_like() {
        return realmGet$mv_like();
    }

    public int getMv_play_height() {
        return realmGet$mv_play_height();
    }

    public String getMv_play_url() {
        if (realmGet$mv_play_url().contains(e.a("A1VNVl9HFwpLSAVQQVBbWw9b"))) {
            return realmGet$mv_play_url().replace(e.a("XxYXFFFcFgdESAZTTERaUxlTVF1RSwkLSg=="), e.a("XxYXFBhJFhwFEBpTTF9WGF9MAAsG"));
        }
        return realmGet$mv_play_url().replace(e.a("XxYXFFFcFgJCXxpVQERRWwNMUFI="), targetUrl);
    }

    public int getMv_play_width() {
        return realmGet$mv_play_width();
    }

    public String getMv_title() {
        return realmGet$mv_title();
    }

    public boolean isAd() {
        return realmGet$is_cat_ads() == 1;
    }

    public boolean isLandscape() {
        return getMv_play_width() / getMv_play_height() > 1 || getMv_play_width() / getMv_play_height() == 1;
    }

    @Override // g.a.y0
    public int realmGet$is_cat_ads() {
        return this.is_cat_ads;
    }

    @Override // g.a.y0
    public String realmGet$mu_avatar() {
        return this.mu_avatar;
    }

    @Override // g.a.y0
    public String realmGet$mu_id() {
        return this.mu_id;
    }

    @Override // g.a.y0
    public String realmGet$mu_name() {
        return this.mu_name;
    }

    @Override // g.a.y0
    public String realmGet$mv_comment() {
        return this.mv_comment;
    }

    @Override // g.a.y0
    public String realmGet$mv_created() {
        return this.mv_created;
    }

    @Override // g.a.y0
    public String realmGet$mv_id() {
        return this.mv_id;
    }

    @Override // g.a.y0
    public String realmGet$mv_img_url() {
        return this.mv_img_url;
    }

    @Override // g.a.y0
    public String realmGet$mv_like() {
        return this.mv_like;
    }

    @Override // g.a.y0
    public int realmGet$mv_play_height() {
        return this.mv_play_height;
    }

    @Override // g.a.y0
    public String realmGet$mv_play_url() {
        return this.mv_play_url;
    }

    @Override // g.a.y0
    public int realmGet$mv_play_width() {
        return this.mv_play_width;
    }

    @Override // g.a.y0
    public String realmGet$mv_title() {
        return this.mv_title;
    }

    @Override // g.a.y0
    public void realmSet$is_cat_ads(int i2) {
        this.is_cat_ads = i2;
    }

    @Override // g.a.y0
    public void realmSet$mu_avatar(String str) {
        this.mu_avatar = str;
    }

    @Override // g.a.y0
    public void realmSet$mu_id(String str) {
        this.mu_id = str;
    }

    @Override // g.a.y0
    public void realmSet$mu_name(String str) {
        this.mu_name = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_comment(String str) {
        this.mv_comment = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_created(String str) {
        this.mv_created = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_id(String str) {
        this.mv_id = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_img_url(String str) {
        this.mv_img_url = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_like(String str) {
        this.mv_like = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_play_height(int i2) {
        this.mv_play_height = i2;
    }

    @Override // g.a.y0
    public void realmSet$mv_play_url(String str) {
        this.mv_play_url = str;
    }

    @Override // g.a.y0
    public void realmSet$mv_play_width(int i2) {
        this.mv_play_width = i2;
    }

    @Override // g.a.y0
    public void realmSet$mv_title(String str) {
        this.mv_title = str;
    }

    public void setMu_avatar(String str) {
        realmSet$mu_avatar(str);
    }

    public void setMu_id(String str) {
        realmSet$mu_id(str);
    }

    public void setMu_name(String str) {
        realmSet$mu_name(str);
    }

    public void setMv_comment(String str) {
        realmSet$mv_comment(str);
    }

    public void setMv_created(String str) {
        realmSet$mv_created(str);
    }

    public void setMv_id(String str) {
        realmSet$mv_id(str);
    }

    public void setMv_img_url(String str) {
        realmSet$mv_img_url(str);
    }

    public void setMv_like(String str) {
        realmSet$mv_like(str);
    }

    public void setMv_play_url(String str) {
        realmSet$mv_play_url(str);
    }

    public void setMv_title(String str) {
        realmSet$mv_title(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$mu_avatar());
        parcel.writeString(realmGet$mu_id());
        parcel.writeString(realmGet$mu_name());
        parcel.writeString(realmGet$mv_comment());
        parcel.writeString(realmGet$mv_created());
        parcel.writeString(realmGet$mv_id());
        parcel.writeString(realmGet$mv_img_url());
        parcel.writeString(realmGet$mv_like());
        parcel.writeInt(realmGet$mv_play_height());
        parcel.writeString(realmGet$mv_play_url());
        parcel.writeInt(realmGet$mv_play_width());
        parcel.writeString(realmGet$mv_title());
        parcel.writeInt(realmGet$is_cat_ads());
    }

    public Video(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$mu_avatar(parcel.readString());
        realmSet$mu_id(parcel.readString());
        realmSet$mu_name(parcel.readString());
        realmSet$mv_comment(parcel.readString());
        realmSet$mv_created(parcel.readString());
        realmSet$mv_id(parcel.readString());
        realmSet$mv_img_url(parcel.readString());
        realmSet$mv_like(parcel.readString());
        realmSet$mv_play_height(parcel.readInt());
        realmSet$mv_play_url(parcel.readString());
        realmSet$mv_play_width(parcel.readInt());
        realmSet$mv_title(parcel.readString());
        realmSet$is_cat_ads(parcel.readInt());
    }
}
