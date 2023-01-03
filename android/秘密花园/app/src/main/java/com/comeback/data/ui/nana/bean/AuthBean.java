package com.comeback.data.ui.nana.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class AuthBean extends j {
    public ResponseEntity response;
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        public String code;
        public String token;

        public ResponseEntity() {
        }

        public String getCode() {
            return this.code;
        }

        public String getToken() {
            return this.token;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setToken(String str) {
            this.token = str;
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
