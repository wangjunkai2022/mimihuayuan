package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class SearchResult extends k {
    public int code;
    public List<DataEntity> data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int date_number;
        public String img_url;
        public int issue;
        public int library_id;
        public String love_number;
        public String movie_time;
        public int play_time_num_self;
        public String title;

        public DataEntity() {
        }

        public int getDate_number() {
            return this.date_number;
        }

        public String getImg_url() {
            return this.img_url;
        }

        public int getIssue() {
            return this.issue;
        }

        public int getLibrary_id() {
            return this.library_id;
        }

        public String getLove_number() {
            return this.love_number;
        }

        public String getMovie_time() {
            return this.movie_time;
        }

        public int getPlay_time_num_self() {
            return this.play_time_num_self;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDate_number(int i2) {
            this.date_number = i2;
        }

        public void setImg_url(String str) {
            this.img_url = str;
        }

        public void setIssue(int i2) {
            this.issue = i2;
        }

        public void setLibrary_id(int i2) {
            this.library_id = i2;
        }

        public void setLove_number(String str) {
            this.love_number = str;
        }

        public void setMovie_time(String str) {
            this.movie_time = str;
        }

        public void setPlay_time_num_self(int i2) {
            this.play_time_num_self = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataEntity> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getTime() {
        return this.time;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setTime(int i2) {
        this.time = i2;
    }
}
