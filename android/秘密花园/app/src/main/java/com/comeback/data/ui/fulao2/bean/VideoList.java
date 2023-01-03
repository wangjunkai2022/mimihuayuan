package com.comeback.data.ui.fulao2.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public ResponseBean response;
    public StatusBean status;

    /* loaded from: classes.dex */
    public static class ResponseBean {
        public String actor_cup;
        public int page;
        public int total_results;
        public List<VideosBean> videos;

        public String getActor_cup() {
            return this.actor_cup;
        }

        public int getPage() {
            return this.page;
        }

        public int getTotal_results() {
            return this.total_results;
        }

        public List<VideosBean> getVideos() {
            Iterator<VideosBean> it = this.videos.iterator();
            while (it.hasNext()) {
                if (it.next().getMain_tagString().contains(e.a("YSsz"))) {
                    it.remove();
                }
            }
            return this.videos;
        }

        public void setActor_cup(String str) {
            this.actor_cup = str;
        }

        public void setPage(int i2) {
            this.page = i2;
        }

        public void setTotal_results(int i2) {
            this.total_results = i2;
        }

        public void setVideos(List<VideosBean> list) {
            this.videos = list;
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
