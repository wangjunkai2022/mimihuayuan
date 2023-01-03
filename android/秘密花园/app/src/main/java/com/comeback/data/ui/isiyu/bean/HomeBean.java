package com.comeback.data.ui.isiyu.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class HomeBean extends j {
    public int client_limit;
    public String client_module;
    public String client_style;
    public int id;
    public List<Video> m_video_data;
    public String module;
    public String options;
    public String title;

    public int getClient_limit() {
        return this.client_limit;
    }

    public String getClient_module() {
        return this.client_module;
    }

    public String getClient_style() {
        return this.client_style;
    }

    public int getId() {
        return this.id;
    }

    public List<Video> getM_video_data() {
        return this.m_video_data;
    }

    public String getModule() {
        return this.module;
    }

    public String getOptions() {
        return this.options;
    }

    public String getTitle() {
        return this.title;
    }

    public void setClient_limit(int i2) {
        this.client_limit = i2;
    }

    public void setClient_module(String str) {
        this.client_module = str;
    }

    public void setClient_style(String str) {
        this.client_style = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setM_video_data(List<Video> list) {
        this.m_video_data = list;
    }

    public void setModule(String str) {
        this.module = str;
    }

    public void setOptions(String str) {
        this.options = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
