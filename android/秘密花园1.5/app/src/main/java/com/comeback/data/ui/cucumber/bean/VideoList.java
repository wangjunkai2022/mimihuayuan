package com.comeback.data.ui.cucumber.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends k {
    public int code;
    public int count;
    public List<Video> data;
    public String enumCode;
    public String msg;
    public int pageCount;
    public int pageNo;
    public int pageSize;
    public boolean success;

    public int getCode() {
        return this.code;
    }

    public int getCount() {
        return this.count;
    }

    public List<Video> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPageCount() {
        return this.pageCount;
    }

    public int getPageNo() {
        return this.pageNo;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setData(List<Video> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPageCount(int i2) {
        this.pageCount = i2;
    }

    public void setPageNo(int i2) {
        this.pageNo = i2;
    }

    public void setPageSize(int i2) {
        this.pageSize = i2;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
