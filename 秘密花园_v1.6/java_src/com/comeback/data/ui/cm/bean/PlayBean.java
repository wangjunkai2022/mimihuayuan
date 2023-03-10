package com.comeback.data.ui.cm.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class PlayBean extends k {
    public int code;
    public String msg;
    public RescontEntity rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public int artist;
        public String auther;
        public String auther_no;
        public String authername;
        public String cover;
        public String created_at;
        public String ext;
        public int id;
        public String introduction;
        public int is_like;
        public int is_vip;
        public List<LablsEntity> labls;
        public int pageviews;
        public String playtimes;
        public String short_video_path;
        public int sort_id;
        public String title;
        public String uuid;
        public String videopath;

        /* loaded from: classes.dex */
        public class LablsEntity {
            public int id;
            public String name;

            public LablsEntity() {
            }

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

        public RescontEntity() {
        }

        public int getArtist() {
            return this.artist;
        }

        public String getAuther() {
            return this.auther;
        }

        public String getAuther_no() {
            return this.auther_no;
        }

        public String getAuthername() {
            return this.authername;
        }

        public String getCover() {
            return this.cover;
        }

        public String getCreated_at() {
            return this.created_at;
        }

        public String getExt() {
            return this.ext;
        }

        public int getId() {
            return this.id;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public int getIs_like() {
            return this.is_like;
        }

        public int getIs_vip() {
            return this.is_vip;
        }

        public List<LablsEntity> getLabls() {
            return this.labls;
        }

        public int getPageviews() {
            return this.pageviews;
        }

        public String getPlaytimes() {
            return this.playtimes;
        }

        public String getShort_video_path() {
            return this.short_video_path;
        }

        public int getSort_id() {
            return this.sort_id;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUuid() {
            return this.uuid;
        }

        public String getVideopath() {
            return this.videopath;
        }

        public void setArtist(int i2) {
            this.artist = i2;
        }

        public void setAuther(String str) {
            this.auther = str;
        }

        public void setAuther_no(String str) {
            this.auther_no = str;
        }

        public void setAuthername(String str) {
            this.authername = str;
        }

        public void setCover(String str) {
            this.cover = str;
        }

        public void setCreated_at(String str) {
            this.created_at = str;
        }

        public void setExt(String str) {
            this.ext = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIntroduction(String str) {
            this.introduction = str;
        }

        public void setIs_like(int i2) {
            this.is_like = i2;
        }

        public void setIs_vip(int i2) {
            this.is_vip = i2;
        }

        public void setLabls(List<LablsEntity> list) {
            this.labls = list;
        }

        public void setPageviews(int i2) {
            this.pageviews = i2;
        }

        public void setPlaytimes(String str) {
            this.playtimes = str;
        }

        public void setShort_video_path(String str) {
            this.short_video_path = str;
        }

        public void setSort_id(int i2) {
            this.sort_id = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUuid(String str) {
            this.uuid = str;
        }

        public void setVideopath(String str) {
            this.videopath = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public RescontEntity getRescont() {
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(RescontEntity rescontEntity) {
        this.rescont = rescontEntity;
    }
}
