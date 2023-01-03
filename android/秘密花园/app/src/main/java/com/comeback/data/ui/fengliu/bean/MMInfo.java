package com.comeback.data.ui.fengliu.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MMInfo extends j {
    public String address;
    public int anonymous;
    public String cityCodeReadable;
    public String city_code;
    public String consume_lv;
    public List<String> coverPictureHrefs;
    public String cover_picture;
    public String createdAtReadable;
    public String created_at;
    public String desc;
    public String descToHtml;
    public Object environment;
    public String girl_age;
    public String girl_beauty;
    public String girl_num;
    public int id;
    public boolean is_expired;
    public boolean is_recommend;
    public String phone;
    public String picture;
    public List<String> pictureHrefs;
    public String publishedAtReadable;
    public String published_at;
    public String qq;
    public int score;
    public String serve_list;
    public Object serve_lv;
    public int status;
    public String statusReadable;
    public String title;
    public int type;
    public String updated_at;
    public String userName;
    public int userReputation;
    public int userStatus;
    public int user_id;
    public int view_count;
    public int vipProfileStatus;
    public String wechat;

    public String getAddress() {
        return this.address;
    }

    public int getAnonymous() {
        return this.anonymous;
    }

    public String getCityCodeReadable() {
        return this.cityCodeReadable;
    }

    public String getCity_code() {
        return this.city_code;
    }

    public String getConsume_lv() {
        return this.consume_lv;
    }

    public List<String> getCoverPictureHrefs() {
        return this.coverPictureHrefs;
    }

    public String getCover_picture() {
        if (TextUtils.isEmpty(this.cover_picture)) {
            return this.cover_picture;
        }
        if (this.cover_picture.startsWith(e.a("XxYXFA=="))) {
            return this.cover_picture;
        }
        return e.a("XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZSBEEBQQYEgoHHwZLVlw=") + this.cover_picture;
    }

    public String getCreatedAtReadable() {
        return this.createdAtReadable;
    }

    public String getCreated_at() {
        return this.created_at;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getDescToHtml() {
        return this.descToHtml;
    }

    public Object getEnvironment() {
        return this.environment;
    }

    public String getGirl_age() {
        return this.girl_age;
    }

    public String getGirl_beauty() {
        return this.girl_beauty;
    }

    public String getGirl_num() {
        return this.girl_num;
    }

    public int getId() {
        return this.id;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPicture() {
        return this.picture;
    }

    public List<String> getPictureHrefs() {
        List<String> list = this.pictureHrefs;
        if (list == null || list.size() == 0) {
            return this.pictureHrefs;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.pictureHrefs.size(); i2++) {
            String str = this.pictureHrefs.get(i2);
            if (!TextUtils.isEmpty(str) && !str.startsWith(e.a("XxYXFA=="))) {
                arrayList.add(e.a("XxYXFBhJ") + str);
            }
        }
        return arrayList;
    }

    public String getPublishedAtReadable() {
        return this.publishedAtReadable;
    }

    public String getPublished_at() {
        return this.published_at;
    }

    public String getQq() {
        return this.qq;
    }

    public int getScore() {
        return this.score;
    }

    public String getServe_list() {
        return this.serve_list;
    }

    public Object getServe_lv() {
        return this.serve_lv;
    }

    public int getStatus() {
        return this.status;
    }

    public String getStatusReadable() {
        return this.statusReadable;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public String getUpdated_at() {
        return this.updated_at;
    }

    public String getUserName() {
        return this.userName;
    }

    public int getUserReputation() {
        return this.userReputation;
    }

    public int getUserStatus() {
        return this.userStatus;
    }

    public int getUser_id() {
        return this.user_id;
    }

    public int getView_count() {
        return this.view_count;
    }

    public int getVipProfileStatus() {
        return this.vipProfileStatus;
    }

    public String getWechat() {
        return this.wechat;
    }

    public boolean isIs_expired() {
        return this.is_expired;
    }

    public boolean isIs_recommend() {
        return this.is_recommend;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAnonymous(int i2) {
        this.anonymous = i2;
    }

    public void setCityCodeReadable(String str) {
        this.cityCodeReadable = str;
    }

    public void setCity_code(String str) {
        this.city_code = str;
    }

    public void setConsume_lv(String str) {
        this.consume_lv = str;
    }

    public void setCoverPictureHrefs(List<String> list) {
        this.coverPictureHrefs = list;
    }

    public void setCover_picture(String str) {
        this.cover_picture = str;
    }

    public void setCreatedAtReadable(String str) {
        this.createdAtReadable = str;
    }

    public void setCreated_at(String str) {
        this.created_at = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setDescToHtml(String str) {
        this.descToHtml = str;
    }

    public void setEnvironment(Object obj) {
        this.environment = obj;
    }

    public void setGirl_age(String str) {
        this.girl_age = str;
    }

    public void setGirl_beauty(String str) {
        this.girl_beauty = str;
    }

    public void setGirl_num(String str) {
        this.girl_num = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIs_expired(boolean z) {
        this.is_expired = z;
    }

    public void setIs_recommend(boolean z) {
        this.is_recommend = z;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setPicture(String str) {
        this.picture = str;
    }

    public void setPictureHrefs(List<String> list) {
        this.pictureHrefs = list;
    }

    public void setPublishedAtReadable(String str) {
        this.publishedAtReadable = str;
    }

    public void setPublished_at(String str) {
        this.published_at = str;
    }

    public void setQq(String str) {
        this.qq = str;
    }

    public void setScore(int i2) {
        this.score = i2;
    }

    public void setServe_list(String str) {
        this.serve_list = str;
    }

    public void setServe_lv(Object obj) {
        this.serve_lv = obj;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setStatusReadable(String str) {
        this.statusReadable = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUpdated_at(String str) {
        this.updated_at = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setUserReputation(int i2) {
        this.userReputation = i2;
    }

    public void setUserStatus(int i2) {
        this.userStatus = i2;
    }

    public void setUser_id(int i2) {
        this.user_id = i2;
    }

    public void setView_count(int i2) {
        this.view_count = i2;
    }

    public void setVipProfileStatus(int i2) {
        this.vipProfileStatus = i2;
    }

    public void setWechat(String str) {
        this.wechat = str;
    }
}
