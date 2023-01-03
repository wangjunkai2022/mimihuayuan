package com.comeback.data.ui.lnkl.bean;

import f.e.a.f.j;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoInfo extends j {
    public ArrayList<String> imgs;
    public String torrentUrl;

    public ArrayList<String> getImgs() {
        return this.imgs;
    }

    public String getTorrentUrl() {
        return this.torrentUrl;
    }

    public void setImgs(ArrayList<String> arrayList) {
        this.imgs = arrayList;
    }

    public void setTorrentUrl(String str) {
        this.torrentUrl = str;
    }
}
