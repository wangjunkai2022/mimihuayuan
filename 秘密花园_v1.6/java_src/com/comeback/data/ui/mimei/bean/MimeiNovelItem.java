package com.comeback.data.ui.mimei.bean;

import f.e.a.f.k;
import f.e.a.j.f0.j.d;
import java.util.List;
/* loaded from: classes.dex */
public class MimeiNovelItem extends k {
    public String desc;
    public String favorite_stamp;
    public String filepath;
    public String filepath_tw;
    public int id;
    public String opened_at;
    public Object percent;
    public List<String> tag;
    public String title;
    public int type;
    public int view_count;

    public String getDesc() {
        return this.desc;
    }

    public String getFavorite_stamp() {
        return this.favorite_stamp;
    }

    public String getFilepath() {
        return d.f3932d + this.filepath;
    }

    public String getFilepath_tw() {
        return this.filepath_tw;
    }

    public int getId() {
        return this.id;
    }

    public String getOpened_at() {
        return this.opened_at;
    }

    public Object getPercent() {
        return this.percent;
    }

    public List<String> getTag() {
        return this.tag;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public int getView_count() {
        return this.view_count;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setFavorite_stamp(String str) {
        this.favorite_stamp = str;
    }

    public void setFilepath(String str) {
        this.filepath = str;
    }

    public void setFilepath_tw(String str) {
        this.filepath_tw = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setOpened_at(String str) {
        this.opened_at = str;
    }

    public void setPercent(Object obj) {
        this.percent = obj;
    }

    public void setTag(List<String> list) {
        this.tag = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setView_count(int i2) {
        this.view_count = i2;
    }
}
