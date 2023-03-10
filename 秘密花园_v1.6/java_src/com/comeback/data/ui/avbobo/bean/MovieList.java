package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class MovieList extends k {
    public int code;
    public List<MovieDetail> data;
    public String message;

    public int getCode() {
        return this.code;
    }

    public List<MovieDetail> getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<MovieDetail> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
