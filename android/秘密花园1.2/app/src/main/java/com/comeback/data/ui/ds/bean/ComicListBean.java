package com.comeback.data.ui.ds.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ComicListBean extends k {
    public int code;
    public List<DsItemBean> data;
    public int total;

    public int getCode() {
        return this.code;
    }

    public List<DsItemBean> getData() {
        return this.data;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DsItemBean> list) {
        this.data = list;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
