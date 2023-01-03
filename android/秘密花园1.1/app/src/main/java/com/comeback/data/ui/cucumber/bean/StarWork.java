package com.comeback.data.ui.cucumber.bean;

import f.e.a.f.j;
import f.e.a.k.b;
import java.util.List;

/* loaded from: classes.dex */
public class StarWork extends j {
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean {
        public ActorDTOBean actorDTO;
        public List<Video> movieList;

        /* loaded from: classes.dex */
        public static class ActorDTOBean {
            public String briefIntroduction;
            public int id;
            public String nameCn;
            public String nameEn;
            public String nameJpn;
            public String photoUrl;
            public int videosCount;

            public String getBriefIntroduction() {
                return this.briefIntroduction;
            }

            public int getId() {
                return this.id;
            }

            public String getNameCn() {
                return this.nameCn;
            }

            public String getNameEn() {
                return this.nameEn;
            }

            public String getNameJpn() {
                return this.nameJpn;
            }

            public String getPhotoUrl() {
                return b.Q + this.photoUrl;
            }

            public int getVideosCount() {
                return this.videosCount;
            }

            public void setBriefIntroduction(String str) {
                this.briefIntroduction = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setNameCn(String str) {
                this.nameCn = str;
            }

            public void setNameEn(String str) {
                this.nameEn = str;
            }

            public void setNameJpn(String str) {
                this.nameJpn = str;
            }

            public void setPhotoUrl(String str) {
                this.photoUrl = str;
            }

            public void setVideosCount(int i2) {
                this.videosCount = i2;
            }
        }

        public ActorDTOBean getActorDTO() {
            return this.actorDTO;
        }

        public List<Video> getMovieList() {
            return this.movieList;
        }

        public void setActorDTO(ActorDTOBean actorDTOBean) {
            this.actorDTO = actorDTOBean;
        }

        public void setMovieList(List<Video> list) {
            this.movieList = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
