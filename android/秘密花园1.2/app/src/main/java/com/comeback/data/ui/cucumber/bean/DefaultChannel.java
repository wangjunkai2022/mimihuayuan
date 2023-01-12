package com.comeback.data.ui.cucumber.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class DefaultChannel extends k implements Parcelable {
    public static final Parcelable.Creator<DefaultChannel> CREATOR = new a();
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public Object add;
        public int channelType;
        public boolean hasSelection;
        public int id;
        public String name;
        public int parentModule;
        public int showType;

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

        public DataBean(Parcel parcel) {
            this.channelType = parcel.readInt();
            this.hasSelection = parcel.readByte() != 0;
            this.id = parcel.readInt();
            this.name = parcel.readString();
            this.parentModule = parcel.readInt();
            this.showType = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Object getAdd() {
            return this.add;
        }

        public int getChannelType() {
            return this.channelType;
        }

        public int getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public int getParentModule() {
            return this.parentModule;
        }

        public int getShowType() {
            return this.showType;
        }

        public boolean isHasSelection() {
            return this.hasSelection;
        }

        public void setAdd(Object obj) {
            this.add = obj;
        }

        public void setChannelType(int i2) {
            this.channelType = i2;
        }

        public void setHasSelection(boolean z) {
            this.hasSelection = z;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setParentModule(int i2) {
            this.parentModule = i2;
        }

        public void setShowType(int i2) {
            this.showType = i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.channelType);
            parcel.writeByte(this.hasSelection ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.id);
            parcel.writeString(this.name);
            parcel.writeInt(this.parentModule);
            parcel.writeInt(this.showType);
        }
    }

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<DefaultChannel> {
        @Override // android.os.Parcelable.Creator
        public DefaultChannel createFromParcel(Parcel parcel) {
            return new DefaultChannel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DefaultChannel[] newArray(int i2) {
            return new DefaultChannel[i2];
        }
    }

    public DefaultChannel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.code);
        parcel.writeString(this.enumCode);
        parcel.writeString(this.msg);
        parcel.writeByte(this.success ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.data);
    }

    public DefaultChannel(Parcel parcel) {
        this.code = parcel.readInt();
        this.enumCode = parcel.readString();
        this.msg = parcel.readString();
        this.success = parcel.readByte() != 0;
        this.data = parcel.createTypedArrayList(DataBean.CREATOR);
    }
}
