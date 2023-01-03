package com.comeback.data.ui.lnkl.bean;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.j;
import f.e.a.k.b;

/* loaded from: classes.dex */
public class Video extends j {
    public String date;
    public String img;
    public String name;
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

    public String getUrl() {
        return this.url;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setImg(String str) {
        if (this.url.startsWith(e.a("XxYXFA=="))) {
            this.img = str;
        } else {
            this.img = a.l(new StringBuilder(), b.V, str);
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUrl(String str) {
        if (str.startsWith(e.a("XxYXFA=="))) {
            this.url = str;
        } else {
            this.url = a.l(new StringBuilder(), b.V, str);
        }
    }
}
