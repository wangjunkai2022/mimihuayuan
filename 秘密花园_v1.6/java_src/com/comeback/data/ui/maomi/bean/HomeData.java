package com.comeback.data.ui.maomi.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.text.NumberFormat;
import java.util.List;
/* loaded from: classes.dex */
public class HomeData extends k {
    public int code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String color;
        public String create_at;
        public String describe;
        public String id;
        public String image;
        public int is_hot;
        public int is_top;
        public Object label;
        public String name;
        public int sort;
        public int status;
        public String type;
        public String update_at;
        public List<VideosBean> videos;

        /* loaded from: classes.dex */
        public static class VideosBean {
            public int cate_id;
            public String id;
            public String image;
            public String name;
            public double rate;
            public String video_id;
            public String video_name;
            public String ximage;

            public int getCate_id() {
                return this.cate_id;
            }

            public String getId() {
                if (TextUtils.isEmpty(this.video_id)) {
                    return this.id;
                }
                return this.video_id;
            }

            public String getImage() {
                return this.image;
            }

            public String getName() {
                if (TextUtils.isEmpty(this.video_name)) {
                    return this.name;
                }
                return this.video_name;
            }

            public String getRate() {
                NumberFormat numberInstance = NumberFormat.getNumberInstance();
                numberInstance.setMaximumFractionDigits(1);
                return numberInstance.format(this.rate);
            }

            public String getXimage() {
                return this.ximage;
            }

            public void setCate_id(int i2) {
                this.cate_id = i2;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setRate(double d2) {
                this.rate = d2;
            }

            public void setXimage(String str) {
                this.ximage = str;
            }
        }

        public String getColor() {
            return this.color;
        }

        public String getCreate_at() {
            return this.create_at;
        }

        public String getDescribe() {
            return this.describe;
        }

        public String getId() {
            return this.id;
        }

        public String getImage() {
            if (this.image.startsWith(e.a("XxYXFA=="))) {
                return this.image;
            }
            return e.a("XxYXFBhJFhweB1tJSQxbXQFMAAsG") + this.image;
        }

        public int getIs_hot() {
            return this.is_hot;
        }

        public int getIs_top() {
            return this.is_top;
        }

        public Object getLabel() {
            return this.label;
        }

        public String getName() {
            return this.name;
        }

        public int getSort() {
            return this.sort;
        }

        public int getStatus() {
            return this.status;
        }

        public String getType() {
            return this.type;
        }

        public String getUpdate_at() {
            return this.update_at;
        }

        public List<VideosBean> getVideos() {
            return this.videos;
        }

        public boolean isComic() {
            if (TextUtils.isEmpty(this.type)) {
                return false;
            }
            return this.type.equals(e.a("Bg=="));
        }

        public void setColor(String str) {
            this.color = str;
        }

        public void setCreate_at(String str) {
            this.create_at = str;
        }

        public void setDescribe(String str) {
            this.describe = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setIs_hot(int i2) {
            this.is_hot = i2;
        }

        public void setIs_top(int i2) {
            this.is_top = i2;
        }

        public void setLabel(Object obj) {
            this.label = obj;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSort(int i2) {
            this.sort = i2;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setUpdate_at(String str) {
            this.update_at = str;
        }

        public void setVideos(List<VideosBean> list) {
            this.videos = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
