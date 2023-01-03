package com.comeback.data.ui.xj.bean;

import f.e.a.e;
import f.e.a.f.j;
import f.e.a.g.a;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HomeData extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<VideoBean> a_vodrows;
        public List<VideoBean> b_vodrows;
        public List<VideoBean> c_vodrows;
        public List<VideoBean> d_vodrows;
        public List<VideoBean> dayrows;
        public List<VideoBean> hotrows;
        public List<VideoBean> latestrows;
        public List<VideoBean> likerows;
        public List<VideoBean> tagvodrows;
        public List<Sliderows> v2sliderows;

        public List<VideoBean> getA_vodrows() {
            return this.a_vodrows;
        }

        public List<VideoBean> getB_vodrows() {
            return this.b_vodrows;
        }

        public List<VideoBean> getC_vodrows() {
            return this.c_vodrows;
        }

        public List<VideoBean> getD_vodrows() {
            return this.d_vodrows;
        }

        public List<VideoBean> getDayrows() {
            return this.dayrows;
        }

        public List<VideoBean> getHotrows() {
            return this.hotrows;
        }

        public List<VideoBean> getLatestrows() {
            return this.latestrows;
        }

        public List<VideoBean> getLikerows() {
            return this.likerows;
        }

        public List<VideoBean> getTagvodrows() {
            return this.tagvodrows;
        }

        public List<Sliderows> getV2sliderows() {
            Iterator<Sliderows> it = this.v2sliderows.iterator();
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
            return this.v2sliderows;
        }

        public void setA_vodrows(List<VideoBean> list) {
            this.a_vodrows = list;
        }

        public void setB_vodrows(List<VideoBean> list) {
            this.b_vodrows = list;
        }

        public void setC_vodrows(List<VideoBean> list) {
            this.c_vodrows = list;
        }

        public void setD_vodrows(List<VideoBean> list) {
            this.d_vodrows = list;
        }

        public void setDayrows(List<VideoBean> list) {
            this.dayrows = list;
        }

        public void setHotrows(List<VideoBean> list) {
            this.hotrows = list;
        }

        public void setLatestrows(List<VideoBean> list) {
            this.latestrows = list;
        }

        public void setLikerows(List<VideoBean> list) {
            this.likerows = list;
        }

        public void setTagvodrows(List<VideoBean> list) {
            this.tagvodrows = list;
        }

        public void setV2sliderows(List<Sliderows> list) {
            this.v2sliderows = list;
        }
    }

    /* loaded from: classes.dex */
    public class Sliderows implements a {
        public String pic;
        public String scene;
        public String spid;
        public String title;

        public Sliderows() {
        }

        @Override // f.e.a.g.a
        public String getCover() {
            return this.pic;
        }

        @Override // f.e.a.g.a
        public String getId() {
            return this.spid;
        }

        public String getPic() {
            return this.pic;
        }

        public String getScene() {
            return this.scene;
        }

        public String getSpid() {
            return this.spid;
        }

        @Override // f.e.a.g.a
        public String getTitle() {
            return this.title;
        }

        public boolean isAd() {
            return !this.scene.equals(e.a("RBIGBwISVR0XA0AGEQY="));
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setScene(String str) {
            this.scene = str;
        }

        public void setSpid(String str) {
            this.spid = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
