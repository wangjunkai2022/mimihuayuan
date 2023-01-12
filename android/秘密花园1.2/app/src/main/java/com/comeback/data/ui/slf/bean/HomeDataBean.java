package com.comeback.data.ui.slf.bean;

import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.List;

/* loaded from: classes.dex */
public class HomeDataBean extends k {
    public List<CategoriesBean> categories;
    public String defaultKeywords;
    @b("new")
    public NewBean newX;
    public NewBean rank;
    public NewBean special;

    /* loaded from: classes.dex */
    public static class NewBean {
        public String filter;
        public List<SLFItemBean> items;
        public String subTitle;
        public String title;

        public String getFilter() {
            return this.filter;
        }

        public List<SLFItemBean> getItems() {
            return this.items;
        }

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setFilter(String str) {
            this.filter = str;
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

    public List<CategoriesBean> getCategories() {
        return this.categories;
    }

    public String getDefaultKeywords() {
        return this.defaultKeywords;
    }

    public NewBean getNewX() {
        return this.newX;
    }

    public NewBean getRank() {
        return this.rank;
    }

    public NewBean getSpecial() {
        return this.special;
    }

    public void setCategories(List<CategoriesBean> list) {
        this.categories = list;
    }

    public void setDefaultKeywords(String str) {
        this.defaultKeywords = str;
    }

    public void setNewX(NewBean newBean) {
        this.newX = newBean;
    }

    public void setRank(NewBean newBean) {
        this.rank = newBean;
    }

    public void setSpecial(NewBean newBean) {
        this.special = newBean;
    }
}
