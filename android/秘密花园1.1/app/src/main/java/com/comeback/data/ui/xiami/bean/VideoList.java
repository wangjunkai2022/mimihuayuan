package com.comeback.data.ui.xiami.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public int code;
    public List<VideoInfo> data;
    public String msg;

    public int getCode() {
        return this.code;
    }

    public List<VideoInfo> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<VideoInfo> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
