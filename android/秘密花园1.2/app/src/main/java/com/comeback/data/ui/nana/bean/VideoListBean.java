package com.comeback.data.ui.nana.bean;

import f.e.a.f.k;
import f.e.a.g.a;
import f.e.a.j.h0.m.d;
import java.util.List;

/* loaded from: classes.dex */
public class VideoListBean extends k {
    public ResponseEntity response;
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        public String actor_cup;
        public int page;
        public int total_results;
        public List<VideosEntity> videos;

        /* loaded from: classes.dex */
        public class VideosEntity implements a {
            public String cover;
            public List<?> main_tag;
            public List<?> second_tag;
            public String thumb;
            public int video_duration;
            public String video_id;
            public boolean video_like;
            public String video_title;

            public VideosEntity() {
            }

            @Override // f.e.a.g.a
            public String getCover() {
                return d.b + this.cover;
            }

            @Override // f.e.a.g.a
            public String getId() {
                return this.video_id;
            }

            public List<?> getMain_tag() {
                return this.main_tag;
            }

            public List<?> getSecond_tag() {
                return this.second_tag;
            }

            public String getThumb() {
                return this.thumb;
            }

            @Override // f.e.a.g.a
            public String getTitle() {
                return this.video_title;
            }

            public int getVideo_duration() {
                return this.video_duration;
            }

            public String getVideo_id() {
                return this.video_id;
            }

            public String getVideo_title() {
                return this.video_title;
            }

            public boolean isVideo_like() {
                return this.video_like;
            }

            public void setCover(String str) {
                this.cover = str;
            }

            public void setMain_tag(List<?> list) {
                this.main_tag = list;
            }

            public void setSecond_tag(List<?> list) {
                this.second_tag = list;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public void setVideo_duration(int i2) {
                this.video_duration = i2;
            }

            public void setVideo_id(String str) {
                this.video_id = str;
            }

            public void setVideo_like(boolean z) {
                this.video_like = z;
            }

            public void setVideo_title(String str) {
                this.video_title = str;
            }
        }

        public ResponseEntity() {
        }

        public String getActor_cup() {
            return this.actor_cup;
        }

        public int getPage() {
            return this.page;
        }

        public int getTotal_results() {
            return this.total_results;
        }

        public List<VideosEntity> getVideos() {
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

        public void setVideos(List<VideosEntity> list) {
            this.videos = list;
        }
    }

    /* loaded from: classes.dex */
    public class StatusEntity {
        public int code;
        public String message;

        public StatusEntity() {
        }

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

    public ResponseEntity getResponse() {
        return this.response;
    }

    public StatusEntity getStatus() {
        return this.status;
    }

    public void setResponse(ResponseEntity responseEntity) {
        this.response = responseEntity;
    }

    public void setStatus(StatusEntity statusEntity) {
        this.status = statusEntity;
    }
}
