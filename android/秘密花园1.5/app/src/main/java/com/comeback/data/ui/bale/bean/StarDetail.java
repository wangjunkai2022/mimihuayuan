package com.comeback.data.ui.bale.bean;

import f.e.a.e;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class StarDetail extends k {
    public String message;
    public ResultBean result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public int actress;
        public String artist;
        public String birthday;
        public String country;
        public String created_at;
        public String cup;
        public String desc;
        public int height;
        public int id;
        public String image;
        public int isHot;
        public String letter;
        public String measurement;
        public List<BaleVideoInfo> videoList;

        public int getActress() {
            return this.actress;
        }

        public String getArtist() {
            return this.artist;
        }

        public String getBirthday() {
            return this.birthday;
        }

        public String getCountry() {
            return this.country;
        }

        public String getCreated_at() {
            return this.created_at;
        }

        public String getCup() {
            return this.cup;
        }

        public String getDesc() {
            return this.desc;
        }

        public int getHeight() {
            return this.height;
        }

        public int getId() {
            return this.id;
        }

        public String getImage() {
            return this.image;
        }

        public String getInfo() {
            return e.a("39jIjcDr1o/p") + getHeight() + e.a("F4bb7Y7ojdzP/A==") + getMeasurement() + " " + getCup() + e.a("0f/M");
        }

        public int getIsHot() {
            return this.isHot;
        }

        public String getLetter() {
            return this.letter;
        }

        public String getMeasurement() {
            return this.measurement;
        }

        public List<BaleVideoInfo> getVideoList() {
            return this.videoList;
        }

        public void setActress(int i2) {
            this.actress = i2;
        }

        public void setArtist(String str) {
            this.artist = str;
        }

        public void setBirthday(String str) {
            this.birthday = str;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public void setCreated_at(String str) {
            this.created_at = str;
        }

        public void setCup(String str) {
            this.cup = str;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setHeight(int i2) {
            this.height = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setIsHot(int i2) {
            this.isHot = i2;
        }

        public void setLetter(String str) {
            this.letter = str;
        }

        public void setMeasurement(String str) {
            this.measurement = str;
        }

        public void setVideoList(List<BaleVideoInfo> list) {
            this.videoList = list;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
