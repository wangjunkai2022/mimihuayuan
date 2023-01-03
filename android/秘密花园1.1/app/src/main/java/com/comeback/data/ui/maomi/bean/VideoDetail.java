package com.comeback.data.ui.maomi.bean;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoDetail extends j {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String author;
        public int comments;
        public String create_at;
        public String description;
        public int id;
        public int is_vip;
        public List<LabelBean> label;
        public String label_id;
        public String name;
        public int plays;
        public double rate;
        public int rate_num;
        public List<VideoItemBean> video_item;
        public List<VideosBean> videos;
        public Object ximage;
        public int year;

        /* loaded from: classes.dex */
        public static class LabelBean {
            public int id;
            public String name;

            public int getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        /* loaded from: classes.dex */
        public static class VideoItemBean {
            public String down;
            public String file;

            public String getDown() {
                return this.down;
            }

            public String getFile() {
                return this.file;
            }

            public void setDown(String str) {
                this.down = str;
            }

            public void setFile(String str) {
                this.file = str;
            }
        }

        /* loaded from: classes.dex */
        public static class VideosBean {
            public String down;
            public String file;
            public int id;
            public int is_vip;
            public int type;

            public String getDown() {
                return this.down;
            }

            public String getFile() {
                return this.file;
            }

            public int getId() {
                return this.id;
            }

            public int getIs_vip() {
                return this.is_vip;
            }

            public int getType() {
                return this.type;
            }

            public void setDown(String str) {
                this.down = str;
            }

            public void setFile(String str) {
                this.file = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setIs_vip(int i2) {
                this.is_vip = i2;
            }

            public void setType(int i2) {
                this.type = i2;
            }
        }

        public String getAll() {
            StringBuilder sb = new StringBuilder();
            a.B(sb, this.create_at, "Gg==");
            sb.append(this.plays);
            sb.append(e.a("0c7Cgvne36fN"));
            sb.append(this.rate);
            sb.append(e.a("0url"));
            return sb.toString();
        }

        public String getAuthor() {
            return this.author;
        }

        public int getComments() {
            return this.comments;
        }

        public String getCreate_at() {
            return this.create_at;
        }

        public String getDescription() {
            return this.description;
        }

        public int getId() {
            return this.id;
        }

        public int getIs_vip() {
            return this.is_vip;
        }

        public List<LabelBean> getLabel() {
            return this.label;
        }

        public String getLabel_id() {
            return this.label_id;
        }

        public String getName() {
            return this.name;
        }

        public int getPlays() {
            return this.plays;
        }

        public double getRate() {
            return this.rate;
        }

        public int getRate_num() {
            return this.rate_num;
        }

        public List<VideoItemBean> getVideo_item() {
            return this.video_item;
        }

        public List<VideosBean> getVideos() {
            return this.videos;
        }

        public Object getXimage() {
            return this.ximage;
        }

        public int getYear() {
            return this.year;
        }

        public void setAuthor(String str) {
            this.author = str;
        }

        public void setComments(int i2) {
            this.comments = i2;
        }

        public void setCreate_at(String str) {
            this.create_at = str;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIs_vip(int i2) {
            this.is_vip = i2;
        }

        public void setLabel(List<LabelBean> list) {
            this.label = list;
        }

        public void setLabel_id(String str) {
            this.label_id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPlays(int i2) {
            this.plays = i2;
        }

        public void setRate(double d2) {
            this.rate = d2;
        }

        public void setRate_num(int i2) {
            this.rate_num = i2;
        }

        public void setVideo_item(List<VideoItemBean> list) {
            this.video_item = list;
        }

        public void setVideos(List<VideosBean> list) {
            this.videos = list;
        }

        public void setXimage(Object obj) {
            this.ximage = obj;
        }

        public void setYear(int i2) {
            this.year = i2;
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
