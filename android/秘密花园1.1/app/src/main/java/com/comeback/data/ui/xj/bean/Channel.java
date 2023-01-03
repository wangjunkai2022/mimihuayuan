package com.comeback.data.ui.xj.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class Channel extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<RowsBean> actorrows;
        public List<RowsBean> rows;
        public String sample_params;

        /* loaded from: classes.dex */
        public static class RowsBean implements Parcelable {
            public static final Parcelable.Creator<RowsBean> CREATOR = new a();
            public String addtime;
            public String age;
            public String avatar;
            public String coverpic;
            public String cup;
            public String downnum;
            public String intro;
            public String itemcount;
            public String spid;
            public String spname;
            public String sptype;
            public String updatetime;
            public String upnum;
            public List<VideoBean> vodrows;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<RowsBean> {
                @Override // android.os.Parcelable.Creator
                public RowsBean createFromParcel(Parcel parcel) {
                    return new RowsBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public RowsBean[] newArray(int i2) {
                    return new RowsBean[i2];
                }
            }

            public RowsBean(Parcel parcel) {
                this.spid = parcel.readString();
                this.sptype = parcel.readString();
                this.spname = parcel.readString();
                this.intro = parcel.readString();
                this.coverpic = parcel.readString();
                this.avatar = parcel.readString();
                this.cup = parcel.readString();
                this.age = parcel.readString();
                this.upnum = parcel.readString();
                this.downnum = parcel.readString();
                this.addtime = parcel.readString();
                this.updatetime = parcel.readString();
                this.itemcount = parcel.readString();
                this.vodrows = parcel.createTypedArrayList(VideoBean.CREATOR);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getAddtime() {
                return this.addtime;
            }

            public String getAge() {
                return this.age;
            }

            public String getAvatar() {
                return this.avatar;
            }

            public String getCoverpic() {
                return this.coverpic;
            }

            public String getCup() {
                return this.cup;
            }

            public String getDownnum() {
                return this.downnum;
            }

            public String getIntro() {
                return this.intro;
            }

            public String getItemcount() {
                return f.b.a.a.a.n(new StringBuilder(), this.itemcount, "3uHL");
            }

            public String getSpid() {
                return this.spid;
            }

            public String getSpname() {
                return this.spname;
            }

            public String getSptype() {
                return this.sptype;
            }

            public String getUpdatetime() {
                return this.updatetime;
            }

            public String getUpnum() {
                return this.upnum;
            }

            public List<VideoBean> getVodrows() {
                return this.vodrows;
            }

            public void setAddtime(String str) {
                this.addtime = str;
            }

            public void setAge(String str) {
                this.age = str;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setCoverpic(String str) {
                this.coverpic = str;
            }

            public void setCup(String str) {
                this.cup = str;
            }

            public void setDownnum(String str) {
                this.downnum = str;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void setItemcount(String str) {
                this.itemcount = str;
            }

            public void setSpid(String str) {
                this.spid = str;
            }

            public void setSpname(String str) {
                this.spname = str;
            }

            public void setSptype(String str) {
                this.sptype = str;
            }

            public void setUpdatetime(String str) {
                this.updatetime = str;
            }

            public void setUpnum(String str) {
                this.upnum = str;
            }

            public void setVodrows(List<VideoBean> list) {
                this.vodrows = list;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.spid);
                parcel.writeString(this.sptype);
                parcel.writeString(this.spname);
                parcel.writeString(this.intro);
                parcel.writeString(this.coverpic);
                parcel.writeString(this.avatar);
                parcel.writeString(this.cup);
                parcel.writeString(this.age);
                parcel.writeString(this.upnum);
                parcel.writeString(this.downnum);
                parcel.writeString(this.addtime);
                parcel.writeString(this.updatetime);
                parcel.writeString(this.itemcount);
                parcel.writeTypedList(this.vodrows);
            }
        }

        public List<RowsBean> getActorrows() {
            return this.actorrows;
        }

        public List<RowsBean> getRows() {
            return this.rows;
        }

        public String getSample_params() {
            return this.sample_params;
        }

        public void setActorrows(List<RowsBean> list) {
            this.actorrows = list;
        }

        public void setRows(List<RowsBean> list) {
            this.rows = list;
        }

        public void setSample_params(String str) {
            this.sample_params = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
