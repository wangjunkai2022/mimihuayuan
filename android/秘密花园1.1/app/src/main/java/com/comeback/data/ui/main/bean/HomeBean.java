package com.comeback.data.ui.main.bean;

import android.text.TextUtils;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class HomeBean extends j {
    public String channelString;
    public String describe;
    public String iconUrl;
    public String name;
    public String packageName;
    public boolean real;
    public int res;
    public InstallTask task;
    public int type;
    public String url;

    public HomeBean() {
    }

    public String getChannelString() {
        return this.channelString;
    }

    public String getDescribe() {
        return this.describe;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getRes() {
        return this.res;
    }

    public InstallTask getTask() {
        return this.task;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isReal() {
        return this.real;
    }

    public boolean needInstall() {
        return !TextUtils.isEmpty(this.packageName);
    }

    public void setChannelString(String str) {
        this.channelString = str;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setReal(boolean z) {
        this.real = z;
    }

    public void setRes(int i2) {
        this.res = i2;
    }

    public void setTask(InstallTask installTask) {
        this.task = installTask;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public HomeBean(String str, int i2, int i3) {
        this.name = str;
        this.res = i2;
        this.type = i3;
    }

    public HomeBean(String str, int i2, int i3, String str2) {
        this.name = str;
        this.res = i2;
        this.type = i3;
        this.describe = str2;
    }

    public HomeBean(String str, int i2, int i3, String str2, String str3) {
        this.name = str;
        this.res = i2;
        this.type = i3;
        this.describe = str2;
        this.url = str3;
    }
}
