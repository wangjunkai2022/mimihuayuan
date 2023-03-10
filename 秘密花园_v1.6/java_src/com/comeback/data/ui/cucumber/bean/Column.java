package com.comeback.data.ui.cucumber.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.k;
import f.e.a.k.b;
import java.util.List;
/* loaded from: classes.dex */
public class Column extends k {
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int cls;
        public int id;
        public String modName;
        public List<SubclassBean> subclass;
        public String thumbnail;

        /* loaded from: classes.dex */
        public static class SubclassBean implements Parcelable {
            public static final Parcelable.Creator<SubclassBean> CREATOR = new a();
            public Object clsId;
            public String intro;
            public String lastUpdateTime;
            public int navCls;
            public int navId;
            public String navImage;
            public String navLink;
            public String navName;
            public int navOrder;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<SubclassBean> {
                @Override // android.os.Parcelable.Creator
                public SubclassBean createFromParcel(Parcel parcel) {
                    return new SubclassBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public SubclassBean[] newArray(int i2) {
                    return new SubclassBean[i2];
                }
            }

            public SubclassBean(Parcel parcel) {
                this.intro = parcel.readString();
                this.lastUpdateTime = parcel.readString();
                this.navCls = parcel.readInt();
                this.navId = parcel.readInt();
                this.navImage = parcel.readString();
                this.navLink = parcel.readString();
                this.navName = parcel.readString();
                this.navOrder = parcel.readInt();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public Object getClsId() {
                return this.clsId;
            }

            public String getIntro() {
                return this.intro;
            }

            public String getLastUpdateTime() {
                return this.lastUpdateTime;
            }

            public int getNavCls() {
                return this.navCls;
            }

            public int getNavId() {
                return this.navId;
            }

            public String getNavImage() {
                return b.Q + this.navImage;
            }

            public String getNavLink() {
                return this.navLink;
            }

            public String getNavName() {
                return this.navName;
            }

            public int getNavOrder() {
                return this.navOrder;
            }

            public void setClsId(Object obj) {
                this.clsId = obj;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void setLastUpdateTime(String str) {
                this.lastUpdateTime = str;
            }

            public void setNavCls(int i2) {
                this.navCls = i2;
            }

            public void setNavId(int i2) {
                this.navId = i2;
            }

            public void setNavImage(String str) {
                this.navImage = str;
            }

            public void setNavLink(String str) {
                this.navLink = str;
            }

            public void setNavName(String str) {
                this.navName = str;
            }

            public void setNavOrder(int i2) {
                this.navOrder = i2;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.intro);
                parcel.writeString(this.lastUpdateTime);
                parcel.writeInt(this.navCls);
                parcel.writeInt(this.navId);
                parcel.writeString(this.navImage);
                parcel.writeString(this.navLink);
                parcel.writeString(this.navName);
                parcel.writeInt(this.navOrder);
            }
        }

        public int getCls() {
            return this.cls;
        }

        public int getId() {
            return this.id;
        }

        public String getModName() {
            return this.modName;
        }

        public List<SubclassBean> getSubclass() {
            return this.subclass;
        }

        public String getThumbnail() {
            return this.thumbnail;
        }

        public void setCls(int i2) {
            this.cls = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setModName(String str) {
            this.modName = str;
        }

        public void setSubclass(List<SubclassBean> list) {
            this.subclass = list;
        }

        public void setThumbnail(String str) {
            this.thumbnail = str;
        }
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
}
