package com.comeback.data.ui.bale.bean;

import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class VideoList extends k {
    public String message;
    public List<ResultBean> result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public String icon;
        public int id;
        public String image;
        public boolean isAd;
        public List<BaleVideoInfo> list;
        public String name;
        public int seconds;
        public String title;
        public String url;

        public String getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public String getImage() {
            return this.image;
        }

        public List<BaleVideoInfo> getList() {
            Iterator<BaleVideoInfo> it = this.list.iterator();
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
            return this.list;
        }

        public String getName() {
            return this.name;
        }

        public int getSeconds() {
            return this.seconds;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public boolean isIsAd() {
            return this.isAd;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setIsAd(boolean z) {
            this.isAd = z;
        }

        public void setList(List<BaleVideoInfo> list) {
            this.list = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSeconds(int i2) {
            this.seconds = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public List<ResultBean> getResult() {
        Iterator<ResultBean> it = this.result.iterator();
        while (it.hasNext()) {
            if (it.next().isIsAd()) {
                it.remove();
            }
        }
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(List<ResultBean> list) {
        this.result = list;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
