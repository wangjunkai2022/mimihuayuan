package com.comeback.data.ui.gdian.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public String code;
    public DataEntity data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<VideoEntity> data;
        public int total;

        /* loaded from: classes.dex */
        public class VideoEntity {
            public List<?> actor_ids;
            public int collect_count_cycle;
            public int forever_point;
            public String jav_number;
            public List<String> labels;
            public int list_type;
            public String movie_cover;
            public int movie_id;
            public String movie_long;
            public String movie_name;
            public String movie_preview_img;
            public int movie_score;
            public int need_login;
            public int need_vip;
            public int push_time;
            public int watch_count;
            public int watch_count_cycle;

            public VideoEntity() {
            }

            public List<?> getActor_ids() {
                return this.actor_ids;
            }

            public int getCollect_count_cycle() {
                return this.collect_count_cycle;
            }

            public int getForever_point() {
                return this.forever_point;
            }

            public String getJav_number() {
                return this.jav_number;
            }

            public List<String> getLabels() {
                return this.labels;
            }

            public int getList_type() {
                return this.list_type;
            }

            public String getMovie_cover() {
                return this.movie_cover;
            }

            public int getMovie_id() {
                return this.movie_id;
            }

            public String getMovie_long() {
                return this.movie_long;
            }

            public String getMovie_name() {
                return this.movie_name;
            }

            public String getMovie_preview_img() {
                return this.movie_preview_img;
            }

            public int getMovie_score() {
                return this.movie_score;
            }

            public int getNeed_login() {
                return this.need_login;
            }

            public int getNeed_vip() {
                return this.need_vip;
            }

            public int getPush_time() {
                return this.push_time;
            }

            public int getWatch_count() {
                return this.watch_count;
            }

            public String getWatch_countText() {
                int i2 = this.watch_count;
                if (i2 < 10000) {
                    return this.watch_count + e.a("0c7Cgvne36fN");
                }
                DecimalFormat decimalFormat = new DecimalFormat(e.a("B0xT"));
                return decimalFormat.format(i2 / 10000.0f) + e.a("QITPxY3hlNXn2A==");
            }

            public int getWatch_count_cycle() {
                return this.watch_count_cycle;
            }

            public void setActor_ids(List<?> list) {
                this.actor_ids = list;
            }

            public void setCollect_count_cycle(int i2) {
                this.collect_count_cycle = i2;
            }

            public void setForever_point(int i2) {
                this.forever_point = i2;
            }

            public void setJav_number(String str) {
                this.jav_number = str;
            }

            public void setLabels(List<String> list) {
                this.labels = list;
            }

            public void setList_type(int i2) {
                this.list_type = i2;
            }

            public void setMovie_cover(String str) {
                this.movie_cover = str;
            }

            public void setMovie_id(int i2) {
                this.movie_id = i2;
            }

            public void setMovie_long(String str) {
                this.movie_long = str;
            }

            public void setMovie_name(String str) {
                this.movie_name = str;
            }

            public void setMovie_preview_img(String str) {
                this.movie_preview_img = str;
            }

            public void setMovie_score(int i2) {
                this.movie_score = i2;
            }

            public void setNeed_login(int i2) {
                this.need_login = i2;
            }

            public void setNeed_vip(int i2) {
                this.need_vip = i2;
            }

            public void setPush_time(int i2) {
                this.push_time = i2;
            }

            public void setWatch_count(int i2) {
                this.watch_count = i2;
            }

            public void setWatch_count_cycle(int i2) {
                this.watch_count_cycle = i2;
            }
        }

        public DataEntity() {
        }

        public List<VideoEntity> getData() {
            Iterator<VideoEntity> it = this.data.iterator();
            while (it.hasNext()) {
                if (it.next().need_vip == 1) {
                    it.remove();
                }
            }
            return this.data;
        }

        public int getTotal() {
            return this.total;
        }

        public void setData(List<VideoEntity> list) {
            this.data = list;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public int getIs_login() {
        return this.is_login;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setIs_login(int i2) {
        this.is_login = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
