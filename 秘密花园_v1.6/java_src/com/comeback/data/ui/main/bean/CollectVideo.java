package com.comeback.data.ui.main.bean;

import g.a.b1;
import g.a.f1.n;
import g.a.g0;
/* loaded from: classes.dex */
public class CollectVideo extends g0 implements b1 {
    public long addTime;
    public String name;
    public String url;

    public CollectVideo() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    public long getAddTime() {
        return realmGet$addTime();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getUrl() {
        return realmGet$url();
    }

    @Override // g.a.b1
    public long realmGet$addTime() {
        return this.addTime;
    }

    @Override // g.a.b1
    public String realmGet$name() {
        return this.name;
    }

    @Override // g.a.b1
    public String realmGet$url() {
        return this.url;
    }

    @Override // g.a.b1
    public void realmSet$addTime(long j2) {
        this.addTime = j2;
    }

    @Override // g.a.b1
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // g.a.b1
    public void realmSet$url(String str) {
        this.url = str;
    }

    public void setAddTime(long j2) {
        realmSet$addTime(j2);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setUrl(String str) {
        realmSet$url(str);
    }
}
