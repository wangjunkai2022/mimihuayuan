package com.comeback.data.ui.xiami.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class NovelDetail extends k {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String content;
        public List<InfoBean> info;

        /* loaded from: classes.dex */
        public static class InfoBean {
            public Object ad;
            public long addTime;
            public String author;
            public String categoryTitle;
            public Object content;
            public int fictionId;
            public String title;
            public Object url;
            public String views;

            public Object getAd() {
                return this.ad;
            }

            public long getAddTime() {
                return this.addTime;
            }

            public String getAuthor() {
                return this.author;
            }

            public String getCategoryTitle() {
                return this.categoryTitle;
            }

            public Object getContent() {
                return this.content;
            }

            public int getFictionId() {
                return this.fictionId;
            }

            public String getTitle() {
                return this.title;
            }

            public Object getUrl() {
                return this.url;
            }

            public String getViews() {
                return this.views;
            }

            public void setAd(Object obj) {
                this.ad = obj;
            }

            public void setAddTime(long j2) {
                this.addTime = j2;
            }

            public void setAuthor(String str) {
                this.author = str;
            }

            public void setCategoryTitle(String str) {
                this.categoryTitle = str;
            }

            public void setContent(Object obj) {
                this.content = obj;
            }

            public void setFictionId(int i2) {
                this.fictionId = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUrl(Object obj) {
                this.url = obj;
            }

            public void setViews(String str) {
                this.views = str;
            }
        }

        public String getContent() {
            return this.content;
        }

        public List<InfoBean> getInfo() {
            return this.info;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setInfo(List<InfoBean> list) {
            this.info = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
