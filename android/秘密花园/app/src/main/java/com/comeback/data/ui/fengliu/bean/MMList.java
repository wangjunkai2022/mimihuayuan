package com.comeback.data.ui.fengliu.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class MMList extends j {
    public int current_page;
    public List<MMInfo> data;
    public String first_page_url;
    public int from;
    public int last_page;
    public String last_page_url;
    public String next_page_url;
    public String path;
    public String per_page;
    public Object prev_page_url;
    public int to;
    public int total;

    public int getCurrent_page() {
        return this.current_page;
    }

    public List<MMInfo> getData() {
        return this.data;
    }

    public String getFirst_page_url() {
        return this.first_page_url;
    }

    public int getFrom() {
        return this.from;
    }

    public int getLast_page() {
        return this.last_page;
    }

    public String getLast_page_url() {
        return this.last_page_url;
    }

    public String getNext_page_url() {
        return this.next_page_url;
    }

    public String getPath() {
        return this.path;
    }

    public String getPer_page() {
        return this.per_page;
    }

    public Object getPrev_page_url() {
        return this.prev_page_url;
    }

    public int getTo() {
        return this.to;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCurrent_page(int i2) {
        this.current_page = i2;
    }

    public void setData(List<MMInfo> list) {
        this.data = list;
    }

    public void setFirst_page_url(String str) {
        this.first_page_url = str;
    }

    public void setFrom(int i2) {
        this.from = i2;
    }

    public void setLast_page(int i2) {
        this.last_page = i2;
    }

    public void setLast_page_url(String str) {
        this.last_page_url = str;
    }

    public void setNext_page_url(String str) {
        this.next_page_url = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPer_page(String str) {
        this.per_page = str;
    }

    public void setPrev_page_url(Object obj) {
        this.prev_page_url = obj;
    }

    public void setTo(int i2) {
        this.to = i2;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
