package com.comeback.data.ui.km.bean;

import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class PicList extends k {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String count;
        public List<ListBean> list;
        public int page;
        public String pageCount;

        /* loaded from: classes.dex */
        public static class ListBean {
            public String mc_id;
            public ArrayList<String> mp_content;
            public String mp_created;
            public String mp_id;
            public String mp_title;
            public String mp_updated;

            public String getMc_id() {
                return this.mc_id;
            }

            public ArrayList<String> getMp_content() {
                return this.mp_content;
            }

            public String getMp_created() {
                return this.mp_created;
            }

            public String getMp_id() {
                return this.mp_id;
            }

            public String getMp_title() {
                return this.mp_title;
            }

            public String getMp_updated() {
                return this.mp_updated;
            }

            public void setMc_id(String str) {
                this.mc_id = str;
            }

            public void setMp_content(ArrayList<String> arrayList) {
                this.mp_content = arrayList;
            }

            public void setMp_created(String str) {
                this.mp_created = str;
            }

            public void setMp_id(String str) {
                this.mp_id = str;
            }

            public void setMp_title(String str) {
                this.mp_title = str;
            }

            public void setMp_updated(String str) {
                this.mp_updated = str;
            }
        }

        public String getCount() {
            return this.count;
        }

        public List<ListBean> getList() {
            return this.list;
        }

        public int getPage() {
            return this.page;
        }

        public String getPageCount() {
            return this.pageCount;
        }

        public void setCount(String str) {
            this.count = str;
        }

        public void setList(List<ListBean> list) {
            this.list = list;
        }

        public void setPage(int i2) {
            this.page = i2;
        }

        public void setPageCount(String str) {
            this.pageCount = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
