package com.comeback.data.ui.maomi.bean;

import f.e.a.e;
import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ShortOriginal extends k {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<DataBean> data;
        public int total_page;

        /* loaded from: classes.dex */
        public static class DataBean {
            public String collects;
            public String comments;
            public String content;
            public String create_at;
            public String down;
            public int height;
            public int id;
            public String is_hot;
            public String m3u8;
            public String plays;
            public String praises;
            public String shares;
            public String title;
            public String type;
            public int user_id;
            public String video;
            public String video_img;
            public int width;

            public String getCollects() {
                return this.collects;
            }

            public String getComments() {
                return this.comments;
            }

            public String getContent() {
                return this.content;
            }

            public String getCreate_at() {
                return this.create_at;
            }

            public String getDown() {
                return this.down;
            }

            public int getHeight() {
                return this.height;
            }

            public int getId() {
                return this.id;
            }

            public String getIs_hot() {
                return this.is_hot;
            }

            public String getM3u8() {
                return this.m3u8;
            }

            public String getPlays() {
                return this.plays;
            }

            public String getPraises() {
                return this.praises;
            }

            public String getShares() {
                return this.shares;
            }

            public String getTitle() {
                return e.a("FEI=") + this.title;
            }

            public int getUser_id() {
                return this.user_id;
            }

            public String getVideo() {
                return this.video;
            }

            public String getVideo_img() {
                return this.video_img;
            }

            public int getWidth() {
                return this.width;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCreate_at(String str) {
                this.create_at = str;
            }

            public void setDown(String str) {
                this.down = str;
            }

            public void setHeight(int i2) {
                this.height = i2;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setM3u8(String str) {
                this.m3u8 = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUser_id(int i2) {
                this.user_id = i2;
            }

            public void setVideo(String str) {
                this.video = str;
            }

            public void setVideo_img(String str) {
                this.video_img = str;
            }

            public void setWidth(int i2) {
                this.width = i2;
            }
        }

        public List<DataBean> getData() {
            Iterator<DataBean> it = this.data.iterator();
            while (it.hasNext()) {
                if (!it.next().type.equals(e.a("Bg=="))) {
                    it.remove();
                }
            }
            return this.data;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }

        public void setTotal_page(int i2) {
            this.total_page = i2;
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
