package com.comeback.data.ui.sex8.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends k {
    public List<DataBean> data;
    public String msg;
    public int status;
    public int total_num_rows;
    public int total_page;
    public String xb_num;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String category;
        public String days;
        public String down_url;
        public String duration;
        public String is_share;
        public List<LableBean> lable;
        public String num_times;
        public String pic;
        public int price;
        public String publish_time;
        public ShareBean share;
        public String title;
        public int trysee;
        public String url;
        public String video_duration;
        public String video_id;

        /* loaded from: classes.dex */
        public static class LableBean {
            public String id;
            public String title;

            public String getId() {
                return this.id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        /* loaded from: classes.dex */
        public static class ShareBean {
            public String data;
            public String url;

            public String getData() {
                return this.data;
            }

            public String getUrl() {
                return this.url;
            }

            public void setData(String str) {
                this.data = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public String getCategory() {
            return this.category;
        }

        public String getDays() {
            return this.days;
        }

        public String getDown_url() {
            return this.down_url;
        }

        public String getDuration() {
            return this.duration;
        }

        public String getIs_share() {
            return this.is_share;
        }

        public List<LableBean> getLable() {
            return this.lable;
        }

        public String getNum_times() {
            return this.num_times;
        }

        public String getPic() {
            return this.pic;
        }

        public int getPrice() {
            return this.price;
        }

        public String getPublish_time() {
            return this.publish_time;
        }

        public ShareBean getShare() {
            return this.share;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTrysee() {
            return this.trysee;
        }

        public String getUrl() {
            return this.url;
        }

        public String getVideo_duration() {
            return this.video_duration;
        }

        public String getVideo_id() {
            return this.video_id;
        }

        public void setCategory(String str) {
            this.category = str;
        }

        public void setDays(String str) {
            this.days = str;
        }

        public void setDown_url(String str) {
            this.down_url = str;
        }

        public void setDuration(String str) {
            this.duration = str;
        }

        public void setIs_share(String str) {
            this.is_share = str;
        }

        public void setLable(List<LableBean> list) {
            this.lable = list;
        }

        public void setNum_times(String str) {
            this.num_times = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setPrice(int i2) {
            this.price = i2;
        }

        public void setPublish_time(String str) {
            this.publish_time = str;
        }

        public void setShare(ShareBean shareBean) {
            this.share = shareBean;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTrysee(int i2) {
            this.trysee = i2;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setVideo_duration(String str) {
            this.video_duration = str;
        }

        public void setVideo_id(String str) {
            this.video_id = str;
        }
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getStatus() {
        return this.status;
    }

    public int getTotal_num_rows() {
        return this.total_num_rows;
    }

    public int getTotal_page() {
        return this.total_page;
    }

    public String getXb_num() {
        return this.xb_num;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setTotal_num_rows(int i2) {
        this.total_num_rows = i2;
    }

    public void setTotal_page(int i2) {
        this.total_page = i2;
    }

    public void setXb_num(String str) {
        this.xb_num = str;
    }
}
