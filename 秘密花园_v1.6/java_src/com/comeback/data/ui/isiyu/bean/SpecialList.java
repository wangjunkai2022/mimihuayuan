package com.comeback.data.ui.isiyu.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class SpecialList extends k {
    public int current_page;
    public List<DataBean> data;
    public String first_page_url;
    public int from;
    public int last_page;
    public String last_page_url;
    public String next_page_url;
    public String path;
    public String per_page;
    public Object prev_page_url;
    public int to;
    public int total;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String cover_oss_filename;
        public String created_at;
        public Object deleted_at;
        public String id;
        public String intro;
        public int sort;
        public int status;
        public String title;
        public String updated_at;

        public String getCover_oss_filename() {
            return this.cover_oss_filename;
        }

        public String getCreated_at() {
            return this.created_at;
        }

        public Object getDeleted_at() {
            return this.deleted_at;
        }

        public String getId() {
            return this.id;
        }

        public String getIntro() {
            return this.intro;
        }

        public int getSort() {
            return this.sort;
        }

        public int getStatus() {
            return this.status;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUpdated_at() {
            return this.updated_at;
        }

        public void setCover_oss_filename(String str) {
            this.cover_oss_filename = str;
        }

        public void setCreated_at(String str) {
            this.created_at = str;
        }

        public void setDeleted_at(Object obj) {
            this.deleted_at = obj;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setIntro(String str) {
            this.intro = str;
        }

        public void setSort(int i2) {
            this.sort = i2;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUpdated_at(String str) {
            this.updated_at = str;
        }
    }

    public int getCurrent_page() {
        return this.current_page;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getFirst_page_url() {
        return this.first_page_url;
    }

    public int getFrom() {
        return this.from;
    }

    public int getLast_page() {
        return this.last_page;
    }

    public String getLast_page_url() {
        return this.last_page_url;
    }

    public String getNext_page_url() {
        return this.next_page_url;
    }

    public String getPath() {
        return this.path;
    }

    public String getPer_page() {
        return this.per_page;
    }

    public Object getPrev_page_url() {
        return this.prev_page_url;
    }

    public int getTo() {
        return this.to;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCurrent_page(int i2) {
        this.current_page = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setFirst_page_url(String str) {
        this.first_page_url = str;
    }

    public void setFrom(int i2) {
        this.from = i2;
    }

    public void setLast_page(int i2) {
        this.last_page = i2;
    }

    public void setLast_page_url(String str) {
        this.last_page_url = str;
    }

    public void setNext_page_url(String str) {
        this.next_page_url = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPer_page(String str) {
        this.per_page = str;
    }

    public void setPrev_page_url(Object obj) {
        this.prev_page_url = obj;
    }

    public void setTo(int i2) {
        this.to = i2;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
