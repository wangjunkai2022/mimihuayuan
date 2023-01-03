package com.comeback.data.ui.gdian.bean;

import f.b.a.a.a;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class Image extends j {
    public String code;
    public DataEntity data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String atlas_cover;
        public int atlas_id;
        public List<String> atlas_img;
        public int atlas_long;
        public String atlas_name;
        public int atlas_score;
        public int collect_count;
        public int collect_count_cycle;
        public int comment_count;
        public int is_collect;
        public int is_like;
        public List<String> labels;
        public int like_count;
        public int push_time;
        public int watch_count;
        public int watch_count_cycle;

        public DataEntity() {
        }

        public String getAtlas_cover() {
            return this.atlas_cover;
        }

        public int getAtlas_id() {
            return this.atlas_id;
        }

        public List<String> getAtlas_img() {
            return this.atlas_img;
        }

        public int getAtlas_long() {
            return this.atlas_long;
        }

        public String getAtlas_name() {
            return this.atlas_name;
        }

        public int getAtlas_score() {
            return this.atlas_score;
        }

        public int getCollect_count() {
            return this.collect_count;
        }

        public int getCollect_count_cycle() {
            return this.collect_count_cycle;
        }

        public int getComment_count() {
            return this.comment_count;
        }

        public int getIs_collect() {
            return this.is_collect;
        }

        public int getIs_like() {
            return this.is_like;
        }

        public List<String> getLabels() {
            return this.labels;
        }

        public String getLabelsText() {
            StringBuilder sb = new StringBuilder();
            for (String str : this.labels) {
                a.B(sb, str, "GA==");
            }
            return sb.deleteCharAt(sb.length()).toString();
        }

        public int getLike_count() {
            return this.like_count;
        }

        public int getPush_time() {
            return this.push_time;
        }

        public int getWatch_count() {
            return this.watch_count;
        }

        public int getWatch_count_cycle() {
            return this.watch_count_cycle;
        }

        public void setAtlas_cover(String str) {
            this.atlas_cover = str;
        }

        public void setAtlas_id(int i2) {
            this.atlas_id = i2;
        }

        public void setAtlas_img(List<String> list) {
            this.atlas_img = list;
        }

        public void setAtlas_long(int i2) {
            this.atlas_long = i2;
        }

        public void setAtlas_name(String str) {
            this.atlas_name = str;
        }

        public void setAtlas_score(int i2) {
            this.atlas_score = i2;
        }

        public void setCollect_count(int i2) {
            this.collect_count = i2;
        }

        public void setCollect_count_cycle(int i2) {
            this.collect_count_cycle = i2;
        }

        public void setComment_count(int i2) {
            this.comment_count = i2;
        }

        public void setIs_collect(int i2) {
            this.is_collect = i2;
        }

        public void setIs_like(int i2) {
            this.is_like = i2;
        }

        public void setLabels(List<String> list) {
            this.labels = list;
        }

        public void setLike_count(int i2) {
            this.like_count = i2;
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
