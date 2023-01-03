package com.comeback.data.ui.fulao2.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class StarList extends j {
    public ResponseBean response;
    public StatusBean status;

    /* loaded from: classes.dex */
    public static class ResponseBean {
        public List<ActorsBean> actors;
        public int total_results;

        public List<ActorsBean> getActors() {
            return this.actors;
        }

        public int getTotal_results() {
            return this.total_results;
        }

        public void setActors(List<ActorsBean> list) {
            this.actors = list;
        }

        public void setTotal_results(int i2) {
            this.total_results = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class StatusBean {
        public int code;
        public String message;

        public int getCode() {
            return this.code;
        }

        public String getMessage() {
            return this.message;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }
    }

    public ResponseBean getResponse() {
        return this.response;
    }

    public StatusBean getStatus() {
        return this.status;
    }

    public void setResponse(ResponseBean responseBean) {
        this.response = responseBean;
    }

    public void setStatus(StatusBean statusBean) {
        this.status = statusBean;
    }
}
