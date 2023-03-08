package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class FilmInfo extends k {
    public int code;
    public List<DataEntity> data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String actor;
        public String download_url;
        public String encryption_url;
        public String file_name;
        public int id;
        public String img_url;
        public String introduction;
        public int level_constraint;
        public String love_number;
        public String movie_time;
        public int play_count;
        public String publish_at;
        public double score;
        public List<TagsEntity> tags;
        public String title;
        public String url;

        /* loaded from: classes.dex */
        public class TagsEntity {
            public int tag_id;
            public String tag_title;

            public TagsEntity() {
            }

            public int getTag_id() {
                return this.tag_id;
            }

            public String getTag_title() {
                return this.tag_title;
            }

            public void setTag_id(int i2) {
                this.tag_id = i2;
            }

            public void setTag_title(String str) {
                this.tag_title = str;
            }
        }

        public DataEntity() {
        }

        public String getActor() {
            return this.actor;
        }

        public String getDownload_url() {
            return this.download_url;
        }

        public String getEncryption_url() {
            return this.encryption_url;
        }

        public String getFile_name() {
            return this.file_name;
        }

        public int getId() {
            return this.id;
        }

        public String getImg_url() {
            return this.img_url;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public int getLevel_constraint() {
            return this.level_constraint;
        }

        public String getLove_number() {
            return this.love_number;
        }

        public String getMovie_time() {
            return this.movie_time;
        }

        public int getPlay_count() {
            return this.play_count;
        }

        public String getPublish_at() {
            return this.publish_at;
        }

        public double getScore() {
            return this.score;
        }

        public List<TagsEntity> getTags() {
            return this.tags;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setActor(String str) {
            this.actor = str;
        }

        public void setDownload_url(String str) {
            this.download_url = str;
        }

        public void setEncryption_url(String str) {
            this.encryption_url = str;
        }

        public void setFile_name(String str) {
            this.file_name = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImg_url(String str) {
            this.img_url = str;
        }

        public void setIntroduction(String str) {
            this.introduction = str;
        }

        public void setLevel_constraint(int i2) {
            this.level_constraint = i2;
        }

        public void setLove_number(String str) {
            this.love_number = str;
        }

        public void setMovie_time(String str) {
            this.movie_time = str;
        }

        public void setPlay_count(int i2) {
            this.play_count = i2;
        }

        public void setPublish_at(String str) {
            this.publish_at = str;
        }

        public void setScore(double d2) {
            this.score = d2;
        }

        public void setTags(List<TagsEntity> list) {
            this.tags = list;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUrl(String str) {
            this.url = str;
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
