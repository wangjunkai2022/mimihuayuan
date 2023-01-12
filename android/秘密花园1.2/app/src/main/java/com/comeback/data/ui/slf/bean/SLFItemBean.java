package com.comeback.data.ui.slf.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import g.a.e1;
import g.a.f1.n;
import g.a.g0;
import java.util.List;

/* loaded from: classes.dex */
public class SLFItemBean extends g0 implements Parcelable, e1 {
    public static final Parcelable.Creator<SLFItemBean> CREATOR = new a();
    public String author;
    public List<CategoryBean> category;
    public String click;
    public String description;
    public String favorite;
    public String id;
    public String img;
    public String isVideo;
    public String name;
    public int point;
    public int sale;
    public String status;
    public String summary;
    public String tagStr;
    public int type;
    public String updateTime;

    /* loaded from: classes.dex */
    public static class CategoryBean implements Parcelable {
        public static final Parcelable.Creator<CategoryBean> CREATOR = new a();
        public int id;
        public String name;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<CategoryBean> {
            @Override // android.os.Parcelable.Creator
            public CategoryBean createFromParcel(Parcel parcel) {
                return new CategoryBean(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public CategoryBean[] newArray(int i2) {
                return new CategoryBean[i2];
            }
        }

        public CategoryBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setName(String str) {
            this.name = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.name);
            parcel.writeInt(this.id);
        }

        public CategoryBean(Parcel parcel) {
            this.name = parcel.readString();
            this.id = parcel.readInt();
        }
    }

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<SLFItemBean> {
        @Override // android.os.Parcelable.Creator
        public SLFItemBean createFromParcel(Parcel parcel) {
            return new SLFItemBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SLFItemBean[] newArray(int i2) {
            return new SLFItemBean[i2];
        }
    }

    public SLFItemBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAuthor() {
        return realmGet$author();
    }

    public List<CategoryBean> getCategory() {
        return this.category;
    }

    public String getClick() {
        return realmGet$click() + e.a("F4TPxYLrvNvc3Q==");
    }

    public String getDescription() {
        return realmGet$description();
    }

    public String getFavorite() {
        return realmGet$favorite() + e.a("F4bZ3o3nj9vk6Q==");
    }

    public String getId() {
        return realmGet$id();
    }

    public String getImg() {
        return realmGet$img();
    }

    public boolean getIsVideo() {
        return e.a("Tg==").equals(realmGet$isVideo());
    }

    public String getName() {
        return realmGet$name();
    }

    public int getPoint() {
        return realmGet$point();
    }

    public int getSale() {
        return realmGet$sale();
    }

    public String getStatus() {
        return realmGet$status();
    }

    public String getSummary() {
        return realmGet$summary();
    }

    public String getTagStr() {
        return realmGet$tagStr();
    }

    public int getType() {
        return realmGet$type();
    }

    public String getUpdateTime() {
        return realmGet$updateTime();
    }

    @Override // g.a.e1
    public String realmGet$author() {
        return this.author;
    }

    @Override // g.a.e1
    public String realmGet$click() {
        return this.click;
    }

    @Override // g.a.e1
    public String realmGet$description() {
        return this.description;
    }

    @Override // g.a.e1
    public String realmGet$favorite() {
        return this.favorite;
    }

    @Override // g.a.e1
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.e1
    public String realmGet$img() {
        return this.img;
    }

    @Override // g.a.e1
    public String realmGet$isVideo() {
        return this.isVideo;
    }

    @Override // g.a.e1
    public String realmGet$name() {
        return this.name;
    }

    @Override // g.a.e1
    public int realmGet$point() {
        return this.point;
    }

    @Override // g.a.e1
    public int realmGet$sale() {
        return this.sale;
    }

    @Override // g.a.e1
    public String realmGet$status() {
        return this.status;
    }

    @Override // g.a.e1
    public String realmGet$summary() {
        return this.summary;
    }

    @Override // g.a.e1
    public String realmGet$tagStr() {
        return this.tagStr;
    }

    @Override // g.a.e1
    public int realmGet$type() {
        return this.type;
    }

    @Override // g.a.e1
    public String realmGet$updateTime() {
        return this.updateTime;
    }

    @Override // g.a.e1
    public void realmSet$author(String str) {
        this.author = str;
    }

    @Override // g.a.e1
    public void realmSet$click(String str) {
        this.click = str;
    }

    @Override // g.a.e1
    public void realmSet$description(String str) {
        this.description = str;
    }

    @Override // g.a.e1
    public void realmSet$favorite(String str) {
        this.favorite = str;
    }

    @Override // g.a.e1
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.e1
    public void realmSet$img(String str) {
        this.img = str;
    }

    @Override // g.a.e1
    public void realmSet$isVideo(String str) {
        this.isVideo = str;
    }

    @Override // g.a.e1
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // g.a.e1
    public void realmSet$point(int i2) {
        this.point = i2;
    }

    @Override // g.a.e1
    public void realmSet$sale(int i2) {
        this.sale = i2;
    }

    @Override // g.a.e1
    public void realmSet$status(String str) {
        this.status = str;
    }

    @Override // g.a.e1
    public void realmSet$summary(String str) {
        this.summary = str;
    }

    @Override // g.a.e1
    public void realmSet$tagStr(String str) {
        this.tagStr = str;
    }

    @Override // g.a.e1
    public void realmSet$type(int i2) {
        this.type = i2;
    }

    @Override // g.a.e1
    public void realmSet$updateTime(String str) {
        this.updateTime = str;
    }

    public void setAuthor(String str) {
        realmSet$author(str);
    }

    public void setCategory(List<CategoryBean> list) {
        this.category = list;
    }

    public void setClick(String str) {
        realmSet$click(str);
    }

    public void setDescription(String str) {
        realmSet$description(str);
    }

    public void setFavorite(String str) {
        realmSet$favorite(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setImg(String str) {
        realmSet$img(str);
    }

    public void setIsVideo(String str) {
        realmSet$isVideo(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setPoint(int i2) {
        realmSet$point(i2);
    }

    public void setSale(int i2) {
        realmSet$sale(i2);
    }

    public void setStatus(String str) {
        realmSet$status(str);
    }

    public void setSummary(String str) {
        realmSet$summary(str);
    }

    public void setTagStr(String str) {
        realmSet$tagStr(str);
    }

    public void setType(int i2) {
        realmSet$type(i2);
    }

    public void setUpdateTime(String str) {
        realmSet$updateTime(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$id());
        parcel.writeString(realmGet$name());
        parcel.writeString(realmGet$click());
        parcel.writeString(realmGet$favorite());
        parcel.writeString(realmGet$img());
        parcel.writeInt(realmGet$sale());
        parcel.writeString(realmGet$updateTime());
        parcel.writeString(realmGet$description());
        parcel.writeString(realmGet$summary());
        parcel.writeInt(realmGet$point());
        parcel.writeString(realmGet$status());
        parcel.writeInt(realmGet$type());
        parcel.writeString(realmGet$tagStr());
        parcel.writeString(realmGet$author());
        parcel.writeString(realmGet$isVideo());
    }

    public SLFItemBean(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$id(parcel.readString());
        realmSet$name(parcel.readString());
        realmSet$click(parcel.readString());
        realmSet$favorite(parcel.readString());
        realmSet$img(parcel.readString());
        realmSet$sale(parcel.readInt());
        realmSet$updateTime(parcel.readString());
        realmSet$description(parcel.readString());
        realmSet$summary(parcel.readString());
        realmSet$point(parcel.readInt());
        realmSet$status(parcel.readString());
        realmSet$type(parcel.readInt());
        realmSet$tagStr(parcel.readString());
        realmSet$author(parcel.readString());
        realmSet$isVideo(parcel.readString());
    }
}
