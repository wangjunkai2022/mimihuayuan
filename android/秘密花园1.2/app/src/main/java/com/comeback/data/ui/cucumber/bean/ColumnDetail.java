package com.comeback.data.ui.cucumber.bean;

import f.e.a.f.k;
import f.e.a.k.b;
import java.util.List;

/* loaded from: classes.dex */
public class ColumnDetail extends k {
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int id;
        public String intro;
        public String navName;
        public String photoAddr;

        public int getId() {
            return this.id;
        }

        public String getIntro() {
            return this.intro;
        }

        public String getNavName() {
            return this.navName;
        }

        public String getPhotoAddr() {
            return b.Q + this.photoAddr;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIntro(String str) {
            this.intro = str;
        }

        public void setNavName(String str) {
            this.navName = str;
        }

        public void setPhotoAddr(String str) {
            this.photoAddr = str;
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
