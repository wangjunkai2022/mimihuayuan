package com.comeback.data.ui.sex8.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class YXHostList extends j {
    public List<YXHostBean> data;
    public String msg;
    public int status;

    public List<YXHostBean> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getStatus() {
        return this.status;
    }

    public void setData(List<YXHostBean> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
