package com.comeback.data.ui.nana.bean;

import f.e.a.f.k;
import f.e.a.j.h0.m.d;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
public class ActorBean extends k {
    public ResponseEntity response;
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        public List<ActorsEntity> actors;
        public int page;
        public int total_results;

        /* loaded from: classes.dex */
        public class ActorsEntity implements Serializable {
            public int actor_id;
            public boolean actor_like;
            public String actor_name;
            public String actor_url;

            public ActorsEntity() {
            }

            public int getActor_id() {
                return this.actor_id;
            }

            public String getActor_name() {
                return this.actor_name;
            }

            public String getActor_url() {
                return d.b + this.actor_url;
            }

            public boolean isActor_like() {
                return this.actor_like;
            }

            public void setActor_id(int i2) {
                this.actor_id = i2;
            }

            public void setActor_like(boolean z) {
                this.actor_like = z;
            }

            public void setActor_name(String str) {
                this.actor_name = str;
            }

            public void setActor_url(String str) {
                this.actor_url = str;
            }
        }

        public ResponseEntity() {
        }

        public List<ActorsEntity> getActors() {
            return this.actors;
        }

        public int getPage() {
            return this.page;
        }

        public int getTotal_results() {
            return this.total_results;
        }

        public void setActors(List<ActorsEntity> list) {
            this.actors = list;
        }

        public void setPage(int i2) {
            this.page = i2;
        }

        public void setTotal_results(int i2) {
            this.total_results = i2;
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
