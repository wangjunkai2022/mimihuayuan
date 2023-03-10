package com.comeback.data.ui.xiami.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class Category extends k {
    public int code;
    public List<DataBean> data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public String gategoryType;
        public int id;
        public List<InfoBean> info;
        public String title;
        public String type;

        /* loaded from: classes.dex */
        public static class InfoBean implements Parcelable {
            public static final Parcelable.Creator<InfoBean> CREATOR = new a();
            public String categoryId;
            public String childGategoryType;
            public int childId;
            public String childTitle;
            public String childType;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<InfoBean> {
                @Override // android.os.Parcelable.Creator
                public InfoBean createFromParcel(Parcel parcel) {
                    return new InfoBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public InfoBean[] newArray(int i2) {
                    return new InfoBean[i2];
                }
            }

            public InfoBean(Parcel parcel) {
                this.childId = parcel.readInt();
                this.childTitle = parcel.readString();
                this.childType = parcel.readString();
                this.childGategoryType = parcel.readString();
                this.categoryId = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getCategoryId() {
                return this.categoryId;
            }

            public String getChildGategoryType() {
                return this.childGategoryType;
            }

            public int getChildId() {
                return this.childId;
            }

            public String getChildTitle() {
                return this.childTitle;
            }

            public String getChildType() {
                return this.childType;
            }

            public void setCategoryId(String str) {
                this.categoryId = str;
            }

            public void setChildGategoryType(String str) {
                this.childGategoryType = str;
            }

            public void setChildId(int i2) {
                this.childId = i2;
            }

            public void setChildTitle(String str) {
                this.childTitle = str;
            }

            public void setChildType(String str) {
                this.childType = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.childId);
                parcel.writeString(this.childTitle);
                parcel.writeString(this.childType);
                parcel.writeString(this.childGategoryType);
                parcel.writeString(this.categoryId);
            }
        }

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
            this.id = parcel.readInt();
            this.title = parcel.readString();
            this.type = parcel.readString();
            this.gategoryType = parcel.readString();
            this.info = parcel.createTypedArrayList(InfoBean.CREATOR);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getGategoryType() {
            return this.gategoryType;
        }

        public int getId() {
            return this.id;
        }

        public List<InfoBean> getInfo() {
            return this.info;
        }

        public String getTitle() {
            return this.title;
        }

        public String getType() {
            return this.type;
        }

        public void setGategoryType(String str) {
            this.gategoryType = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setInfo(List<InfoBean> list) {
            this.info = list;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeString(this.title);
            parcel.writeString(this.type);
            parcel.writeString(this.gategoryType);
            parcel.writeTypedList(this.info);
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
