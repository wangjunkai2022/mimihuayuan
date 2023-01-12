package com.comeback.data.ui.isiyu.bean;

import f.e.a.e;
import f.e.a.f.k;

/* loaded from: classes.dex */
public class Video extends k {
    public int coins;
    public String cover_url;
    public int duration;
    public String id;
    public int is_vip;
    public String online_time;
    public int play_count;
    public String play_url_m3u8;
    public String title;
    public int view_time;

    public int getCoins() {
        return this.coins;
    }

    public String getCover_url() {
        return this.cover_url;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getDurationS() {
        int i2 = this.duration;
        int i3 = i2 / 60;
        int i4 = i2 % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(i3);
        sb.append(e.a("DQ=="));
        sb.append(i4 < 10 ? e.a("Bw==") : "");
        sb.append(i4);
        return sb.toString();
    }

    public String getId() {
        return this.id;
    }

    public int getIs_vip() {
        return this.is_vip;
    }

    public String getOnline_time() {
        return this.online_time;
    }

    public int getPlay_count() {
        return this.play_count;
    }

    public String getPlay_url_m3u8() {
        return this.play_url_m3u8;
    }

    public String getTimeAndDuration() {
        return e.a("0fnXgv3D36TFj6PTl9b5") + this.online_time + e.a("F0JDTA==") + getDurationS() + e.a("Hg==");
    }

    public String getTitle() {
        return this.title;
    }

    public int getView_time() {
        return this.view_time;
    }

    public void setCoins(int i2) {
        this.coins = i2;
    }

    public void setCover_url(String str) {
        this.cover_url = str;
    }

    public void setDuration(int i2) {
        this.duration = i2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIs_vip(int i2) {
        this.is_vip = i2;
    }

    public void setOnline_time(String str) {
        this.online_time = str;
    }

    public void setPlay_count(int i2) {
        this.play_count = i2;
    }

    public void setPlay_url_m3u8(String str) {
        this.play_url_m3u8 = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setView_time(int i2) {
        this.view_time = i2;
    }
}
