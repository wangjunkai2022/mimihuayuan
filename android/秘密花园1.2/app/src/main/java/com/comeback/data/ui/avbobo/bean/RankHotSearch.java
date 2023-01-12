package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class RankHotSearch extends k {
    public int code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String _id;
        public int count;
        public String keyword;

        public int getCount() {
            return this.count;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public String get_id() {
            return this._id;
        }

        public void setCount(int i2) {
            this.count = i2;
        }

        public void setKeyword(String str) {
            this.keyword = str;
        }

        public void set_id(String str) {
            this._id = str;
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
