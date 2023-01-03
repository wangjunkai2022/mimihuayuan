package com.comeback.data.ui.maomi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.comeback.data.ui.maomi.bean.VoiceDetailList;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VoiceList extends j {
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
            public String anchor_id;
            public String browses;
            public String id;
            public String name;
            public String thumb;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<DataBean> {
                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // android.os.Parcelable.Creator
                public DataBean createFromParcel(Parcel parcel) {
                    return new DataBean(parcel);
                }

                /* Return type fixed from 'java.lang.Object[]' to match base method */
                @Override // android.os.Parcelable.Creator
                public DataBean[] newArray(int i2) {
                    return new DataBean[i2];
                }
            }

            public DataBean() {
            }

            public void copy(VoiceDetailList.DataBeanX.DataBean dataBean) {
                this.id = dataBean.getId();
                this.name = dataBean.getName();
                this.thumb = dataBean.getImage();
                this.browses = dataBean.getPlays();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getAnchor_id() {
                return this.anchor_id;
            }

            public String getBrowses() {
                return this.browses;
            }

            public String getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public String getThumb() {
                return this.thumb;
            }

            public void setAnchor_id(String str) {
                this.anchor_id = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.id);
                parcel.writeString(this.anchor_id);
                parcel.writeString(this.name);
                parcel.writeString(this.thumb);
                parcel.writeString(this.browses);
            }

            public DataBean(Parcel parcel) {
                this.id = parcel.readString();
                this.anchor_id = parcel.readString();
                this.name = parcel.readString();
                this.thumb = parcel.readString();
                this.browses = parcel.readString();
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
