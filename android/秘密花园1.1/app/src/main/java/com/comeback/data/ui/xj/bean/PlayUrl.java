package com.comeback.data.ui.xj.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class PlayUrl extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String httpurl;
        public int isfavorite;
        public String xxx_api_auth;

        public String getHttpurl() {
            return this.httpurl;
        }

        public int getIsfavorite() {
            return this.isfavorite;
        }

        public String getXxx_api_auth() {
            return this.xxx_api_auth;
        }

        public void setHttpurl(String str) {
            this.httpurl = str;
        }

        public void setIsfavorite(int i2) {
            this.isfavorite = i2;
        }

        public void setXxx_api_auth(String str) {
            this.xxx_api_auth = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
