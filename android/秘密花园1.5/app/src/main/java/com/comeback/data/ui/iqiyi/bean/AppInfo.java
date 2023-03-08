package com.comeback.data.ui.iqiyi.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class AppInfo extends k {
    public AdsBean ads;
    public List<?> apiDomain;
    public String appCenter;
    public String autoSkip;
    public String canUse;
    public String colseMessage;
    public String contectEmail;
    public String description;
    public String feedbackLink;
    public String isNeed;
    public boolean is_new;
    public String shareLink;
    public List<?> startImg;
    public String tipsContent;
    public String tipsKey;
    public String tipsTitle;
    public TokenBean token;
    public String url;
    public String version;
    public String videoReferer;

    /* loaded from: classes.dex */
    public static class AdsBean {
        public String id;
        public String img;
        public String link;
        public String name;
        public String time;
        public int type;

        public String getId() {
            return this.id;
        }

        public String getImg() {
            return this.img;
        }

        public String getLink() {
            return this.link;
        }

        public String getName() {
            return this.name;
        }

        public String getTime() {
            return this.time;
        }

        public int getType() {
            return this.type;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setLink(String str) {
            this.link = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setTime(String str) {
            this.time = str;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class TokenBean {
        public String accessToken;
        public int expiresIn;
        public String ext;
        public String userId;
        public String username;

        public String getAccessToken() {
            return this.accessToken;
        }

        public int getExpiresIn() {
            return this.expiresIn;
        }

        public String getExt() {
            return this.ext;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUsername() {
            return this.username;
        }

        public void setAccessToken(String str) {
            this.accessToken = str;
        }

        public void setExpiresIn(int i2) {
            this.expiresIn = i2;
        }

        public void setExt(String str) {
            this.ext = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUsername(String str) {
            this.username = str;
        }
    }

    public AdsBean getAds() {
        return this.ads;
    }

    public List<?> getApiDomain() {
        return this.apiDomain;
    }

    public String getAppCenter() {
        return this.appCenter;
    }

    public String getAutoSkip() {
        return this.autoSkip;
    }

    public String getCanUse() {
        return this.canUse;
    }

    public String getColseMessage() {
        return this.colseMessage;
    }

    public String getContectEmail() {
        return this.contectEmail;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFeedbackLink() {
        return this.feedbackLink;
    }

    public String getIsNeed() {
        return this.isNeed;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public List<?> getStartImg() {
        return this.startImg;
    }

    public String getTipsContent() {
        return this.tipsContent;
    }

    public String getTipsKey() {
        return this.tipsKey;
    }

    public String getTipsTitle() {
        return this.tipsTitle;
    }

    public TokenBean getToken() {
        return this.token;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVersion() {
        return this.version;
    }

    public String getVideoReferer() {
        return this.videoReferer;
    }

    public boolean isIs_new() {
        return this.is_new;
    }

    public void setAds(AdsBean adsBean) {
        this.ads = adsBean;
    }

    public void setApiDomain(List<?> list) {
        this.apiDomain = list;
    }

    public void setAppCenter(String str) {
        this.appCenter = str;
    }

    public void setAutoSkip(String str) {
        this.autoSkip = str;
    }

    public void setCanUse(String str) {
        this.canUse = str;
    }

    public void setColseMessage(String str) {
        this.colseMessage = str;
    }

    public void setContectEmail(String str) {
        this.contectEmail = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFeedbackLink(String str) {
        this.feedbackLink = str;
    }

    public void setIsNeed(String str) {
        this.isNeed = str;
    }

    public void setIs_new(boolean z) {
        this.is_new = z;
    }

    public void setShareLink(String str) {
        this.shareLink = str;
    }

    public void setStartImg(List<?> list) {
        this.startImg = list;
    }

    public void setTipsContent(String str) {
        this.tipsContent = str;
    }

    public void setTipsKey(String str) {
        this.tipsKey = str;
    }

    public void setTipsTitle(String str) {
        this.tipsTitle = str;
    }

    public void setToken(TokenBean tokenBean) {
        this.token = tokenBean;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setVideoReferer(String str) {
        this.videoReferer = str;
    }
}
