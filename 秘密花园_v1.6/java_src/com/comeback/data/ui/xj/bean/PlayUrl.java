package com.comeback.data.ui.xj.bean;

import android.text.TextUtils;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class PlayUrl extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String httpurl;
        public String httpurl_preview;
        public int isfavorite;
        public String xxx_api_auth;

        public String getHttpurl() {
            if (TextUtils.isEmpty(this.httpurl)) {
                return this.httpurl_preview;
            }
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
