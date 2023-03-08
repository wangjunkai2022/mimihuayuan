package com.comeback.data.ui.movieCloud.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class PlayIndex extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String httpurl;
        public int isfavorite;
        public int isshare;
        public int iszan;
        public int lastplayindex;
        public int limittime;
        public String xxx_api_auth;

        public String getHttpurl() {
            return this.httpurl;
        }

        public int getIsfavorite() {
            return this.isfavorite;
        }

        public int getIsshare() {
            return this.isshare;
        }

        public int getIszan() {
            return this.iszan;
        }

        public int getLastplayindex() {
            return this.lastplayindex;
        }

        public int getLimittime() {
            return this.limittime;
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

        public void setIsshare(int i2) {
            this.isshare = i2;
        }

        public void setIszan(int i2) {
            this.iszan = i2;
        }

        public void setLastplayindex(int i2) {
            this.lastplayindex = i2;
        }

        public void setLimittime(int i2) {
            this.limittime = i2;
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
