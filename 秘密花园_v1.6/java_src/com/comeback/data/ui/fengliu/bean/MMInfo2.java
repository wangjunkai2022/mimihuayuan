package com.comeback.data.ui.fengliu.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.a.a.b.g.h;
import f.e.a.e;
import f.e.a.f.k;
import f.e.a.k.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MMInfo2 extends k implements Parcelable {
    public static final Parcelable.Creator<MMInfo2> CREATOR = new a();
    public String address;
    public String cha_id;
    public String cityCodeReadable;
    public int city_code;
    public String consume_lv;
    public String coverPictureHrefs;
    public int created_at;
    public String desc;
    public String girl_age;
    public String girl_beauty;
    public int id;
    public String phone;
    public String pictureHrefs;
    public int published_at;
    public String qq;
    public int score;
    public String serve_list;
    public String title;
    public int updated_at;
    public String wechat;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<MMInfo2> {
        @Override // android.os.Parcelable.Creator
        public MMInfo2 createFromParcel(Parcel parcel) {
            return new MMInfo2(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MMInfo2[] newArray(int i2) {
            return new MMInfo2[i2];
        }
    }

    public MMInfo2(Parcel parcel) {
        this.qq = parcel.readString();
        this.address = parcel.readString();
        this.serve_list = parcel.readString();
        this.wechat = parcel.readString();
        this.city_code = parcel.readInt();
        this.created_at = parcel.readInt();
        this.title = parcel.readString();
        this.pictureHrefs = parcel.readString();
        this.score = parcel.readInt();
        this.girl_age = parcel.readString();
        this.updated_at = parcel.readInt();
        this.phone = parcel.readString();
        this.coverPictureHrefs = parcel.readString();
        this.consume_lv = parcel.readString();
        this.id = parcel.readInt();
        this.girl_beauty = parcel.readString();
        this.published_at = parcel.readInt();
        this.cityCodeReadable = parcel.readString();
        this.desc = parcel.readString();
        this.cha_id = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public String getCha_id() {
        return this.cha_id;
    }

    public String getCityCodeReadable() {
        return this.cityCodeReadable;
    }

    public int getCity_code() {
        return this.city_code;
    }

    public String getConsume_lv() {
        return this.consume_lv;
    }

    public String getCoverPictureHrefs() {
        if (TextUtils.isEmpty(this.coverPictureHrefs)) {
            return "";
        }
        if (this.coverPictureHrefs.startsWith(e.a("XxYXFA=="))) {
            if (this.coverPictureHrefs.contains(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"))) {
                this.coverPictureHrefs = this.coverPictureHrefs.replace(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"), b.n0);
            }
            return this.coverPictureHrefs;
        }
        return e.a("XxYXFFE=") + this.coverPictureHrefs;
    }

    public int getCreated_at() {
        return this.created_at;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getGirl_age() {
        return this.girl_age;
    }

    public String getGirl_beauty() {
        return this.girl_beauty;
    }

    public int getId() {
        return this.id;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPictureHrefs() {
        return this.pictureHrefs;
    }

    public List<String> getPictureList() {
        String[] split;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.pictureHrefs)) {
            for (String str : this.pictureHrefs.split(e.a("Gw=="))) {
                if (!str.startsWith(e.a("XxYXFA==")) && str.startsWith(e.a("GE0="))) {
                    arrayList.add(e.a("XxYXFFE=") + str);
                } else {
                    if (str.contains(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"))) {
                        str = str.replace(e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"), b.n0);
                    }
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    public String getPublished_at() {
        return h.Q0(this.published_at * 1000);
    }

    public String getQq() {
        return this.qq;
    }

    public int getScore() {
        return this.score;
    }

    public String getServe_list() {
        return this.serve_list;
    }

    public String getTitle() {
        return this.title;
    }

    public int getUpdated_at() {
        return this.updated_at;
    }

    public String getWechat() {
        return this.wechat;
    }

    public boolean isChaImage() {
        String str = this.cha_id;
        return (str == null || str == "") ? false : true;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setCha_id(String str) {
        this.cha_id = str;
    }

    public void setCityCodeReadable(String str) {
        this.cityCodeReadable = str;
    }

    public void setCity_code(int i2) {
        this.city_code = i2;
    }

    public void setConsume_lv(String str) {
        this.consume_lv = str;
    }

    public void setCoverPictureHrefs(String str) {
        this.coverPictureHrefs = str;
    }

    public void setCreated_at(int i2) {
        this.created_at = i2;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setGirl_age(String str) {
        this.girl_age = str;
    }

    public void setGirl_beauty(String str) {
        this.girl_beauty = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setPictureHrefs(String str) {
        this.pictureHrefs = str;
    }

    public void setPublished_at(int i2) {
        this.published_at = i2;
    }

    public void setQq(String str) {
        this.qq = str;
    }

    public void setScore(int i2) {
        this.score = i2;
    }

    public void setServe_list(String str) {
        this.serve_list = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUpdated_at(int i2) {
        this.updated_at = i2;
    }

    public void setWechat(String str) {
        this.wechat = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.qq);
        parcel.writeString(this.address);
        parcel.writeString(this.serve_list);
        parcel.writeString(this.wechat);
        parcel.writeInt(this.city_code);
        parcel.writeInt(this.created_at);
        parcel.writeString(this.title);
        parcel.writeString(this.pictureHrefs);
        parcel.writeInt(this.score);
        parcel.writeString(this.girl_age);
        parcel.writeInt(this.updated_at);
        parcel.writeString(this.phone);
        parcel.writeString(this.coverPictureHrefs);
        parcel.writeString(this.consume_lv);
        parcel.writeInt(this.id);
        parcel.writeString(this.girl_beauty);
        parcel.writeInt(this.published_at);
        parcel.writeString(this.cityCodeReadable);
        parcel.writeString(this.desc);
        parcel.writeString(this.cha_id);
    }
}
