package com.comeback.data.ui.jav.bean;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class Video extends k {
    public String date;
    public String img;
    public String name;
    public String uid;
    public String url;

    public String getDate() {
        return this.date;
    }

    public String getImg() {
        return this.img;
    }

    public String getName() {
        return this.name;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isFC2() {
        return !TextUtils.isEmpty(this.uid) && this.uid.contains(e.a("cSFR"));
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setImg(String str) {
        if (str.startsWith(e.a("XxYXFA=="))) {
            this.img = str;
        } else {
            this.img = a.l(new StringBuilder(), f.e.a.j.v.e.a.a, str);
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setUrl(String str) {
        if (str.startsWith(e.a("XxYXFA=="))) {
            this.url = str;
        } else {
            this.url = a.l(new StringBuilder(), f.e.a.j.v.e.a.a, str);
        }
    }
}
