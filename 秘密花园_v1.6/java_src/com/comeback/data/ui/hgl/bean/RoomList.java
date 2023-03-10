package com.comeback.data.ui.hgl.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class RoomList extends k {
    public List<ZhuboBean> zhubo;

    /* loaded from: classes.dex */
    public static class ZhuboBean {
        public String address;
        public String img;
        public String title;

        public String getAddress() {
            return this.address;
        }

        public String getImg() {
            return this.img;
        }

        public String getTitle() {
            return this.title;
        }

        public void setAddress(String str) {
            this.address = str;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public List<ZhuboBean> getZhubo() {
        return this.zhubo;
    }

    public void setZhubo(List<ZhuboBean> list) {
        this.zhubo = list;
    }
}
