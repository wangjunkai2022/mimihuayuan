package com.comeback.data.ui.bale.bean;

import f.e.a.f.k;
/* loaded from: classes.dex */
public class VideoPlay extends k {
    public String message;
    public Result result;
    public int status;

    /* loaded from: classes.dex */
    public class Result {
        public String url;

        public Result() {
        }

        public String getUrl() {
            return this.url;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public Result getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
