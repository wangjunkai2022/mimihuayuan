package com.comeback.data.ui.km2.bean;

import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class KMVideoList extends j {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<Km2Video> list;
        public List<Km2Video> video_list;

        public List<Km2Video> getKm2Video_list() {
            return this.video_list;
        }

        public List<Km2Video> getList() {
            Iterator<Km2Video> it;
            List<Km2Video> list = this.video_list;
            if (list == null) {
                it = this.list.iterator();
            } else {
                it = list.iterator();
            }
            while (it.hasNext()) {
                Km2Video next = it.next();
                if (next.getType() != 1 || next.needGold() || next.needVip()) {
                    it.remove();
                }
            }
            List<Km2Video> list2 = this.video_list;
            return list2 == null ? this.list : list2;
        }

        public void setKm2Video_list(List<Km2Video> list) {
            this.video_list = list;
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
