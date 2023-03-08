package com.comeback.data.ui.ba.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class HostBean extends k {
    public String defDomain;
    public String newDomain;

    public String getRelease() {
        return this.newDomain;
    }

    public String getTarget() {
        return this.defDomain;
    }

    public void setRelease(String str) {
        this.newDomain = str;
    }

    public void setTarget(String str) {
        this.defDomain = str;
    }
}
