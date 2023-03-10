package com.comeback.data.ui.xiami.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ImageDetail extends k {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<GroupBean> group;
        public List<HotBean> hot;

        /* loaded from: classes.dex */
        public static class GroupBean {
            public Object ad;
            public String high;
            public String url;
            public String width;

            public Object getAd() {
                return this.ad;
            }

            public String getHigh() {
                return this.high;
            }

            public String getUrl() {
                return this.url;
            }

            public String getWidth() {
                return this.width;
            }

            public void setAd(Object obj) {
                this.ad = obj;
            }

            public void setHigh(String str) {
                this.high = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }

            public void setWidth(String str) {
                this.width = str;
            }
        }

        /* loaded from: classes.dex */
        public static class HotBean {
            public long addTime;
            public String categoryTitle;
            public String galleryCounts;
            public String galleryId;
            public String galleryImage;
            public String galleryTitle;
            public String galleryViews;

            public long getAddTime() {
                return this.addTime;
            }

            public String getCategoryTitle() {
                return this.categoryTitle;
            }

            public String getGalleryCounts() {
                return this.galleryCounts;
            }

            public String getGalleryId() {
                return this.galleryId;
            }

            public String getGalleryImage() {
                return this.galleryImage;
            }

            public String getGalleryTitle() {
                return this.galleryTitle;
            }

            public String getGalleryViews() {
                return this.galleryViews;
            }

            public void setAddTime(long j2) {
                this.addTime = j2;
            }

            public void setCategoryTitle(String str) {
                this.categoryTitle = str;
            }

            public void setGalleryCounts(String str) {
                this.galleryCounts = str;
            }

            public void setGalleryId(String str) {
                this.galleryId = str;
            }

            public void setGalleryImage(String str) {
                this.galleryImage = str;
            }

            public void setGalleryTitle(String str) {
                this.galleryTitle = str;
            }

            public void setGalleryViews(String str) {
                this.galleryViews = str;
            }
        }

        public List<GroupBean> getGroup() {
            return this.group;
        }

        public List<HotBean> getHot() {
            return this.hot;
        }

        public void setGroup(List<GroupBean> list) {
            this.group = list;
        }

        public void setHot(List<HotBean> list) {
            this.hot = list;
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
