package com.comeback.data.ui.aimeiju.bean;

import f.e.a.f.k;
import f.e.a.g.a;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BannerBean extends k {
    public int code;
    public List<DataBean> data;

    /* loaded from: classes.dex */
    public static class DataBean implements a {
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
        public String url;
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

        @Override // f.e.a.g.a
        public String getCover() {
            return this.pic2;
        }

        public String getFid() {
            return this.fid;
        }

        public String getHits() {
            return this.hits;
        }

        @Override // f.e.a.g.a
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

        @Override // f.e.a.g.a
        public String getTitle() {
            return this.name;
        }

        public String getType() {
            return this.type;
        }

        public String getUrl() {
            return this.url;
        }

        public String getVip() {
            return this.vip;
        }

        public boolean isAd() {
            return this.ad == 1;
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

        public void setUrl(String str) {
            this.url = str;
        }

        public void setVip(String str) {
            this.vip = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        Iterator<DataBean> it = this.data.iterator();
        while (it.hasNext()) {
            if (it.next().isAd()) {
                it.remove();
            }
        }
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }
}
