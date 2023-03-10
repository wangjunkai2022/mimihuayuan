package com.comeback.data.ui.maomi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class AnchorList extends k {
    public int code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public String avatar;
        public String id;
        public boolean is_follow;
        public String name;
        public int sex;

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

        public String getAvatar() {
            return this.avatar;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public int getSex() {
            return this.sex;
        }

        public boolean isIs_follow() {
            return this.is_follow;
        }

        public void setAvatar(String str) {
            this.avatar = str;
        }

        public void setIs_follow(boolean z) {
            this.is_follow = z;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSex(int i2) {
            this.sex = i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.id);
            parcel.writeString(this.avatar);
            parcel.writeString(this.name);
            parcel.writeInt(this.sex);
            parcel.writeByte(this.is_follow ? (byte) 1 : (byte) 0);
        }

        public DataBean(Parcel parcel) {
            this.id = parcel.readString();
            this.avatar = parcel.readString();
            this.name = parcel.readString();
            this.sex = parcel.readInt();
            this.is_follow = parcel.readByte() != 0;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
