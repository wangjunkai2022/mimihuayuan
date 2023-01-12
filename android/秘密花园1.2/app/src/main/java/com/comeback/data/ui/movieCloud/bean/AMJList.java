package com.comeback.data.ui.movieCloud.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class AMJList extends k {
    public int code;
    public List<DataBean> data;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int ad;
        public String cid;
        public String cion;
        public String fid;
        public String hits;
        public String id;
        public String info;
        public String name;
        public String pf;
        public String pic;
        public String pic2;
        public String state;
        public String type;
        public String vip;

        public int getAd() {
            return this.ad;
        }

        public String getCid() {
            return this.cid;
        }

        public String getCion() {
            return this.cion;
        }

        public String getFid() {
            return this.fid;
        }

        public String getHits() {
            return this.hits;
        }

        public String getId() {
            return this.id;
        }

        public String getInfo() {
            return this.info;
        }

        public String getName() {
            return this.name;
        }

        public String getPf() {
            return this.pf;
        }

        public String getPic() {
            return this.pic;
        }

        public String getPic2() {
            return this.pic2;
        }

        public String getState() {
            return this.state;
        }

        public String getType() {
            return this.type;
        }

        public String getVip() {
            return this.vip;
        }

        public void setAd(int i2) {
            this.ad = i2;
        }

        public void setCid(String str) {
            this.cid = str;
        }

        public void setCion(String str) {
            this.cion = str;
        }

        public void setFid(String str) {
            this.fid = str;
        }

        public void setHits(String str) {
            this.hits = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setInfo(String str) {
            this.info = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPf(String str) {
            this.pf = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setPic2(String str) {
            this.pic2 = str;
        }

        public void setState(String str) {
            this.state = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setVip(String str) {
            this.vip = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }
}
