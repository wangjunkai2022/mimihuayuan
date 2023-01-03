package com.comeback.data.ui.sex8.bean;

import f.e.a.f.j;
import f.e.a.j.j0.a.d;

/* loaded from: classes.dex */
public class YXParams extends j {
    public String album_id;
    public String category;
    public String child_category;
    public String device_type;
    public String hostid;
    public int is_best;
    public String ispay;
    public int op;
    public int page;
    public String page_size;
    public String radio_by_hostid;
    public String radio_id;
    public String type;
    public String v;

    public String getAlbum_id() {
        return this.album_id;
    }

    public String getCategory() {
        return this.category;
    }

    public String getChild_category() {
        return this.child_category;
    }

    public String getDevice_type() {
        return this.device_type;
    }

    public String getHostid() {
        return this.hostid;
    }

    public int getIs_best() {
        return this.is_best;
    }

    public String getIspay() {
        return this.ispay;
    }

    public int getOp() {
        return this.op;
    }

    public int getPage() {
        return this.page;
    }

    public String getPage_size() {
        return this.page_size;
    }

    public String getRadio_by_hostid() {
        return this.radio_by_hostid;
    }

    public String getRadio_id() {
        return this.radio_id;
    }

    public String getType() {
        return this.type;
    }

    public String getV() {
        return this.v;
    }

    public void setAlbum_id(String str) {
        this.album_id = str;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setChild_category(String str) {
        this.child_category = str;
    }

    public void setDevice_type(String str) {
        this.device_type = str;
    }

    public void setHostid(String str) {
        this.hostid = str;
    }

    public void setIs_best(int i2) {
        this.is_best = i2;
    }

    public void setIspay(String str) {
        this.ispay = str;
    }

    public void setOp(int i2) {
        this.op = i2;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPage_size(String str) {
        this.page_size = str;
    }

    public void setRadio_by_hostid(String str) {
        this.radio_by_hostid = str;
    }

    public void setRadio_id(String str) {
        this.radio_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setV(String str) {
        this.v = str;
    }

    @Override // f.e.a.f.j
    public String toJson() {
        return d.e(super.toJson());
    }
}
