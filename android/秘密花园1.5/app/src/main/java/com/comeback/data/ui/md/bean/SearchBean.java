package com.comeback.data.ui.md.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class SearchBean extends k {
    public int code;
    public VideoList data;
    public String msg;

    public int getCode() {
        return this.code;
    }

    public VideoList getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(VideoList videoList) {
        this.data = videoList;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
