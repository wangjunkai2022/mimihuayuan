package com.comeback.data.ui.maomi.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VoiceDetail extends k {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public int anchor;
        public int browses;
        public List<DataBean> data;

        /* loaded from: classes.dex */
        public static class DataBean {
            public String content;
            public int id;
            public String thumb;
            public String title;

            public String getContent() {
                return this.content;
            }

            public int getId() {
                return this.id;
            }

            public String getThumb() {
                return this.thumb;
            }

            public String getTitle() {
                return this.title;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public int getAnchor() {
            return this.anchor;
        }

        public int getBrowses() {
            return this.browses;
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public void setAnchor(int i2) {
            this.anchor = i2;
        }

        public void setBrowses(int i2) {
            this.browses = i2;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBeanX getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBeanX dataBeanX) {
        this.data = dataBeanX;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
