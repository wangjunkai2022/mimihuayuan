package com.comeback.data.ui.nana.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class TagBean extends j {
    public ResponseEntity response;
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        public List<String> tags;

        public ResponseEntity() {
        }

        public List<String> getTags() {
            return this.tags;
        }

        public void setTags(List<String> list) {
            this.tags = list;
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
