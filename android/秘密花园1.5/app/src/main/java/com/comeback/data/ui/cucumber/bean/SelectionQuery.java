package com.comeback.data.ui.cucumber.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class SelectionQuery extends k {
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int clsId;
        public int id;
        public List<Video> movList;
        public String name;
        public int navId;
        public int selectionType;

        public int getClsId() {
            return this.clsId;
        }

        public int getId() {
            return this.id;
        }

        public List<Video> getMovList() {
            return this.movList;
        }

        public String getName() {
            return this.name;
        }

        public int getNavId() {
            return this.navId;
        }

        public int getSelectionType() {
            return this.selectionType;
        }

        public void setClsId(int i2) {
            this.clsId = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setMovList(List<Video> list) {
            this.movList = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setNavId(int i2) {
            this.navId = i2;
        }

        public void setSelectionType(int i2) {
            this.selectionType = i2;
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
