package com.comeback.data.ui.km.bean;

import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class KMVideoList extends k {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<Video> list;
        public List<Video> video_list;

        public List<Video> getList() {
            Iterator<Video> it;
            List<Video> list = this.list;
            if (list == null) {
                it = this.video_list.iterator();
            } else {
                it = list.iterator();
            }
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
            List<Video> list2 = this.list;
            return list2 == null ? this.video_list : list2;
        }

        public void setList(List<Video> list) {
            this.list = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
