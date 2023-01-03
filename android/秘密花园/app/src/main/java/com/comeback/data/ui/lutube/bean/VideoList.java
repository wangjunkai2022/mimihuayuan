package com.comeback.data.ui.lutube.bean;

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
        public String actor_name;
        public int page;
        public int total_results;
        public List<LVideosBean> videos;

        public String getActor_cup() {
            return this.actor_cup;
        }

        public String getActor_name() {
            return this.actor_name;
        }

        public int getPage() {
            return this.page;
        }

        public int getTotal_results() {
            return this.total_results;
        }

        public List<LVideosBean> getVideos() {
            Iterator<LVideosBean> it = this.videos.iterator();
            while (it.hasNext()) {
                List<String> main_tag = it.next().getMain_tag();
                if (main_tag != null && main_tag.size() != 0) {
                    Iterator<String> it2 = main_tag.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().equals(e.a("YSsz"))) {
                                it.remove();
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
            return this.videos;
        }

        public void setActor_cup(String str) {
            this.actor_cup = str;
        }

        public void setActor_name(String str) {
            this.actor_name = str;
        }

        public void setPage(int i2) {
            this.page = i2;
        }

        public void setTotal_results(int i2) {
            this.total_results = i2;
        }

        public void setVideos(List<LVideosBean> list) {
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
