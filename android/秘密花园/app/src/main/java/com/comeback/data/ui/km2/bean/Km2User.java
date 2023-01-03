package com.comeback.data.ui.km2.bean;

import g.a.f1.n;
import g.a.g0;
import g.a.v0;

/* loaded from: classes.dex */
public class Km2User extends g0 implements v0 {
    public String mu_id;
    public String mu_name;

    public Km2User() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    public String getMu_id() {
        return realmGet$mu_id();
    }

    public String getMu_name() {
        return realmGet$mu_name();
    }

    @Override // g.a.v0
    public String realmGet$mu_id() {
        return this.mu_id;
    }

    @Override // g.a.v0
    public String realmGet$mu_name() {
        return this.mu_name;
    }

    @Override // g.a.v0
    public void realmSet$mu_id(String str) {
        this.mu_id = str;
    }

    @Override // g.a.v0
    public void realmSet$mu_name(String str) {
        this.mu_name = str;
    }

    public void setMu_id(String str) {
        realmSet$mu_id(str);
    }

    public void setMu_name(String str) {
        realmSet$mu_name(str);
    }
}
