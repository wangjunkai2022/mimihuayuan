package com.comeback.data.ui.maomi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class Cartoon extends j {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<DataBean> data;
        public int total_page;

        /* loaded from: classes.dex */
        public static class DataBean implements Parcelable {
            public static final Parcelable.Creator<DataBean> CREATOR = new a();
            public String descriptions;
            public String id;
            public String thumb;
            public String title;

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

            public String getDescriptions() {
                return this.descriptions;
            }

            public String getId() {
                return this.id;
            }

            public String getThumb() {
                return this.thumb;
            }

            public String getTitle() {
                return this.title;
            }

            public void setDescriptions(String str) {
                this.descriptions = str;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.id);
                parcel.writeString(this.title);
                parcel.writeString(this.thumb);
                parcel.writeString(this.descriptions);
            }

            public DataBean(Parcel parcel) {
                this.id = parcel.readString();
                this.title = parcel.readString();
                this.thumb = parcel.readString();
                this.descriptions = parcel.readString();
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }

        public void setTotal_page(int i2) {
            this.total_page = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBeanX getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBeanX dataBeanX) {
        this.data = dataBeanX;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
