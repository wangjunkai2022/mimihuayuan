package com.comeback.data.ui.xiami.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ImageList extends j {
    public int code;
    public List<DataBean> data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public long addTime;
        public String categoryTitle;
        public String galleryCounts;
        public String galleryId;
        public String galleryImage;
        public String galleryTitle;
        public String galleryViews;

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
            this.galleryId = parcel.readString();
            this.galleryTitle = parcel.readString();
            this.galleryImage = parcel.readString();
            this.galleryViews = parcel.readString();
            this.categoryTitle = parcel.readString();
            this.galleryCounts = parcel.readString();
            this.addTime = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getAddTime() {
            return this.addTime;
        }

        public String getCategoryTitle() {
            return this.categoryTitle;
        }

        public String getGalleryCounts() {
            StringBuilder sb = new StringBuilder();
            sb.append(e.a("0ufS"));
            return f.b.a.a.a.n(sb, this.galleryCounts, "0t7D");
        }

        public String getGalleryId() {
            return this.galleryId;
        }

        public String getGalleryImage() {
            return this.galleryImage;
        }

        public String getGalleryTitle() {
            return this.galleryTitle;
        }

        public String getGalleryViews() {
            return this.galleryViews;
        }

        public void setAddTime(long j2) {
            this.addTime = j2;
        }

        public void setCategoryTitle(String str) {
            this.categoryTitle = str;
        }

        public void setGalleryCounts(String str) {
            this.galleryCounts = str;
        }

        public void setGalleryId(String str) {
            this.galleryId = str;
        }

        public void setGalleryImage(String str) {
            this.galleryImage = str;
        }

        public void setGalleryTitle(String str) {
            this.galleryTitle = str;
        }

        public void setGalleryViews(String str) {
            this.galleryViews = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.galleryId);
            parcel.writeString(this.galleryTitle);
            parcel.writeString(this.galleryImage);
            parcel.writeString(this.galleryViews);
            parcel.writeString(this.categoryTitle);
            parcel.writeString(this.galleryCounts);
            parcel.writeLong(this.addTime);
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
