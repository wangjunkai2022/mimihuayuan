package com.comeback.data.ui.maomi.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class NovelList extends j {
    public int code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int cate_id;
        public String create_at;
        public int id;
        public boolean is_collect;
        public Object thumb;
        public String title;
        public String update_at;
        public String url;

        public int getCate_id() {
            return this.cate_id;
        }

        public String getCreate_at() {
            return this.create_at;
        }

        public int getId() {
            return this.id;
        }

        public Object getThumb() {
            return this.thumb;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUpdate_at() {
            return this.update_at;
        }

        public String getUrl() {
            return this.url;
        }

        public boolean isIs_collect() {
            return this.is_collect;
        }

        public void setCate_id(int i2) {
            this.cate_id = i2;
        }

        public void setCreate_at(String str) {
            this.create_at = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIs_collect(boolean z) {
            this.is_collect = z;
        }

        public void setThumb(Object obj) {
            this.thumb = obj;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUpdate_at(String str) {
            this.update_at = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
