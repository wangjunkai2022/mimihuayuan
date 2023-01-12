package com.comeback.data.ui.cucumber.bean;

import g.a.f1.n;
import g.a.g0;
import g.a.q0;

/* loaded from: classes.dex */
public class RealmVideo extends g0 implements q0 {
    public String cover;
    public String id;
    public String mins;
    public String name;
    public String strPlayCnt;

    public RealmVideo() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    public String getCover() {
        return realmGet$cover();
    }

    public String getId() {
        return realmGet$id();
    }

    public String getMins() {
        return realmGet$mins();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getStrPlayCnt() {
        return realmGet$strPlayCnt();
    }

    @Override // g.a.q0
    public String realmGet$cover() {
        return this.cover;
    }

    @Override // g.a.q0
    public String realmGet$id() {
        return this.id;
    }

    @Override // g.a.q0
    public String realmGet$mins() {
        return this.mins;
    }

    @Override // g.a.q0
    public String realmGet$name() {
        return this.name;
    }

    @Override // g.a.q0
    public String realmGet$strPlayCnt() {
        return this.strPlayCnt;
    }

    @Override // g.a.q0
    public void realmSet$cover(String str) {
        this.cover = str;
    }

    @Override // g.a.q0
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // g.a.q0
    public void realmSet$mins(String str) {
        this.mins = str;
    }

    @Override // g.a.q0
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // g.a.q0
    public void realmSet$strPlayCnt(String str) {
        this.strPlayCnt = str;
    }

    public void setCover(String str) {
        realmSet$cover(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setMins(String str) {
        realmSet$mins(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setStrPlayCnt(String str) {
        realmSet$strPlayCnt(str);
    }
}
