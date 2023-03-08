package com.comeback.data.ui.mimei.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.e;
import g.a.d1;
import g.a.f1.n;
import g.a.g0;

/* loaded from: classes.dex */
public class MimeiComicItem extends g0 implements Parcelable, d1 {
    public static final Parcelable.Creator<MimeiComicItem> CREATOR = new a();
    public String apitimestamp;
    public Object author;
    public Object chapter;
    public String cover_path;
    public String end;
    public String full_cover_path;
    public String id;
    public Object last_page;
    public int max_chapter;
    public int max_volume;
    public String name;
    public String opened_at;
    public Object ori_series;
    public int pages;
    public Object season;
    public String series;
    public String series_hash_key;
    public int series_number;
    public String series_stamp;
    public Object tag;
    public int type;
    public int view_count;
    public Object volume;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<MimeiComicItem> {
        @Override // android.os.Parcelable.Creator
        public MimeiComicItem createFromParcel(Parcel parcel) {
            return new MimeiComicItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MimeiComicItem[] newArray(int i2) {
            return new MimeiComicItem[i2];
        }
    }

    public MimeiComicItem() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    private String getPageString() {
        return getPages() + e.a("0t7DgfDN");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getApitimestamp() {
        return realmGet$apitimestamp();
    }

    public Object getAuthor() {
        return this.author;
    }

    public Object getChapter() {
        return this.chapter;
    }

    public String getChapterState() {
        if (realmGet$max_chapter() == 0) {
            return getPageString();
        }
        if (isEnd()) {
            return e.a("0ufS") + realmGet$max_chapter() + e.a("0MnD");
        }
        return e.a("3939jNbO0bTA") + realmGet$max_chapter() + e.a("0MnD");
    }

    public String getCover_path() {
        return realmGet$cover_path();
    }

    public String getEnd() {
        return realmGet$end();
    }

    public String getFull_cover_path() {
        return realmGet$full_cover_path();
    }

    public String getId() {
        return realmGet$id();
    }

    public Object getLast_page() {
        return this.last_page;
    }

    public int getMax_chapter() {
        return realmGet$max_chapter();
    }

    public int getMax_volume() {
        return realmGet$max_volume();
    }

    public String getName() {
        if (TextUtils.isEmpty(realmGet$series())) {
            return realmGet$name();
        }
        return realmGet$series();
    }

    public String getOpened_at() {
        return realmGet$opened_at();
    }

    public Object getOri_series() {
        return this.ori_series;
    }

    public int getPages() {
        return realmGet$pages();
    }

    public Object getSeason() {
        return this.season;
    }

    public String getSeries() {
        return realmGet$series();
    }

    public String getSeries_hash_key() {
        return realmGet$series_hash_key();
    }

    public int getSeries_number() {
        return realmGet$series_number();
    }

    public String getSeries_stamp() {
        return realmGet$series_stamp();
    }

    public Object getTag() {
        return this.tag;
    }

    public int getType() {
        return realmGet$type();
    }

    public int getView_count() {
        return realmGet$view_count();
    }

    public Object getVolume() {
        return this.volume;
    }

    public boolean isEnd() {
        if (realmGet$max_chapter() == 0) {
            return true;
        }
        return e.a("bg==").equals(realmGet$end());
    }

    @Override // g.a.d1
    public String realmGet$apitimestamp() {
        return this.apitimestamp;
    }

    @Override // g.a.d1
    public String realmGet$cover_path() {
        return this.cover_path;
    }

    @Override // g.a.d1
    public String realmGet$end() {
        return this.end;
    }

    @Override // g.a.d1
    public String realmGet$full_cover_path() {
        return this.full_cover_path;
    }

    @Override // g.a.d1
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.d1
    public int realmGet$max_chapter() {
        return this.max_chapter;
    }

    @Override // g.a.d1
    public int realmGet$max_volume() {
        return this.max_volume;
    }

    @Override // g.a.d1
    public String realmGet$name() {
        return this.name;
    }

    @Override // g.a.d1
    public String realmGet$opened_at() {
        return this.opened_at;
    }

    @Override // g.a.d1
    public int realmGet$pages() {
        return this.pages;
    }

    @Override // g.a.d1
    public String realmGet$series() {
        return this.series;
    }

    @Override // g.a.d1
    public String realmGet$series_hash_key() {
        return this.series_hash_key;
    }

    @Override // g.a.d1
    public int realmGet$series_number() {
        return this.series_number;
    }

    @Override // g.a.d1
    public String realmGet$series_stamp() {
        return this.series_stamp;
    }

    @Override // g.a.d1
    public int realmGet$type() {
        return this.type;
    }

    @Override // g.a.d1
    public int realmGet$view_count() {
        return this.view_count;
    }

    @Override // g.a.d1
    public void realmSet$apitimestamp(String str) {
        this.apitimestamp = str;
    }

    @Override // g.a.d1
    public void realmSet$cover_path(String str) {
        this.cover_path = str;
    }

    @Override // g.a.d1
    public void realmSet$end(String str) {
        this.end = str;
    }

    @Override // g.a.d1
    public void realmSet$full_cover_path(String str) {
        this.full_cover_path = str;
    }

    @Override // g.a.d1
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.d1
    public void realmSet$max_chapter(int i2) {
        this.max_chapter = i2;
    }

    @Override // g.a.d1
    public void realmSet$max_volume(int i2) {
        this.max_volume = i2;
    }

    @Override // g.a.d1
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // g.a.d1
    public void realmSet$opened_at(String str) {
        this.opened_at = str;
    }

    @Override // g.a.d1
    public void realmSet$pages(int i2) {
        this.pages = i2;
    }

    @Override // g.a.d1
    public void realmSet$series(String str) {
        this.series = str;
    }

    @Override // g.a.d1
    public void realmSet$series_hash_key(String str) {
        this.series_hash_key = str;
    }

    @Override // g.a.d1
    public void realmSet$series_number(int i2) {
        this.series_number = i2;
    }

    @Override // g.a.d1
    public void realmSet$series_stamp(String str) {
        this.series_stamp = str;
    }

    @Override // g.a.d1
    public void realmSet$type(int i2) {
        this.type = i2;
    }

    @Override // g.a.d1
    public void realmSet$view_count(int i2) {
        this.view_count = i2;
    }

    public void setApitimestamp(String str) {
        realmSet$apitimestamp(str);
    }

    public void setAuthor(Object obj) {
        this.author = obj;
    }

    public void setChapter(Object obj) {
        this.chapter = obj;
    }

    public void setCover_path(String str) {
        realmSet$cover_path(str);
    }

    public void setEnd(String str) {
        realmSet$end(str);
    }

    public void setFull_cover_path(String str) {
        realmSet$full_cover_path(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setLast_page(Object obj) {
        this.last_page = obj;
    }

    public void setMax_chapter(int i2) {
        realmSet$max_chapter(i2);
    }

    public void setMax_volume(int i2) {
        realmSet$max_volume(i2);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setOpened_at(String str) {
        realmSet$opened_at(str);
    }

    public void setOri_series(Object obj) {
        this.ori_series = obj;
    }

    public void setPages(int i2) {
        realmSet$pages(i2);
    }

    public void setSeason(Object obj) {
        this.season = obj;
    }

    public void setSeries(String str) {
        realmSet$series(str);
    }

    public void setSeries_hash_key(String str) {
        realmSet$series_hash_key(str);
    }

    public void setSeries_number(int i2) {
        realmSet$series_number(i2);
    }

    public void setSeries_stamp(String str) {
        realmSet$series_stamp(str);
    }

    public void setTag(Object obj) {
        this.tag = obj;
    }

    public void setType(int i2) {
        realmSet$type(i2);
    }

    public void setView_count(int i2) {
        realmSet$view_count(i2);
    }

    public void setVolume(Object obj) {
        this.volume = obj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$id());
        parcel.writeString(realmGet$series_hash_key());
        parcel.writeString(realmGet$name());
        parcel.writeString(realmGet$series_stamp());
        parcel.writeString(realmGet$cover_path());
        parcel.writeString(realmGet$full_cover_path());
        parcel.writeInt(realmGet$view_count());
        parcel.writeInt(realmGet$pages());
        parcel.writeInt(realmGet$type());
        parcel.writeInt(realmGet$max_chapter());
        parcel.writeInt(realmGet$max_volume());
        parcel.writeString(realmGet$end());
        parcel.writeString(realmGet$apitimestamp());
        parcel.writeInt(realmGet$series_number());
        parcel.writeString(realmGet$opened_at());
    }

    public MimeiComicItem(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$id(parcel.readString());
        realmSet$series_hash_key(parcel.readString());
        realmSet$name(parcel.readString());
        realmSet$series_stamp(parcel.readString());
        realmSet$cover_path(parcel.readString());
        realmSet$full_cover_path(parcel.readString());
        realmSet$view_count(parcel.readInt());
        realmSet$pages(parcel.readInt());
        realmSet$type(parcel.readInt());
        realmSet$max_chapter(parcel.readInt());
        realmSet$max_volume(parcel.readInt());
        realmSet$end(parcel.readString());
        realmSet$apitimestamp(parcel.readString());
        realmSet$series_number(parcel.readInt());
        realmSet$opened_at(parcel.readString());
    }
}
