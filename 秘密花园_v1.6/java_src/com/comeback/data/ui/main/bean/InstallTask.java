package com.comeback.data.ui.main.bean;

import f.e.a.f.k;
/* loaded from: classes.dex */
public class InstallTask extends k {
    public String intro;
    public int lockType = -1;
    public String name;
    public String packageName;
    public String url;

    public String getIntro() {
        return this.intro;
    }

    public int getLockType() {
        return this.lockType;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getUrl() {
        return this.url;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setLockType(int i2) {
        this.lockType = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
