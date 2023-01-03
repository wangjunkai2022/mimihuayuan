package com.comeback.data.ui.aimeiju.bean;

import com.comeback.data.ui.aimeiju.bean.ListBean;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public int code;
    public List<ListBean.DataBean.VodBean> data;

    public int getCode() {
        return this.code;
    }

    public List<ListBean.DataBean.VodBean> getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<ListBean.DataBean.VodBean> list) {
        this.data = list;
    }
}
