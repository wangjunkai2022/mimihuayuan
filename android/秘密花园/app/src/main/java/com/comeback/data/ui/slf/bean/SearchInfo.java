package com.comeback.data.ui.slf.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class SearchInfo extends j {
    public List<CategoriesBean> categories;
    public List<KeywordsBean> keywords;
    public List<OrderBean> order;

    /* loaded from: classes.dex */
    public static class CategoriesBean {
        public String id;
        public String name;
        public String selected;

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String getSelected() {
            return this.selected;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSelected(String str) {
            this.selected = str;
        }
    }

    /* loaded from: classes.dex */
    public static class KeywordsBean {
        public String name;

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes.dex */
    public static class OrderBean {
        public String code;
        public String name;
        public String selected;

        public String getCode() {
            return this.code;
        }

        public String getName() {
            return this.name;
        }

        public String getSelected() {
            return this.selected;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSelected(String str) {
            this.selected = str;
        }
    }

    public List<CategoriesBean> getCategories() {
        return this.categories;
    }

    public List<KeywordsBean> getKeywords() {
        return this.keywords;
    }

    public List<OrderBean> getOrder() {
        return this.order;
    }

    public void setCategories(List<CategoriesBean> list) {
        this.categories = list;
    }

    public void setKeywords(List<KeywordsBean> list) {
        this.keywords = list;
    }

    public void setOrder(List<OrderBean> list) {
        this.order = list;
    }
}
