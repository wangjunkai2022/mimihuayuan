package com.comeback.data.ui.sex8.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class YXHostBean extends j implements Parcelable {
    public static final Parcelable.Creator<YXHostBean> CREATOR = new a();
    public String desc;
    public String dml_flag;
    public String dml_time;
    public String hits_count;
    public String host_id;
    public String img;
    public String init_time;
    public String name;
    public String pos;
    public String radio_count;
    public String sale_number;
    public String views;
    public String works_count;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<YXHostBean> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public YXHostBean createFromParcel(Parcel parcel) {
            return new YXHostBean(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public YXHostBean[] newArray(int i2) {
            return new YXHostBean[i2];
        }
    }

    public YXHostBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getDml_flag() {
        return this.dml_flag;
    }

    public String getDml_time() {
        return this.dml_time;
    }

    public String getHits_count() {
        return e.a("09jZgtvn1o/p") + this.hits_count;
    }

    public String getHost_id() {
        return this.host_id;
    }

    public String getImg() {
        return this.img;
    }

    public String getInit_time() {
        return this.init_time;
    }

    public String getName() {
        return this.name;
    }

    public String getPos() {
        return this.pos;
    }

    public String getRadio_count() {
        return this.radio_count;
    }

    public String getSale_number() {
        return this.sale_number;
    }

    public String getViews() {
        return this.views;
    }

    public String getWorks_count() {
        return e.a("09rwjNXi1o/p") + this.works_count;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setDml_flag(String str) {
        this.dml_flag = str;
    }

    public void setDml_time(String str) {
        this.dml_time = str;
    }

    public void setHits_count(String str) {
        this.hits_count = str;
    }

    public void setHost_id(String str) {
        this.host_id = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setInit_time(String str) {
        this.init_time = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPos(String str) {
        this.pos = str;
    }

    public void setRadio_count(String str) {
        this.radio_count = str;
    }

    public void setSale_number(String str) {
        this.sale_number = str;
    }

    public void setViews(String str) {
        this.views = str;
    }

    public void setWorks_count(String str) {
        this.works_count = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.desc);
        parcel.writeString(this.dml_flag);
        parcel.writeString(this.dml_time);
        parcel.writeString(this.hits_count);
        parcel.writeString(this.host_id);
        parcel.writeString(this.img);
        parcel.writeString(this.init_time);
        parcel.writeString(this.name);
        parcel.writeString(this.pos);
        parcel.writeString(this.radio_count);
        parcel.writeString(this.sale_number);
        parcel.writeString(this.views);
        parcel.writeString(this.works_count);
    }

    public YXHostBean(Parcel parcel) {
        this.desc = parcel.readString();
        this.dml_flag = parcel.readString();
        this.dml_time = parcel.readString();
        this.hits_count = parcel.readString();
        this.host_id = parcel.readString();
        this.img = parcel.readString();
        this.init_time = parcel.readString();
        this.name = parcel.readString();
        this.pos = parcel.readString();
        this.radio_count = parcel.readString();
        this.sale_number = parcel.readString();
        this.views = parcel.readString();
        this.works_count = parcel.readString();
    }
}
