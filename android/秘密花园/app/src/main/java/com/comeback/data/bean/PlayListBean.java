package com.comeback.data.bean;

import chuangyuan.ycj.videolibrary.listener.ItemVideo;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class PlayListBean extends j implements ItemVideo {
    public String name;
    public String uri;

    public String getName() {
        return this.name;
    }

    public String getUri() {
        return this.uri;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ItemVideo
    public String getVideoUri() {
        return this.uri;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUri(String str) {
        this.uri = str;
    }
}
