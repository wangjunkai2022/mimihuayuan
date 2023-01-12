package com.comeback.data.ui.xiami.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VideoDetail extends k {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String addTime;
        public List<BannerBean> banner;
        public boolean collected;
        public List<InfoBean> info;
        public boolean isPlay;
        public VideoAdBean videoAd;
        public Object videoClip;
        public int videoId;
        public String videoImage;
        public String videoTime;
        public String videoTitle;
        public String videoUrl;
        public String videoViews;
        public String videoVip;
        public String vipTitle;

        /* loaded from: classes.dex */
        public static class BannerBean {
            public int id;
            public String image;
            public String title;
            public String type;
            public String url;

            public int getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public String getUrl() {
                return this.url;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        /* loaded from: classes.dex */
        public static class InfoBean {
            public Object ad;
            public long videoAddTime;
            public int videoId;
            public String videoImage;
            public String videoTime;
            public String videoTitle;
            public String videoViews;
            public String videoVip;
            public String webAddTime;

            public Object getAd() {
                return this.ad;
            }

            public long getVideoAddTime() {
                return this.videoAddTime;
            }

            public int getVideoId() {
                return this.videoId;
            }

            public String getVideoImage() {
                return this.videoImage;
            }

            public String getVideoTime() {
                return this.videoTime;
            }

            public String getVideoTitle() {
                return this.videoTitle;
            }

            public String getVideoViews() {
                return this.videoViews;
            }

            public String getVideoVip() {
                return this.videoVip;
            }

            public String getWebAddTime() {
                return this.webAddTime;
            }

            public void setAd(Object obj) {
                this.ad = obj;
            }

            public void setVideoAddTime(long j2) {
                this.videoAddTime = j2;
            }

            public void setVideoId(int i2) {
                this.videoId = i2;
            }

            public void setVideoImage(String str) {
                this.videoImage = str;
            }

            public void setVideoTime(String str) {
                this.videoTime = str;
            }

            public void setVideoTitle(String str) {
                this.videoTitle = str;
            }

            public void setVideoViews(String str) {
                this.videoViews = str;
            }

            public void setVideoVip(String str) {
                this.videoVip = str;
            }

            public void setWebAddTime(String str) {
                this.webAddTime = str;
            }
        }

        /* loaded from: classes.dex */
        public static class VideoAdBean {
            public int id;
            public String image;
            public String title;
            public String type;
            public String url;

            public int getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public String getUrl() {
                return this.url;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public String getAddTime() {
            return this.addTime;
        }

        public List<BannerBean> getBanner() {
            return this.banner;
        }

        public List<InfoBean> getInfo() {
            return this.info;
        }

        public VideoAdBean getVideoAd() {
            return this.videoAd;
        }

        public Object getVideoClip() {
            return this.videoClip;
        }

        public int getVideoId() {
            return this.videoId;
        }

        public String getVideoImage() {
            return this.videoImage;
        }

        public String getVideoTime() {
            return this.videoTime;
        }

        public String getVideoTitle() {
            return this.videoTitle;
        }

        public String getVideoUrl() {
            return this.videoUrl;
        }

        public String getVideoViews() {
            return this.videoViews;
        }

        public String getVideoVip() {
            return this.videoVip;
        }

        public String getVipTitle() {
            return this.vipTitle;
        }

        public boolean isCollected() {
            return this.collected;
        }

        public boolean isIsPlay() {
            return this.isPlay;
        }

        public void setAddTime(String str) {
            this.addTime = str;
        }

        public void setBanner(List<BannerBean> list) {
            this.banner = list;
        }

        public void setCollected(boolean z) {
            this.collected = z;
        }

        public void setInfo(List<InfoBean> list) {
            this.info = list;
        }

        public void setIsPlay(boolean z) {
            this.isPlay = z;
        }

        public void setVideoAd(VideoAdBean videoAdBean) {
            this.videoAd = videoAdBean;
        }

        public void setVideoClip(Object obj) {
            this.videoClip = obj;
        }

        public void setVideoId(int i2) {
            this.videoId = i2;
        }

        public void setVideoImage(String str) {
            this.videoImage = str;
        }

        public void setVideoTime(String str) {
            this.videoTime = str;
        }

        public void setVideoTitle(String str) {
            this.videoTitle = str;
        }

        public void setVideoUrl(String str) {
            this.videoUrl = str;
        }

        public void setVideoViews(String str) {
            this.videoViews = str;
        }

        public void setVideoVip(String str) {
            this.videoVip = str;
        }

        public void setVipTitle(String str) {
            this.vipTitle = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
