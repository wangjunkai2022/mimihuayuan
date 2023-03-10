package com.comeback.data.ui.bale.bean;

import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class RankList extends k {
    public String message;
    public ResultBean result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public int current_page;
        public List<BaleVideoInfo> data;
        public String first_page_url;
        public int from;
        public int last_page;
        public String last_page_url;
        public String next_page_url;
        public String path;
        public int per_page;
        public Object prev_page_url;
        public int to;
        public int total;

        public int getCurrent_page() {
            return this.current_page;
        }

        public List<BaleVideoInfo> getData() {
            Iterator<BaleVideoInfo> it = this.data.iterator();
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
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

        public int getPer_page() {
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

        public void setData(List<BaleVideoInfo> list) {
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

        public void setPer_page(int i2) {
            this.per_page = i2;
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

    public String getMessage() {
        return this.message;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
