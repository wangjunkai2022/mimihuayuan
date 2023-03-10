package com.comeback.data.ui.cucumber.bean;

import c.a.a.b.g.h;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class LogBean extends k {
    public String equiCompany;
    public String equiId;
    public String equiModel;
    public String liveVersion;
    public String netInfo;
    public int os;

    public String getEquiCompany() {
        return this.equiCompany;
    }

    public String getEquiId() {
        return this.equiId;
    }

    public String getEquiModel() {
        return this.equiModel;
    }

    public String getLiveVersion() {
        return this.liveVersion;
    }

    public String getNetInfo() {
        return this.netInfo;
    }

    public int getOs() {
        return this.os;
    }

    public void setEquiCompany(String str) {
        this.equiCompany = str;
    }

    public void setEquiId(String str) {
        String T0 = h.T0(str);
        String charSequence = T0.subSequence(1, 21).toString();
        String charSequence2 = T0.subSequence(21, T0.length()).toString();
        StringBuilder o = a.o(charSequence);
        o.append(e.a("Bg=="));
        o.append(charSequence2);
        this.equiId = o.toString();
    }

    public void setEquiId2(String str) {
        this.equiId = str;
    }

    public void setEquiModel(String str) {
        this.equiModel = str;
    }

    public void setLiveVersion(String str) {
        this.liveVersion = str;
    }

    public void setNetInfo(String str) {
        this.netInfo = str;
    }

    public void setOs(int i2) {
        this.os = i2;
    }
}
