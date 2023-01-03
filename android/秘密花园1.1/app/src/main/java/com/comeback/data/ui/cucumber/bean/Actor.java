package com.comeback.data.ui.cucumber.bean;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.j;
import f.e.a.k.b;

/* loaded from: classes.dex */
public class Actor extends j {
    public int actorsId;
    public String briefIntroduction;
    public int bust;
    public String cup;
    public int height;
    public int hips;
    public int id;
    public int movNumber;
    public String name;
    public String nameCn;
    public String nameEn;
    public String nameJpn;
    public String photoUrl;
    public String starLevel;
    public int videosCount;
    public int waist;

    public String getBriefIntroduction() {
        return this.briefIntroduction;
    }

    public int getBust() {
        return this.bust;
    }

    public String getCup() {
        return this.cup;
    }

    public int getHeight() {
        return this.height;
    }

    public int getHips() {
        return this.hips;
    }

    public int getId() {
        int i2 = this.actorsId;
        return i2 == 0 ? this.id : i2;
    }

    public String getInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append(e.a("39jIjcDrAw=="));
        sb.append(this.height);
        sb.append(e.a("VA9DRI/LsNbo0g4="));
        sb.append(this.bust);
        sb.append(e.a("GA=="));
        sb.append(this.waist);
        sb.append(e.a("GA=="));
        sb.append(this.hips);
        sb.append(e.a("VA9DRIzOkNXuyQ4="));
        return a.n(sb, this.cup, "0f/M");
    }

    public String getNameCn() {
        if (TextUtils.isEmpty(this.name)) {
            return this.nameCn;
        }
        return this.name;
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

    public String getStarLevel() {
        return this.starLevel;
    }

    public int getVideosCount() {
        int i2 = this.movNumber;
        return i2 == 0 ? this.videosCount : i2;
    }

    public int getWaist() {
        return this.waist;
    }

    public void setBriefIntroduction(String str) {
        this.briefIntroduction = str;
    }

    public void setBust(int i2) {
        this.bust = i2;
    }

    public void setCup(String str) {
        this.cup = str;
    }

    public void setHeight(int i2) {
        this.height = i2;
    }

    public void setHips(int i2) {
        this.hips = i2;
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

    public void setStarLevel(String str) {
        this.starLevel = str;
    }

    public void setVideosCount(int i2) {
        this.videosCount = i2;
    }

    public void setWaist(int i2) {
        this.waist = i2;
    }
}
