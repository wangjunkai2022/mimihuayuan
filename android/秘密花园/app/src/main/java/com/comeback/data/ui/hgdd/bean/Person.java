package com.comeback.data.ui.hgdd.bean;

import android.text.TextUtils;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class Person extends j {
    public String address;
    public String ddid;
    public String qq;
    public String wechat;

    public boolean check() {
        return !TextUtils.isEmpty(this.address) || !TextUtils.isEmpty(this.wechat) || !TextUtils.isEmpty(this.qq) || !TextUtils.isEmpty(this.ddid);
    }

    public String getAddress() {
        return this.address;
    }

    public String getDdid() {
        return this.ddid;
    }

    public String getQq() {
        return this.qq;
    }

    public String getWechat() {
        return this.wechat;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setDdid(String str) {
        this.ddid = str;
    }

    public void setQq(String str) {
        this.qq = str;
    }

    public void setWechat(String str) {
        this.wechat = str;
    }
}
