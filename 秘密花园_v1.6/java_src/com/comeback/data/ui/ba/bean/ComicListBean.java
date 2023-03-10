package com.comeback.data.ui.ba.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ComicListBean extends k {
    public int code;
    public String msg;
    public ResultsBean results;

    /* loaded from: classes.dex */
    public static class ResultsBean {
        public List<BaComicsBean> comics;
        public int page;
        public int size;
        public int total;

        public List<BaComicsBean> getComics() {
            return this.comics;
        }

        public int getPage() {
            return this.page;
        }

        public int getSize() {
            return this.size;
        }

        public int getTotal() {
            return this.total;
        }

        public void setComics(List<BaComicsBean> list) {
            this.comics = list;
        }

        public void setPage(int i2) {
            this.page = i2;
        }

        public void setSize(int i2) {
            this.size = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultsBean getResults() {
        return this.results;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResults(ResultsBean resultsBean) {
        this.results = resultsBean;
    }
}
