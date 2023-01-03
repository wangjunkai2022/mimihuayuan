package com.comeback.data.ui.maomi.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class CartoonWatch extends j {
    public int code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int comic_id;
        public String create_at;
        public int id;
        public String image;
        public int list_id;
        public int sort;
        public String update_at;

        public int getComic_id() {
            return this.comic_id;
        }

        public String getCreate_at() {
            return this.create_at;
        }

        public int getId() {
            return this.id;
        }

        public String getImage() {
            return this.image;
        }

        public int getList_id() {
            return this.list_id;
        }

        public int getSort() {
            return this.sort;
        }

        public String getUpdate_at() {
            return this.update_at;
        }

        public void setComic_id(int i2) {
            this.comic_id = i2;
        }

        public void setCreate_at(String str) {
            this.create_at = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setList_id(int i2) {
            this.list_id = i2;
        }

        public void setSort(int i2) {
            this.sort = i2;
        }

        public void setUpdate_at(String str) {
            this.update_at = str;
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
