package com.comeback.data.ui.ds.bean;

import f.e.a.f.j;
import f.e.a.k.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BannerBean extends j {
    public int code;
    public String msg;
    public List<ResultsBean> results;

    /* loaded from: classes.dex */
    public static class ResultsBean {
        public String recommend_url;
        public int show_detail_id;

        public String getRecommend_url() {
            if (this.recommend_url.contains(b.Z)) {
                this.recommend_url = this.recommend_url.replace(b.Z, b.a0);
            }
            return this.recommend_url;
        }

        public int getShow_detail_id() {
            return this.show_detail_id;
        }

        public void setRecommend_url(String str) {
            this.recommend_url = str;
        }

        public void setShow_detail_id(int i2) {
            this.show_detail_id = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<String> getImages() {
        ArrayList arrayList = new ArrayList();
        for (ResultsBean resultsBean : getResults()) {
            arrayList.add(resultsBean.getRecommend_url());
        }
        return arrayList;
    }

    public String getMsg() {
        return this.msg;
    }

    public List<ResultsBean> getResults() {
        return this.results;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResults(List<ResultsBean> list) {
        this.results = list;
    }
}
