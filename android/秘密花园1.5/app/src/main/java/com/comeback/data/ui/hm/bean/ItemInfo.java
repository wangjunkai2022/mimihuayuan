package com.comeback.data.ui.hm.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.e;
import g.a.f1.n;
import g.a.g0;
import g.a.u0;

/* loaded from: classes.dex */
public class ItemInfo extends g0 implements Parcelable, u0 {
    public static final Parcelable.Creator<ItemInfo> CREATOR = new a();
    public String author;
    public String desc;
    public String id;
    public String image;
    public String title;
    public int type;
    public String update;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<ItemInfo> {
        @Override // android.os.Parcelable.Creator
        public ItemInfo createFromParcel(Parcel parcel) {
            return new ItemInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ItemInfo[] newArray(int i2) {
            return new ItemInfo[i2];
        }
    }

    public ItemInfo() {
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

    public String getDesc() {
        return realmGet$desc();
    }

    public String getId() {
        return realmGet$id();
    }

    public String getImage() {
        return realmGet$image();
    }

    public String getTitle() {
        return realmGet$title();
    }

    public int getType() {
        return realmGet$type();
    }

    public String getUpdate() {
        return realmGet$update();
    }

    public boolean isHm() {
        return realmGet$type() == 0;
    }

    @Override // g.a.u0
    public String realmGet$author() {
        return this.author;
    }

    @Override // g.a.u0
    public String realmGet$desc() {
        return this.desc;
    }

    @Override // g.a.u0
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.u0
    public String realmGet$image() {
        return this.image;
    }

    @Override // g.a.u0
    public String realmGet$title() {
        return this.title;
    }

    @Override // g.a.u0
    public int realmGet$type() {
        return this.type;
    }

    @Override // g.a.u0
    public String realmGet$update() {
        return this.update;
    }

    @Override // g.a.u0
    public void realmSet$author(String str) {
        this.author = str;
    }

    @Override // g.a.u0
    public void realmSet$desc(String str) {
        this.desc = str;
    }

    @Override // g.a.u0
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.u0
    public void realmSet$image(String str) {
        this.image = str;
    }

    @Override // g.a.u0
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // g.a.u0
    public void realmSet$type(int i2) {
        this.type = i2;
    }

    @Override // g.a.u0
    public void realmSet$update(String str) {
        this.update = str;
    }

    public void setAuthor(String str) {
        realmSet$author(str);
    }

    public void setDesc(String str) {
        realmSet$desc(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setImage(String str) {
        if (str.startsWith(e.a("XxYXFA=="))) {
            realmSet$image(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(f.e.a.j.r.f.a.a) ? f.e.a.j.r.f.a.b : f.e.a.j.r.f.a.a);
        sb.append(str);
        realmSet$image(sb.toString());
    }

    public void setTitle(String str) {
        realmSet$title(str);
    }

    public void setType(int i2) {
        realmSet$type(i2);
    }

    public void setUpdate(String str) {
        realmSet$update(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(realmGet$type());
        parcel.writeString(realmGet$id());
        parcel.writeString(realmGet$image());
        parcel.writeString(realmGet$title());
        parcel.writeString(realmGet$desc());
        parcel.writeString(realmGet$author());
        parcel.writeString(realmGet$update());
    }

    public ItemInfo(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$type(parcel.readInt());
        realmSet$id(parcel.readString());
        realmSet$image(parcel.readString());
        realmSet$title(parcel.readString());
        realmSet$desc(parcel.readString());
        realmSet$author(parcel.readString());
        realmSet$update(parcel.readString());
    }
}
