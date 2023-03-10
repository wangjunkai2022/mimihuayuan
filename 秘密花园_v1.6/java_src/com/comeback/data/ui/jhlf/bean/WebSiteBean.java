package com.comeback.data.ui.jhlf.bean;

import android.text.TextUtils;
import c.a.a.b.g.h;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class WebSiteBean extends k {
    public List<AdEntity> ad;
    public List<AdEntity> ad2;
    public List<AdEntity> ad3;
    public List<WebSiteEntity> webSite;

    /* loaded from: classes.dex */
    public class AdEntity {
        public int id;
        public boolean isMust;
        public String logo;
        public String name;
        public String packageName;
        public String source;
        public String url;
        public String url2;

        public AdEntity() {
        }

        public int getId() {
            return this.id;
        }

        public String getLogo() {
            return this.logo;
        }

        public String getName() {
            return this.name;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public String getSource() {
            return this.source;
        }

        public String getUrl() {
            return this.url;
        }

        public String getUrl2() {
            return this.url2;
        }

        public boolean isMust() {
            return this.isMust;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setMust(boolean z) {
            this.isMust = z;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public void setSource(String str) {
            this.source = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setUrl2(String str) {
            this.url2 = str;
        }
    }

    /* loaded from: classes.dex */
    public class WebSiteEntity {
        public int id;
        public String logo;
        public int status;
        public String website;

        public WebSiteEntity() {
        }

        public int getId() {
            return this.id;
        }

        public String getLogo() {
            return this.logo;
        }

        public int getStatus() {
            return this.status;
        }

        public String getWebsite() {
            return this.website;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setWebsite(String str) {
            this.website = str;
        }
    }

    public List<AdEntity> getAd() {
        List<AdEntity> list = this.ad;
        if (list != null) {
            Iterator<AdEntity> it = list.iterator();
            while (it.hasNext()) {
                String url = it.next().getUrl();
                if (TextUtils.isEmpty(url) || !url.startsWith(e.a("XxYXFA=="))) {
                    it.remove();
                }
            }
            return this.ad;
        }
        return new ArrayList();
    }

    public List<AdEntity> getAd2() {
        if (!h.m0()) {
            return getAd3();
        }
        List<AdEntity> list = this.ad2;
        if (list != null) {
            Iterator<AdEntity> it = list.iterator();
            while (it.hasNext()) {
                String url = it.next().getUrl();
                if (TextUtils.isEmpty(url) || !url.startsWith(e.a("XxYXFA=="))) {
                    it.remove();
                }
            }
            return this.ad2;
        }
        return new ArrayList();
    }

    public List<AdEntity> getAd3() {
        List<AdEntity> list = this.ad3;
        if (list != null) {
            Iterator<AdEntity> it = list.iterator();
            while (it.hasNext()) {
                String url = it.next().getUrl();
                if (TextUtils.isEmpty(url) || !url.startsWith(e.a("XxYXFA=="))) {
                    it.remove();
                }
            }
            return this.ad3;
        }
        return new ArrayList();
    }

    public List<WebSiteEntity> getWebSite() {
        return this.webSite;
    }

    public void setAd(List<AdEntity> list) {
        this.ad = list;
    }

    public void setAd2(List<AdEntity> list) {
        this.ad2 = list;
    }

    public void setAd3(List<AdEntity> list) {
        this.ad3 = list;
    }

    public void setWebSite(List<WebSiteEntity> list) {
        this.webSite = list;
    }
}
