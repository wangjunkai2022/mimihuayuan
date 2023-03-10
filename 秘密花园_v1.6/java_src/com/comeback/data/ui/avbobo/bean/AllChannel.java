package com.comeback.data.ui.avbobo.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class AllChannel extends k {
    public int code;
    public List<DataBean> data;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public String desc;
        public boolean editable;
        public String id;
        public String name;
        public int order_index;
        public boolean recommendable;
        public boolean searchable;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<DataBean> {
            @Override // android.os.Parcelable.Creator
            public DataBean createFromParcel(Parcel parcel) {
                return new DataBean(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public DataBean[] newArray(int i2) {
                return new DataBean[i2];
            }
        }

        public DataBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getDesc() {
            return this.desc;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public int getOrder_index() {
            return this.order_index;
        }

        public boolean isEditable() {
            return this.editable;
        }

        public boolean isRecommendable() {
            return this.recommendable;
        }

        public boolean isSearchable() {
            return this.searchable;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setEditable(boolean z) {
            this.editable = z;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOrder_index(int i2) {
            this.order_index = i2;
        }

        public void setRecommendable(boolean z) {
            this.recommendable = z;
        }

        public void setSearchable(boolean z) {
            this.searchable = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.id);
            parcel.writeString(this.name);
            parcel.writeString(this.desc);
            parcel.writeByte(this.editable ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.searchable ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.recommendable ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.order_index);
        }

        public DataBean(Parcel parcel) {
            this.id = parcel.readString();
            this.name = parcel.readString();
            this.desc = parcel.readString();
            this.editable = parcel.readByte() != 0;
            this.searchable = parcel.readByte() != 0;
            this.recommendable = parcel.readByte() != 0;
            this.order_index = parcel.readInt();
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }
}
