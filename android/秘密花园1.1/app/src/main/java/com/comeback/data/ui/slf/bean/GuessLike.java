package com.comeback.data.ui.slf.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class GuessLike extends j {
    public List<SLFItemBean> items;
    public String subTitle;
    public String title;

    public List<SLFItemBean> getItems() {
        return this.items;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public void setItems(List<SLFItemBean> list) {
        this.items = list;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
