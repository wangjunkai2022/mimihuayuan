package com.comeback.data.ui.iqiyi.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class Category extends k {
    public String catId;
    public String cateId;
    public String description;
    public String img;
    public String indexShow;
    public String isPoint;
    public String name;
    public Object orderBy;
    public String vipLevel;

    public String getCatId() {
        return this.catId;
    }

    public String getCateId() {
        return this.cateId;
    }

    public String getDescription() {
        return this.description;
    }

    public String getImg() {
        return this.img;
    }

    public String getIndexShow() {
        return this.indexShow;
    }

    public String getIsPoint() {
        return this.isPoint;
    }

    public String getName() {
        return this.name;
    }

    public Object getOrderBy() {
        return this.orderBy;
    }

    public String getVipLevel() {
        if (TextUtils.isEmpty(this.vipLevel) || this.vipLevel.equals(e.a("Bg=="))) {
            return "";
        }
        return e.a("ezRN") + this.vipLevel;
    }

    public void setCatId(String str) {
        this.catId = str;
    }

    public void setCateId(String str) {
        this.cateId = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIndexShow(String str) {
        this.indexShow = str;
    }

    public void setIsPoint(String str) {
        this.isPoint = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOrderBy(Object obj) {
        this.orderBy = obj;
    }

    public void setVipLevel(String str) {
        this.vipLevel = str;
    }
}
