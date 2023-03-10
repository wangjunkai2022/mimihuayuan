package com.comeback.data.ui.nana.bean;

import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.List;
/* loaded from: classes.dex */
public class MenuBean extends k {
    @b("response")
    public List<ResponseEntity> response;
    @b(NotificationCompat.CATEGORY_STATUS)
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        @b("id")
        public String id;
        @b("layout")
        public String layout;
        @b("search")
        public String search;
        @b(NotificationCompatJellybean.KEY_TITLE)
        public String title;

        public ResponseEntity() {
        }

        public String getId() {
            return this.id;
        }

        public String getLayout() {
            return this.layout;
        }

        public String getSearch() {
            return this.search;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setLayout(String str) {
            this.layout = str;
        }

        public void setSearch(String str) {
            this.search = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes.dex */
    public class StatusEntity {
        @b("code")
        public int code;
        @b("message")
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

    public List<ResponseEntity> getResponse() {
        return this.response;
    }

    public StatusEntity getStatus() {
        return this.status;
    }

    public void setResponse(List<ResponseEntity> list) {
        this.response = list;
    }

    public void setStatus(StatusEntity statusEntity) {
        this.status = statusEntity;
    }
}
