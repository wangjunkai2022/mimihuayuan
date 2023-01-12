package com.comeback.data.ui.xiami.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NovelList extends k {
    public int code;
    public List<DataBean> data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean implements Parcelable {
        public static final Parcelable.Creator<DataBean> CREATOR = new a();
        public long addTime;
        public String author;
        public String categoryTitle;
        public Object content;
        public String fictionId;
        public String title;
        public Object url;
        public String views;

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
            this.title = parcel.readString();
            this.author = parcel.readString();
            this.views = parcel.readString();
            this.addTime = parcel.readLong();
            this.categoryTitle = parcel.readString();
            this.fictionId = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getAddTime() {
            return this.addTime;
        }

        public String getAuthor() {
            return this.author;
        }

        public String getCategoryTitle() {
            return this.categoryTitle;
        }

        public Object getContent() {
            return this.content;
        }

        public String getFictionId() {
            return this.fictionId;
        }

        public String getTitle() {
            return this.title;
        }

        public Object getUrl() {
            return this.url;
        }

        public String getViews() {
            return this.views;
        }

        public void setAddTime(long j2) {
            this.addTime = j2;
        }

        public void setAuthor(String str) {
            this.author = str;
        }

        public void setCategoryTitle(String str) {
            this.categoryTitle = str;
        }

        public void setContent(Object obj) {
            this.content = obj;
        }

        public void setFictionId(String str) {
            this.fictionId = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUrl(Object obj) {
            this.url = obj;
        }

        public void setViews(String str) {
            this.views = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.title);
            parcel.writeString(this.author);
            parcel.writeString(this.views);
            parcel.writeLong(this.addTime);
            parcel.writeString(this.categoryTitle);
            parcel.writeString(this.fictionId);
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        Iterator<DataBean> it = this.data.iterator();
        while (it.hasNext()) {
            if (TextUtils.isEmpty(it.next().getFictionId())) {
                it.remove();
            }
        }
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
