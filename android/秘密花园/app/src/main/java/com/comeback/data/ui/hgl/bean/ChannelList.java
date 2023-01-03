package com.comeback.data.ui.hgl.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ChannelList extends j {
    public List<PingtaiBean> pingtai;

    /* loaded from: classes.dex */
    public static class PingtaiBean {
        public String Number;
        public String address;
        public String title;
        public String xinimg;

        public String getAddress() {
            return this.address;
        }

        public String getNumber() {
            return this.Number;
        }

        public String getTitle() {
            return this.title;
        }

        public String getXinimg() {
            return this.xinimg;
        }

        public void setAddress(String str) {
            this.address = str;
        }

        public void setNumber(String str) {
            this.Number = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setXinimg(String str) {
            this.xinimg = str;
        }
    }

    public List<PingtaiBean> getPingtai() {
        return this.pingtai;
    }

    public void setPingtai(List<PingtaiBean> list) {
        this.pingtai = list;
    }
}
