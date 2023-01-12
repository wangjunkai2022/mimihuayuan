package com.comeback.data.ui.km2.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class VideoInfo extends k {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public Km2Video video_info;

        public Km2Video getVideo_info() {
            return this.video_info;
        }

        public void setVideo_info(Km2Video km2Video) {
            this.video_info = km2Video;
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
