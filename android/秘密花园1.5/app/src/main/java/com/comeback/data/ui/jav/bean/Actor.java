package com.comeback.data.ui.jav.bean;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class Actor extends k {
    public String img;
    public String name;
    public String url;

    public String getImg() {
        return this.img;
    }

    public String getName() {
        return this.name;
    }

    public String getUrl() {
        return this.url;
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

    public void setUrl(String str) {
        this.url = str;
    }
}
