package com.comeback.data.ui.mimei.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class HostBean extends k {
    public List<ApiBean> api;
    public List<ComicBean> comic;
    public List<FictionBean> fiction;
    public List<ImgBean> img;
    public List<StreamBean> stream;

    /* loaded from: classes.dex */
    public static class ApiBean {
        public int status;
        public String url;

        public int getStatus() {
            return this.status;
        }

        public String getUrl() {
            return this.url;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class ComicBean {
        public String chain;
        public int status;
        public String tsurl;
        public String url;

        public String getChain() {
            return this.chain;
        }

        public int getStatus() {
            return this.status;
        }

        public String getTsurl() {
            return this.tsurl;
        }

        public String getUrl() {
            return this.url;
        }

        public void setChain(String str) {
            this.chain = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setTsurl(String str) {
            this.tsurl = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class FictionBean {
        public int status;
        public String url;

        public int getStatus() {
            return this.status;
        }

        public String getUrl() {
            return this.url;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class ImgBean {
        public int status;
        public String url;

        public int getStatus() {
            return this.status;
        }

        public String getUrl() {
            return this.url;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class StreamBean {
        public String chain;
        public String name;
        public int status;
        public String tsurl;
        public String url;

        public String getChain() {
            return this.chain;
        }

        public String getName() {
            return this.name;
        }

        public int getStatus() {
            return this.status;
        }

        public String getTsurl() {
            return this.tsurl;
        }

        public String getUrl() {
            return this.url;
        }

        public void setChain(String str) {
            this.chain = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setTsurl(String str) {
            this.tsurl = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public List<ApiBean> getApi() {
        return this.api;
    }

    public List<ComicBean> getComic() {
        return this.comic;
    }

    public List<FictionBean> getFiction() {
        return this.fiction;
    }

    public List<ImgBean> getImg() {
        return this.img;
    }

    public List<StreamBean> getStream() {
        return this.stream;
    }

    public void setApi(List<ApiBean> list) {
        this.api = list;
    }

    public void setComic(List<ComicBean> list) {
        this.comic = list;
    }

    public void setFiction(List<FictionBean> list) {
        this.fiction = list;
    }

    public void setImg(List<ImgBean> list) {
        this.img = list;
    }

    public void setStream(List<StreamBean> list) {
        this.stream = list;
    }
}
