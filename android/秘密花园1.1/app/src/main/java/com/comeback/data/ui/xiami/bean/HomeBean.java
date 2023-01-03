package com.comeback.data.ui.xiami.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class HomeBean extends j {
    public int code;
    public DataBean data;
    public String msg;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<VideoBean> video;

        /* loaded from: classes.dex */
        public static class VideoBean {
            public String gategoryType;
            public int id;
            public List<VideoInfo> info;
            public String title;
            public String type;

            public String getGategoryType() {
                return this.gategoryType;
            }

            public int getId() {
                return this.id;
            }

            public List<VideoInfo> getInfo() {
                return this.info;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public void setGategoryType(String str) {
                this.gategoryType = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setInfo(List<VideoInfo> list) {
                this.info = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        public List<VideoBean> getVideo() {
            return this.video;
        }

        public void setVideo(List<VideoBean> list) {
            this.video = list;
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
