package com.comeback.data.ui.ds.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.k.b;
import g.a.f1.n;
import g.a.g0;
import g.a.r0;

/* loaded from: classes.dex */
public class DsItemBean extends g0 implements Parcelable, r0 {
    public static final Parcelable.Creator<DsItemBean> CREATOR = new a();
    public String auther;
    public String cjid;
    public String cjname;
    public String cjstatus;
    public String contentType;
    public String cover;
    public String create_time;
    public String desc;
    public String diyu_id;
    public String duzhequn_id;

    /* renamed from: h  reason: collision with root package name */
    public String f628h;
    public String id;
    public String image;
    public String isfree;
    public String ishot;
    public String isjingpin;
    public String isnew;
    public String issole;
    public String keyword;
    public String lanmu_id;
    public String last_chapter;
    public String last_chapter_title;
    public String mark;
    public String mhstatus;
    public String pingfen;
    public String searchnums;
    public String sort;
    public String status;
    public String ticai_id;
    public String title;
    public String tjswitch;
    public String type;
    public String update_time;
    public String view;
    public String vipcanread;
    public String xianmian;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<DsItemBean> {
        @Override // android.os.Parcelable.Creator
        public DsItemBean createFromParcel(Parcel parcel) {
            return new DsItemBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DsItemBean[] newArray(int i2) {
            return new DsItemBean[i2];
        }
    }

    public DsItemBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAuther() {
        return realmGet$auther();
    }

    public String getCjid() {
        return realmGet$cjid();
    }

    public String getCjname() {
        return realmGet$cjname();
    }

    public String getCjstatus() {
        return realmGet$cjstatus();
    }

    public String getContentType() {
        return realmGet$contentType();
    }

    public String getCover() {
        return b.l0 + realmGet$cover();
    }

    public String getCreate_time() {
        return realmGet$create_time();
    }

    public String getDesc() {
        return realmGet$desc();
    }

    public String getDiyu_id() {
        return realmGet$diyu_id();
    }

    public String getDuzhequn_id() {
        return realmGet$duzhequn_id();
    }

    public String getFullImage() {
        return b.l0 + realmGet$image();
    }

    public String getH() {
        return realmGet$h();
    }

    public String getId() {
        return realmGet$id();
    }

    public String getImage() {
        return realmGet$image();
    }

    public String getIsfree() {
        return realmGet$isfree();
    }

    public String getIshot() {
        return realmGet$ishot();
    }

    public String getIsjingpin() {
        return realmGet$isjingpin();
    }

    public String getIsnew() {
        return realmGet$isnew();
    }

    public String getIssole() {
        return realmGet$issole();
    }

    public String getKeyword() {
        return realmGet$keyword();
    }

    public String getLanmu_id() {
        return realmGet$lanmu_id();
    }

    public String getLast_chapter() {
        return realmGet$last_chapter();
    }

    public String getLast_chapter_title() {
        return realmGet$last_chapter_title();
    }

    public String getMark() {
        return realmGet$mark();
    }

    public String getMhstatus() {
        return realmGet$mhstatus();
    }

    public String getMhstatusString() {
        return e.a(realmGet$mhstatus().equals(e.a("Bw==")) ? "0szvg9Dg" : "3939jNbO");
    }

    public String getPingfen() {
        return realmGet$pingfen();
    }

    public String getSearchnums() {
        return realmGet$searchnums();
    }

    public String getSort() {
        return realmGet$sort();
    }

    public String getStatus() {
        return realmGet$status();
    }

    public String getTicai_id() {
        return realmGet$ticai_id();
    }

    public String getTitle() {
        return realmGet$title();
    }

    public String getTjswitch() {
        return realmGet$tjswitch();
    }

    public String getType() {
        return realmGet$type();
    }

    public String getUpdate_time() {
        return realmGet$update_time();
    }

    public String getView() {
        return realmGet$view();
    }

    public String getVipcanread() {
        return realmGet$vipcanread();
    }

    public String getXianmian() {
        return realmGet$xianmian();
    }

    @Override // g.a.r0
    public String realmGet$auther() {
        return this.auther;
    }

    @Override // g.a.r0
    public String realmGet$cjid() {
        return this.cjid;
    }

    @Override // g.a.r0
    public String realmGet$cjname() {
        return this.cjname;
    }

    @Override // g.a.r0
    public String realmGet$cjstatus() {
        return this.cjstatus;
    }

    @Override // g.a.r0
    public String realmGet$contentType() {
        return this.contentType;
    }

    @Override // g.a.r0
    public String realmGet$cover() {
        return this.cover;
    }

    @Override // g.a.r0
    public String realmGet$create_time() {
        return this.create_time;
    }

    @Override // g.a.r0
    public String realmGet$desc() {
        return this.desc;
    }

    @Override // g.a.r0
    public String realmGet$diyu_id() {
        return this.diyu_id;
    }

    @Override // g.a.r0
    public String realmGet$duzhequn_id() {
        return this.duzhequn_id;
    }

    @Override // g.a.r0
    public String realmGet$h() {
        return this.f628h;
    }

    @Override // g.a.r0
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.r0
    public String realmGet$image() {
        return this.image;
    }

    @Override // g.a.r0
    public String realmGet$isfree() {
        return this.isfree;
    }

    @Override // g.a.r0
    public String realmGet$ishot() {
        return this.ishot;
    }

    @Override // g.a.r0
    public String realmGet$isjingpin() {
        return this.isjingpin;
    }

    @Override // g.a.r0
    public String realmGet$isnew() {
        return this.isnew;
    }

    @Override // g.a.r0
    public String realmGet$issole() {
        return this.issole;
    }

    @Override // g.a.r0
    public String realmGet$keyword() {
        return this.keyword;
    }

    @Override // g.a.r0
    public String realmGet$lanmu_id() {
        return this.lanmu_id;
    }

    @Override // g.a.r0
    public String realmGet$last_chapter() {
        return this.last_chapter;
    }

    @Override // g.a.r0
    public String realmGet$last_chapter_title() {
        return this.last_chapter_title;
    }

    @Override // g.a.r0
    public String realmGet$mark() {
        return this.mark;
    }

    @Override // g.a.r0
    public String realmGet$mhstatus() {
        return this.mhstatus;
    }

    @Override // g.a.r0
    public String realmGet$pingfen() {
        return this.pingfen;
    }

    @Override // g.a.r0
    public String realmGet$searchnums() {
        return this.searchnums;
    }

    @Override // g.a.r0
    public String realmGet$sort() {
        return this.sort;
    }

    @Override // g.a.r0
    public String realmGet$status() {
        return this.status;
    }

    @Override // g.a.r0
    public String realmGet$ticai_id() {
        return this.ticai_id;
    }

    @Override // g.a.r0
    public String realmGet$title() {
        return this.title;
    }

    @Override // g.a.r0
    public String realmGet$tjswitch() {
        return this.tjswitch;
    }

    @Override // g.a.r0
    public String realmGet$type() {
        return this.type;
    }

    @Override // g.a.r0
    public String realmGet$update_time() {
        return this.update_time;
    }

    @Override // g.a.r0
    public String realmGet$view() {
        return this.view;
    }

    @Override // g.a.r0
    public String realmGet$vipcanread() {
        return this.vipcanread;
    }

    @Override // g.a.r0
    public String realmGet$xianmian() {
        return this.xianmian;
    }

    @Override // g.a.r0
    public void realmSet$auther(String str) {
        this.auther = str;
    }

    @Override // g.a.r0
    public void realmSet$cjid(String str) {
        this.cjid = str;
    }

    @Override // g.a.r0
    public void realmSet$cjname(String str) {
        this.cjname = str;
    }

    @Override // g.a.r0
    public void realmSet$cjstatus(String str) {
        this.cjstatus = str;
    }

    @Override // g.a.r0
    public void realmSet$contentType(String str) {
        this.contentType = str;
    }

    @Override // g.a.r0
    public void realmSet$cover(String str) {
        this.cover = str;
    }

    @Override // g.a.r0
    public void realmSet$create_time(String str) {
        this.create_time = str;
    }

    @Override // g.a.r0
    public void realmSet$desc(String str) {
        this.desc = str;
    }

    @Override // g.a.r0
    public void realmSet$diyu_id(String str) {
        this.diyu_id = str;
    }

    @Override // g.a.r0
    public void realmSet$duzhequn_id(String str) {
        this.duzhequn_id = str;
    }

    @Override // g.a.r0
    public void realmSet$h(String str) {
        this.f628h = str;
    }

    @Override // g.a.r0
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.r0
    public void realmSet$image(String str) {
        this.image = str;
    }

    @Override // g.a.r0
    public void realmSet$isfree(String str) {
        this.isfree = str;
    }

    @Override // g.a.r0
    public void realmSet$ishot(String str) {
        this.ishot = str;
    }

    @Override // g.a.r0
    public void realmSet$isjingpin(String str) {
        this.isjingpin = str;
    }

    @Override // g.a.r0
    public void realmSet$isnew(String str) {
        this.isnew = str;
    }

    @Override // g.a.r0
    public void realmSet$issole(String str) {
        this.issole = str;
    }

    @Override // g.a.r0
    public void realmSet$keyword(String str) {
        this.keyword = str;
    }

    @Override // g.a.r0
    public void realmSet$lanmu_id(String str) {
        this.lanmu_id = str;
    }

    @Override // g.a.r0
    public void realmSet$last_chapter(String str) {
        this.last_chapter = str;
    }

    @Override // g.a.r0
    public void realmSet$last_chapter_title(String str) {
        this.last_chapter_title = str;
    }

    @Override // g.a.r0
    public void realmSet$mark(String str) {
        this.mark = str;
    }

    @Override // g.a.r0
    public void realmSet$mhstatus(String str) {
        this.mhstatus = str;
    }

    @Override // g.a.r0
    public void realmSet$pingfen(String str) {
        this.pingfen = str;
    }

    @Override // g.a.r0
    public void realmSet$searchnums(String str) {
        this.searchnums = str;
    }

    @Override // g.a.r0
    public void realmSet$sort(String str) {
        this.sort = str;
    }

    @Override // g.a.r0
    public void realmSet$status(String str) {
        this.status = str;
    }

    @Override // g.a.r0
    public void realmSet$ticai_id(String str) {
        this.ticai_id = str;
    }

    @Override // g.a.r0
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // g.a.r0
    public void realmSet$tjswitch(String str) {
        this.tjswitch = str;
    }

    @Override // g.a.r0
    public void realmSet$type(String str) {
        this.type = str;
    }

    @Override // g.a.r0
    public void realmSet$update_time(String str) {
        this.update_time = str;
    }

    @Override // g.a.r0
    public void realmSet$view(String str) {
        this.view = str;
    }

    @Override // g.a.r0
    public void realmSet$vipcanread(String str) {
        this.vipcanread = str;
    }

    @Override // g.a.r0
    public void realmSet$xianmian(String str) {
        this.xianmian = str;
    }

    public void setAuther(String str) {
        realmSet$auther(str);
    }

    public void setCjid(String str) {
        realmSet$cjid(str);
    }

    public void setCjname(String str) {
        realmSet$cjname(str);
    }

    public void setCjstatus(String str) {
        realmSet$cjstatus(str);
    }

    public void setContentType(String str) {
        realmSet$contentType(str);
    }

    public void setCover(String str) {
        realmSet$cover(str);
    }

    public void setCreate_time(String str) {
        realmSet$create_time(str);
    }

    public void setDesc(String str) {
        realmSet$desc(str);
    }

    public void setDiyu_id(String str) {
        realmSet$diyu_id(str);
    }

    public void setDuzhequn_id(String str) {
        realmSet$duzhequn_id(str);
    }

    public void setH(String str) {
        realmSet$h(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setImage(String str) {
        realmSet$image(str);
    }

    public void setIsfree(String str) {
        realmSet$isfree(str);
    }

    public void setIshot(String str) {
        realmSet$ishot(str);
    }

    public void setIsjingpin(String str) {
        realmSet$isjingpin(str);
    }

    public void setIsnew(String str) {
        realmSet$isnew(str);
    }

    public void setIssole(String str) {
        realmSet$issole(str);
    }

    public void setKeyword(String str) {
        realmSet$keyword(str);
    }

    public void setLanmu_id(String str) {
        realmSet$lanmu_id(str);
    }

    public void setLast_chapter(String str) {
        realmSet$last_chapter(str);
    }

    public void setLast_chapter_title(String str) {
        realmSet$last_chapter_title(str);
    }

    public void setMark(String str) {
        realmSet$mark(str);
    }

    public void setMhstatus(String str) {
        realmSet$mhstatus(str);
    }

    public void setPingfen(String str) {
        realmSet$pingfen(str);
    }

    public void setSearchnums(String str) {
        realmSet$searchnums(str);
    }

    public void setSort(String str) {
        realmSet$sort(str);
    }

    public void setStatus(String str) {
        realmSet$status(str);
    }

    public void setTicai_id(String str) {
        realmSet$ticai_id(str);
    }

    public void setTitle(String str) {
        realmSet$title(str);
    }

    public void setTjswitch(String str) {
        realmSet$tjswitch(str);
    }

    public void setType(String str) {
        realmSet$type(str);
    }

    public void setUpdate_time(String str) {
        realmSet$update_time(str);
    }

    public void setView(String str) {
        realmSet$view(str);
    }

    public void setVipcanread(String str) {
        realmSet$vipcanread(str);
    }

    public void setXianmian(String str) {
        realmSet$xianmian(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$id());
        parcel.writeString(realmGet$title());
        parcel.writeString(realmGet$lanmu_id());
        parcel.writeString(realmGet$create_time());
        parcel.writeString(realmGet$update_time());
        parcel.writeString(realmGet$sort());
        parcel.writeString(realmGet$status());
        parcel.writeString(realmGet$view());
        parcel.writeString(realmGet$image());
        parcel.writeString(realmGet$type());
        parcel.writeString(realmGet$auther());
        parcel.writeString(realmGet$desc());
        parcel.writeString(realmGet$mark());
        parcel.writeString(realmGet$ticai_id());
        parcel.writeString(realmGet$duzhequn_id());
        parcel.writeString(realmGet$diyu_id());
        parcel.writeString(realmGet$mhstatus());
        parcel.writeString(realmGet$tjswitch());
        parcel.writeString(realmGet$isfree());
        parcel.writeString(realmGet$cjid());
        parcel.writeString(realmGet$cjstatus());
        parcel.writeString(realmGet$cjname());
        parcel.writeString(realmGet$keyword());
        parcel.writeString(realmGet$last_chapter_title());
        parcel.writeString(realmGet$searchnums());
        parcel.writeString(realmGet$last_chapter());
        parcel.writeString(realmGet$isjingpin());
        parcel.writeString(realmGet$xianmian());
        parcel.writeString(realmGet$cover());
        parcel.writeString(realmGet$ishot());
        parcel.writeString(realmGet$issole());
        parcel.writeString(realmGet$isnew());
        parcel.writeString(realmGet$h());
        parcel.writeString(realmGet$vipcanread());
        parcel.writeString(realmGet$pingfen());
        parcel.writeString(realmGet$contentType());
    }

    public DsItemBean(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$id(parcel.readString());
        realmSet$title(parcel.readString());
        realmSet$lanmu_id(parcel.readString());
        realmSet$create_time(parcel.readString());
        realmSet$update_time(parcel.readString());
        realmSet$sort(parcel.readString());
        realmSet$status(parcel.readString());
        realmSet$view(parcel.readString());
        realmSet$image(parcel.readString());
        realmSet$type(parcel.readString());
        realmSet$auther(parcel.readString());
        realmSet$desc(parcel.readString());
        realmSet$mark(parcel.readString());
        realmSet$ticai_id(parcel.readString());
        realmSet$duzhequn_id(parcel.readString());
        realmSet$diyu_id(parcel.readString());
        realmSet$mhstatus(parcel.readString());
        realmSet$tjswitch(parcel.readString());
        realmSet$isfree(parcel.readString());
        realmSet$cjid(parcel.readString());
        realmSet$cjstatus(parcel.readString());
        realmSet$cjname(parcel.readString());
        realmSet$keyword(parcel.readString());
        realmSet$last_chapter_title(parcel.readString());
        realmSet$searchnums(parcel.readString());
        realmSet$last_chapter(parcel.readString());
        realmSet$isjingpin(parcel.readString());
        realmSet$xianmian(parcel.readString());
        realmSet$cover(parcel.readString());
        realmSet$ishot(parcel.readString());
        realmSet$issole(parcel.readString());
        realmSet$isnew(parcel.readString());
        realmSet$h(parcel.readString());
        realmSet$vipcanread(parcel.readString());
        realmSet$pingfen(parcel.readString());
        realmSet$contentType(parcel.readString());
    }
}
