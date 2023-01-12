package com.comeback.data.ui.ba.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.k.b;
import g.a.f1.n;
import g.a.g0;
import g.a.p0;
import java.util.List;

/* loaded from: classes.dex */
public class BaComicsBean extends g0 implements Parcelable, p0 {
    public static final Parcelable.Creator<BaComicsBean> CREATOR = new a();
    public String author;
    public String describes;
    public double follow_num;
    public int heat;
    public int is_adult;
    public int is_end;
    public List<String> operate_tags;
    public String show_id;
    public String small_picture;
    public List<String> tags;
    public String title;
    public int total;
    public int update_episodes;
    public int update_time;
    public int watch_num;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<BaComicsBean> {
        @Override // android.os.Parcelable.Creator
        public BaComicsBean createFromParcel(Parcel parcel) {
            return new BaComicsBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BaComicsBean[] newArray(int i2) {
            return new BaComicsBean[i2];
        }
    }

    public BaComicsBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAuthor() {
        return e.a("09//jOv21o/p") + realmGet$author();
    }

    public String getDescribes() {
        return realmGet$describes();
    }

    public double getFollow_num() {
        return realmGet$follow_num();
    }

    public int getHeat() {
        return realmGet$heat();
    }

    public int getIs_adult() {
        return realmGet$is_adult();
    }

    public int getIs_end() {
        return realmGet$is_end();
    }

    public List<String> getOperate_tags() {
        return this.operate_tags;
    }

    public String getShow_id() {
        return realmGet$show_id();
    }

    public String getSmall_picture() {
        if (realmGet$small_picture().contains(b.Z)) {
            realmSet$small_picture(realmGet$small_picture().replace(b.Z, b.a0));
        }
        return realmGet$small_picture();
    }

    public String getTagString() {
        if (getOperate_tags().size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : getOperate_tags()) {
            f.b.a.a.a.B(sb, str, "Sw==");
        }
        return sb.substring(0, sb.length() - 1);
    }

    public List<String> getTags() {
        return this.tags;
    }

    public String getTitle() {
        return realmGet$title();
    }

    public int getTotal() {
        return realmGet$total();
    }

    public int getUpdate_episodes() {
        return realmGet$update_episodes();
    }

    public int getUpdate_time() {
        return realmGet$update_time();
    }

    public int getWatch_num() {
        return realmGet$watch_num();
    }

    @Override // g.a.p0
    public String realmGet$author() {
        return this.author;
    }

    @Override // g.a.p0
    public String realmGet$describes() {
        return this.describes;
    }

    @Override // g.a.p0
    public double realmGet$follow_num() {
        return this.follow_num;
    }

    @Override // g.a.p0
    public int realmGet$heat() {
        return this.heat;
    }

    @Override // g.a.p0
    public int realmGet$is_adult() {
        return this.is_adult;
    }

    @Override // g.a.p0
    public int realmGet$is_end() {
        return this.is_end;
    }

    @Override // g.a.p0
    public String realmGet$show_id() {
        return this.show_id;
    }

    @Override // g.a.p0
    public String realmGet$small_picture() {
        return this.small_picture;
    }

    @Override // g.a.p0
    public String realmGet$title() {
        return this.title;
    }

    @Override // g.a.p0
    public int realmGet$total() {
        return this.total;
    }

    @Override // g.a.p0
    public int realmGet$update_episodes() {
        return this.update_episodes;
    }

    @Override // g.a.p0
    public int realmGet$update_time() {
        return this.update_time;
    }

    @Override // g.a.p0
    public int realmGet$watch_num() {
        return this.watch_num;
    }

    @Override // g.a.p0
    public void realmSet$author(String str) {
        this.author = str;
    }

    @Override // g.a.p0
    public void realmSet$describes(String str) {
        this.describes = str;
    }

    @Override // g.a.p0
    public void realmSet$follow_num(double d2) {
        this.follow_num = d2;
    }

    @Override // g.a.p0
    public void realmSet$heat(int i2) {
        this.heat = i2;
    }

    @Override // g.a.p0
    public void realmSet$is_adult(int i2) {
        this.is_adult = i2;
    }

    @Override // g.a.p0
    public void realmSet$is_end(int i2) {
        this.is_end = i2;
    }

    @Override // g.a.p0
    public void realmSet$show_id(String str) {
        this.show_id = str;
    }

    @Override // g.a.p0
    public void realmSet$small_picture(String str) {
        this.small_picture = str;
    }

    @Override // g.a.p0
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // g.a.p0
    public void realmSet$total(int i2) {
        this.total = i2;
    }

    @Override // g.a.p0
    public void realmSet$update_episodes(int i2) {
        this.update_episodes = i2;
    }

    @Override // g.a.p0
    public void realmSet$update_time(int i2) {
        this.update_time = i2;
    }

    @Override // g.a.p0
    public void realmSet$watch_num(int i2) {
        this.watch_num = i2;
    }

    public void setAuthor(String str) {
        realmSet$author(str);
    }

    public void setDescribes(String str) {
        realmSet$describes(str);
    }

    public void setFollow_num(double d2) {
        realmSet$follow_num(d2);
    }

    public void setHeat(int i2) {
        realmSet$heat(i2);
    }

    public void setIs_adult(int i2) {
        realmSet$is_adult(i2);
    }

    public void setIs_end(int i2) {
        realmSet$is_end(i2);
    }

    public void setOperate_tags(List<String> list) {
        this.operate_tags = list;
    }

    public void setShow_id(String str) {
        realmSet$show_id(str);
    }

    public void setSmall_picture(String str) {
        realmSet$small_picture(str);
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setTitle(String str) {
        realmSet$title(str);
    }

    public void setTotal(int i2) {
        realmSet$total(i2);
    }

    public void setUpdate_episodes(int i2) {
        realmSet$update_episodes(i2);
    }

    public void setUpdate_time(int i2) {
        realmSet$update_time(i2);
    }

    public void setWatch_num(int i2) {
        realmSet$watch_num(i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$author());
        parcel.writeString(realmGet$describes());
        parcel.writeDouble(realmGet$follow_num());
        parcel.writeInt(realmGet$heat());
        parcel.writeInt(realmGet$is_adult());
        parcel.writeInt(realmGet$is_end());
        parcel.writeString(realmGet$show_id());
        parcel.writeString(realmGet$small_picture());
        parcel.writeString(realmGet$title());
        parcel.writeInt(realmGet$total());
        parcel.writeInt(realmGet$update_episodes());
        parcel.writeInt(realmGet$update_time());
        parcel.writeInt(realmGet$watch_num());
        parcel.writeStringList(this.operate_tags);
        parcel.writeStringList(this.tags);
    }

    public BaComicsBean(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$author(parcel.readString());
        realmSet$describes(parcel.readString());
        realmSet$follow_num(parcel.readDouble());
        realmSet$heat(parcel.readInt());
        realmSet$is_adult(parcel.readInt());
        realmSet$is_end(parcel.readInt());
        realmSet$show_id(parcel.readString());
        realmSet$small_picture(parcel.readString());
        realmSet$title(parcel.readString());
        realmSet$total(parcel.readInt());
        realmSet$update_episodes(parcel.readInt());
        realmSet$update_time(parcel.readInt());
        realmSet$watch_num(parcel.readInt());
        this.operate_tags = parcel.createStringArrayList();
        this.tags = parcel.createStringArrayList();
    }
}
