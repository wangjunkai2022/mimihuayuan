package com.comeback.data.ui.nana.bean;

import f.b.a.a.a;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class HostInfo extends j {
    public List<ApiEntity> api;
    public List<ApiEntity> api_pwa;
    public AssistiveTouchImageEntity assistiveTouchImage;
    public CheckversionEntity checkversion;
    public String comment;
    public String comment_pwa;
    public String community;
    public int iconIndex;
    public List<ApiEntity> img;
    public List<ApiEntity> img_pwa;
    public String potato;
    public ReturnTouchImageEntity returnTouchImage;
    public SharelihiEntity sharelihi;
    public List<ApiEntity> stream;
    public List<ApiEntity> stream_pwa;
    public List<String> vip;
    public String wifi;

    /* loaded from: classes.dex */
    public class ApiEntity {
        public String encrypt;
        public String url;

        public ApiEntity() {
        }

        public String getEncrypt() {
            return this.encrypt;
        }

        public String getSpeedUrl() {
            return a.n(new StringBuilder(), this.url, "GBETAQ4XF1sHC1g=");
        }

        public String getUrl() {
            return this.url;
        }

        public void setEncrypt(String str) {
            this.encrypt = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public class AssistiveTouchImageEntity {
        public String cn;
        public String tw;

        public AssistiveTouchImageEntity() {
        }

        public String getCn() {
            return this.cn;
        }

        public String getTw() {
            return this.tw;
        }

        public void setCn(String str) {
            this.cn = str;
        }

        public void setTw(String str) {
            this.tw = str;
        }
    }

    /* loaded from: classes.dex */
    public class CheckversionEntity {
        public String imgurl;
        public String message;

        public CheckversionEntity() {
        }

        public String getImgurl() {
            return this.imgurl;
        }

        public String getMessage() {
            return this.message;
        }

        public void setImgurl(String str) {
            this.imgurl = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }
    }

    /* loaded from: classes.dex */
    public class ReturnTouchImageEntity {
        public String cn;
        public String tw;

        public ReturnTouchImageEntity() {
        }

        public String getCn() {
            return this.cn;
        }

        public String getTw() {
            return this.tw;
        }

        public void setCn(String str) {
            this.cn = str;
        }

        public void setTw(String str) {
            this.tw = str;
        }
    }

    /* loaded from: classes.dex */
    public class SharelihiEntity {

        /* renamed from: android  reason: collision with root package name */
        public String f1787android;
        public String iOS;

        public SharelihiEntity() {
        }

        public String getAndroid() {
            return this.f1787android;
        }

        public String getIOS() {
            return this.iOS;
        }

        public void setAndroid(String str) {
            this.f1787android = str;
        }

        public void setIOS(String str) {
            this.iOS = str;
        }
    }

    public List<ApiEntity> getApi() {
        return this.api;
    }

    public List<ApiEntity> getApi_pwa() {
        return this.api_pwa;
    }

    public AssistiveTouchImageEntity getAssistiveTouchImage() {
        return this.assistiveTouchImage;
    }

    public CheckversionEntity getCheckversion() {
        return this.checkversion;
    }

    public String getComment() {
        return this.comment;
    }

    public String getComment_pwa() {
        return this.comment_pwa;
    }

    public String getCommunity() {
        return this.community;
    }

    public int getIconIndex() {
        return this.iconIndex;
    }

    public List<ApiEntity> getImg() {
        return this.img;
    }

    public List<ApiEntity> getImg_pwa() {
        return this.img_pwa;
    }

    public String getPotato() {
        return this.potato;
    }

    public ReturnTouchImageEntity getReturnTouchImage() {
        return this.returnTouchImage;
    }

    public SharelihiEntity getSharelihi() {
        return this.sharelihi;
    }

    public List<ApiEntity> getStream() {
        return this.stream;
    }

    public List<ApiEntity> getStream_pwa() {
        return this.stream_pwa;
    }

    public List<String> getVip() {
        return this.vip;
    }

    public String getWifi() {
        return this.wifi;
    }

    public void setApi(List<ApiEntity> list) {
        this.api = list;
    }

    public void setApi_pwa(List<ApiEntity> list) {
        this.api_pwa = list;
    }

    public void setAssistiveTouchImage(AssistiveTouchImageEntity assistiveTouchImageEntity) {
        this.assistiveTouchImage = assistiveTouchImageEntity;
    }

    public void setCheckversion(CheckversionEntity checkversionEntity) {
        this.checkversion = checkversionEntity;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setComment_pwa(String str) {
        this.comment_pwa = str;
    }

    public void setCommunity(String str) {
        this.community = str;
    }

    public void setIconIndex(int i2) {
        this.iconIndex = i2;
    }

    public void setImg(List<ApiEntity> list) {
        this.img = list;
    }

    public void setImg_pwa(List<ApiEntity> list) {
        this.img_pwa = list;
    }

    public void setPotato(String str) {
        this.potato = str;
    }

    public void setReturnTouchImage(ReturnTouchImageEntity returnTouchImageEntity) {
        this.returnTouchImage = returnTouchImageEntity;
    }

    public void setSharelihi(SharelihiEntity sharelihiEntity) {
        this.sharelihi = sharelihiEntity;
    }

    public void setStream(List<ApiEntity> list) {
        this.stream = list;
    }

    public void setStream_pwa(List<ApiEntity> list) {
        this.stream_pwa = list;
    }

    public void setVip(List<String> list) {
        this.vip = list;
    }

    public void setWifi(String str) {
        this.wifi = str;
    }
}
