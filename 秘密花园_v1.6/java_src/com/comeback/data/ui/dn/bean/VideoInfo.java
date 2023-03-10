package com.comeback.data.ui.dn.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class VideoInfo extends k implements Parcelable {
    public static final Parcelable.Creator<VideoInfo> CREATOR = new a();
    public String ad_locate;
    public String ad_min_time;
    public String ad_type;
    public String ad_url;
    public String addtime;
    public String city;
    public String clicks;
    public String comments;
    public String datetime;
    public String downloads;
    public String href;
    public String id;
    public String is_ad;
    public String isattent;
    public String isdel;
    public String islike;
    public String isstep;
    public String lat;
    public String likes;
    public String lng;
    public String music_id;
    public String nopass_time;
    public String previewed_href;
    public String shares;
    public String show_val;
    public String steps;
    public String strighttype;
    public String thumb;
    public String thumb_s;
    public String title;
    public String uid;
    public UserInfo userinfo;
    public String videoid;
    public String views;
    public String watch_ok;
    public String xiajia_reason;

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
        this.ad_locate = parcel.readString();
        this.ad_min_time = parcel.readString();
        this.ad_type = parcel.readString();
        this.ad_url = parcel.readString();
        this.addtime = parcel.readString();
        this.city = parcel.readString();
        this.clicks = parcel.readString();
        this.comments = parcel.readString();
        this.datetime = parcel.readString();
        this.downloads = parcel.readString();
        this.href = parcel.readString();
        this.id = parcel.readString();
        this.is_ad = parcel.readString();
        this.isattent = parcel.readString();
        this.isdel = parcel.readString();
        this.islike = parcel.readString();
        this.isstep = parcel.readString();
        this.lat = parcel.readString();
        this.likes = parcel.readString();
        this.lng = parcel.readString();
        this.music_id = parcel.readString();
        this.nopass_time = parcel.readString();
        this.previewed_href = parcel.readString();
        this.shares = parcel.readString();
        this.show_val = parcel.readString();
        this.steps = parcel.readString();
        this.strighttype = parcel.readString();
        this.thumb = parcel.readString();
        this.thumb_s = parcel.readString();
        this.title = parcel.readString();
        this.uid = parcel.readString();
        this.userinfo = (UserInfo) parcel.readParcelable(UserInfo.class.getClassLoader());
        this.views = parcel.readString();
        this.watch_ok = parcel.readString();
        this.xiajia_reason = parcel.readString();
        this.videoid = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAd_locate() {
        return this.ad_locate;
    }

    public String getAd_min_time() {
        return this.ad_min_time;
    }

    public String getAd_type() {
        return this.ad_type;
    }

    public String getAd_url() {
        return this.ad_url;
    }

    public String getAddtime() {
        return this.addtime;
    }

    public String getCity() {
        return this.city;
    }

    public String getClicks() {
        return this.clicks;
    }

    public String getComments() {
        return this.comments;
    }

    public String getDatetime() {
        return this.datetime;
    }

    public String getDownloads() {
        return this.downloads;
    }

    public String getHref() {
        return this.href;
    }

    public String getId() {
        return this.id;
    }

    public String getIs_ad() {
        return this.is_ad;
    }

    public String getIsattent() {
        return this.isattent;
    }

    public String getIsdel() {
        return this.isdel;
    }

    public String getIslike() {
        return this.islike;
    }

    public String getIsstep() {
        return this.isstep;
    }

    public String getLat() {
        return this.lat;
    }

    public String getLikes() {
        return this.likes;
    }

    public String getLng() {
        return this.lng;
    }

    public String getMusic_id() {
        return this.music_id;
    }

    public String getNopass_time() {
        return this.nopass_time;
    }

    public String getPreviewed_href() {
        return this.previewed_href;
    }

    public String getShares() {
        return this.shares;
    }

    public String getShow_val() {
        return this.show_val;
    }

    public String getSteps() {
        return this.steps;
    }

    public String getStrighttype() {
        return this.strighttype;
    }

    public String getThumb() {
        return this.thumb;
    }

    public String getThumb_s() {
        return this.thumb_s;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUid() {
        return this.uid;
    }

    public UserInfo getUserinfo() {
        return this.userinfo;
    }

    public String getVideoid() {
        return this.videoid;
    }

    public String getViews() {
        return this.views;
    }

    public String getWatch_ok() {
        return this.watch_ok;
    }

    public String getXiajia_reason() {
        return this.xiajia_reason;
    }

    public void setAd_locate(String str) {
        this.ad_locate = str;
    }

    public void setAd_min_time(String str) {
        this.ad_min_time = str;
    }

    public void setAd_type(String str) {
        this.ad_type = str;
    }

    public void setAd_url(String str) {
        this.ad_url = str;
    }

    public void setAddtime(String str) {
        this.addtime = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setClicks(String str) {
        this.clicks = str;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public void setDatetime(String str) {
        this.datetime = str;
    }

    public void setDownloads(String str) {
        this.downloads = str;
    }

    public void setHref(String str) {
        this.href = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIs_ad(String str) {
        this.is_ad = str;
    }

    public void setIsattent(String str) {
        this.isattent = str;
    }

    public void setIsdel(String str) {
        this.isdel = str;
    }

    public void setIslike(String str) {
        this.islike = str;
    }

    public void setIsstep(String str) {
        this.isstep = str;
    }

    public void setLat(String str) {
        this.lat = str;
    }

    public void setLikes(String str) {
        this.likes = str;
    }

    public void setLng(String str) {
        this.lng = str;
    }

    public void setMusic_id(String str) {
        this.music_id = str;
    }

    public void setNopass_time(String str) {
        this.nopass_time = str;
    }

    public void setPreviewed_href(String str) {
        this.previewed_href = str;
    }

    public void setShares(String str) {
        this.shares = str;
    }

    public void setShow_val(String str) {
        this.show_val = str;
    }

    public void setSteps(String str) {
        this.steps = str;
    }

    public void setStrighttype(String str) {
        this.strighttype = str;
    }

    public void setThumb(String str) {
        this.thumb = str;
    }

    public void setThumb_s(String str) {
        this.thumb_s = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setUserinfo(UserInfo userInfo) {
        this.userinfo = userInfo;
    }

    public void setVideoid(String str) {
        this.videoid = str;
    }

    public void setViews(String str) {
        this.views = str;
    }

    public void setWatch_ok(String str) {
        this.watch_ok = str;
    }

    public void setXiajia_reason(String str) {
        this.xiajia_reason = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.ad_locate);
        parcel.writeString(this.ad_min_time);
        parcel.writeString(this.ad_type);
        parcel.writeString(this.ad_url);
        parcel.writeString(this.addtime);
        parcel.writeString(this.city);
        parcel.writeString(this.clicks);
        parcel.writeString(this.comments);
        parcel.writeString(this.datetime);
        parcel.writeString(this.downloads);
        parcel.writeString(this.href);
        parcel.writeString(this.id);
        parcel.writeString(this.is_ad);
        parcel.writeString(this.isattent);
        parcel.writeString(this.isdel);
        parcel.writeString(this.islike);
        parcel.writeString(this.isstep);
        parcel.writeString(this.lat);
        parcel.writeString(this.likes);
        parcel.writeString(this.lng);
        parcel.writeString(this.music_id);
        parcel.writeString(this.nopass_time);
        parcel.writeString(this.previewed_href);
        parcel.writeString(this.shares);
        parcel.writeString(this.show_val);
        parcel.writeString(this.steps);
        parcel.writeString(this.strighttype);
        parcel.writeString(this.thumb);
        parcel.writeString(this.thumb_s);
        parcel.writeString(this.title);
        parcel.writeString(this.uid);
        parcel.writeParcelable(this.userinfo, i2);
        parcel.writeString(this.views);
        parcel.writeString(this.watch_ok);
        parcel.writeString(this.xiajia_reason);
        parcel.writeString(this.videoid);
    }
}
