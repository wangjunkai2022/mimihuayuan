package com.comeback.data.ui.aimeiju.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class BaseUrlBean extends j {
    public int code;
    public DataEntity data;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String baseUrl;
        public String basecode;
        public String feedback_Url;
        public int gameCode;
        public String gameUrl;
        public String invite_url;
        public String ios_Url;
        public int playTimes;

        public DataEntity() {
        }

        public String getBaseUrl() {
            return this.baseUrl;
        }

        public String getBasecode() {
            return this.basecode;
        }

        public String getFeedback_Url() {
            return this.feedback_Url;
        }

        public int getGameCode() {
            return this.gameCode;
        }

        public String getGameUrl() {
            return this.gameUrl;
        }

        public String getInvite_url() {
            return this.invite_url;
        }

        public String getIos_Url() {
            return this.ios_Url;
        }

        public int getPlayTimes() {
            return this.playTimes;
        }

        public void setBaseUrl(String str) {
            this.baseUrl = str;
        }

        public void setBasecode(String str) {
            this.basecode = str;
        }

        public void setFeedback_Url(String str) {
            this.feedback_Url = str;
        }

        public void setGameCode(int i2) {
            this.gameCode = i2;
        }

        public void setGameUrl(String str) {
            this.gameUrl = str;
        }

        public void setInvite_url(String str) {
            this.invite_url = str;
        }

        public void setIos_Url(String str) {
            this.ios_Url = str;
        }

        public void setPlayTimes(int i2) {
            this.playTimes = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }
}
