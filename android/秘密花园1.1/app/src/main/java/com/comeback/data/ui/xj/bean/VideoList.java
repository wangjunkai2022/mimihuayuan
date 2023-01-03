package com.comeback.data.ui.xj.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String action;
        public int now;
        public String sample_params;
        public List<VideoBean> vodrows;

        public String getAction() {
            return this.action;
        }

        public int getNow() {
            return this.now;
        }

        public String getSample_params() {
            return this.sample_params;
        }

        public List<VideoBean> getVodrows() {
            return this.vodrows;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public void setNow(int i2) {
            this.now = i2;
        }

        public void setSample_params(String str) {
            this.sample_params = str;
        }

        public void setVodrows(List<VideoBean> list) {
            this.vodrows = list;
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
