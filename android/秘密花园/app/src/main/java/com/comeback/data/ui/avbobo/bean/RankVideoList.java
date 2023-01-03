package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RankVideoList extends j {
    public int code;
    public List<DataBean> data;
    public String message;
    public int page;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int __v;
        public String _id;
        public int count;
        public String createdAt;
        public String date;
        public MovieDetail detail;
        public String movie_id;
        public int trend_m;
        public int trend_w;
        public String type;

        public int getCount() {
            return this.count;
        }

        public String getCreatedAt() {
            return this.createdAt;
        }

        public String getDate() {
            return this.date;
        }

        public MovieDetail getDetail() {
            return this.detail;
        }

        public String getMovie_id() {
            return this.movie_id;
        }

        public int getTrend_m() {
            return this.trend_m;
        }

        public int getTrend_w() {
            return this.trend_w;
        }

        public String getType() {
            return this.type;
        }

        public int get__v() {
            return this.__v;
        }

        public String get_id() {
            return this._id;
        }

        public void setCount(int i2) {
            this.count = i2;
        }

        public void setCreatedAt(String str) {
            this.createdAt = str;
        }

        public void setDate(String str) {
            this.date = str;
        }

        public void setDetail(MovieDetail movieDetail) {
            this.detail = movieDetail;
        }

        public void setMovie_id(String str) {
            this.movie_id = str;
        }

        public void setTrend_m(int i2) {
            this.trend_m = i2;
        }

        public void setTrend_w(int i2) {
            this.trend_w = i2;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void set__v(int i2) {
            this.__v = i2;
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

    public List<MovieDetail> getMovieList() {
        ArrayList arrayList = new ArrayList();
        for (DataBean dataBean : getData()) {
            MovieDetail detail = dataBean.getDetail();
            detail.setPlayCount(dataBean.getCount());
            arrayList.add(detail);
        }
        return arrayList;
    }

    public int getPage() {
        return this.page;
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

    public void setPage(int i2) {
        this.page = i2;
    }
}
