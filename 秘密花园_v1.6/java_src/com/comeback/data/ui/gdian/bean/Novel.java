package com.comeback.data.ui.gdian.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class Novel extends k {
    public String code;
    public DataEntity data;
    public String is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String chapter_content;
        public String chapter_id;
        public String chapter_name;
        public String chapter_no;
        public String content_long;
        public String content_mp3;
        public String content_mp4;
        public String fiction_id;
        public String last_chapter_id;
        public String next_chapter_id;
        public String serial_time;
        public List<Streamer_listEntity> streamer_list;

        /* loaded from: classes.dex */
        public class Streamer_listEntity {
            public String ad_id;
            public String ad_picture;
            public String ad_sort;
            public String ad_url;
            public String headportrait;
            public String introduction;
            public String nickname;

            public Streamer_listEntity() {
            }

            public String getAd_id() {
                return this.ad_id;
            }

            public String getAd_picture() {
                return this.ad_picture;
            }

            public String getAd_sort() {
                return this.ad_sort;
            }

            public String getAd_url() {
                return this.ad_url;
            }

            public String getHeadportrait() {
                return this.headportrait;
            }

            public String getIntroduction() {
                return this.introduction;
            }

            public String getNickname() {
                return this.nickname;
            }

            public void setAd_id(String str) {
                this.ad_id = str;
            }

            public void setAd_picture(String str) {
                this.ad_picture = str;
            }

            public void setAd_sort(String str) {
                this.ad_sort = str;
            }

            public void setAd_url(String str) {
                this.ad_url = str;
            }

            public void setHeadportrait(String str) {
                this.headportrait = str;
            }

            public void setIntroduction(String str) {
                this.introduction = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }
        }

        public DataEntity() {
        }

        public String getChapter_content() {
            return this.chapter_content;
        }

        public String getChapter_id() {
            return this.chapter_id;
        }

        public String getChapter_name() {
            return this.chapter_name;
        }

        public String getChapter_no() {
            return this.chapter_no;
        }

        public String getContent_long() {
            return this.content_long;
        }

        public String getContent_mp3() {
            return this.content_mp3;
        }

        public String getContent_mp4() {
            return this.content_mp4;
        }

        public String getFiction_id() {
            return this.fiction_id;
        }

        public String getLast_chapter_id() {
            return this.last_chapter_id;
        }

        public String getNext_chapter_id() {
            return this.next_chapter_id;
        }

        public String getSerial_time() {
            return this.serial_time;
        }

        public List<Streamer_listEntity> getStreamer_list() {
            return this.streamer_list;
        }

        public void setChapter_content(String str) {
            this.chapter_content = str;
        }

        public void setChapter_id(String str) {
            this.chapter_id = str;
        }

        public void setChapter_name(String str) {
            this.chapter_name = str;
        }

        public void setChapter_no(String str) {
            this.chapter_no = str;
        }

        public void setContent_long(String str) {
            this.content_long = str;
        }

        public void setContent_mp3(String str) {
            this.content_mp3 = str;
        }

        public void setContent_mp4(String str) {
            this.content_mp4 = str;
        }

        public void setFiction_id(String str) {
            this.fiction_id = str;
        }

        public void setLast_chapter_id(String str) {
            this.last_chapter_id = str;
        }

        public void setNext_chapter_id(String str) {
            this.next_chapter_id = str;
        }

        public void setSerial_time(String str) {
            this.serial_time = str;
        }

        public void setStreamer_list(List<Streamer_listEntity> list) {
            this.streamer_list = list;
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getIs_login() {
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

    public void setIs_login(String str) {
        this.is_login = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
