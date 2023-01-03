package com.comeback.data.ui.jav.bean;

import f.e.a.f.j;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ActorDetail extends j {
    public String count;
    public ArrayList<Video> list;
    public String name;
    public String secondName;

    public String getCount() {
        return this.count;
    }

    public ArrayList<Video> getList() {
        return this.list;
    }

    public String getName() {
        return this.name;
    }

    public String getSecondName() {
        return this.secondName;
    }

    public void setCount(String str) {
        this.count = str;
    }

    public void setList(ArrayList<Video> arrayList) {
        this.list = arrayList;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSecondName(String str) {
        this.secondName = str;
    }
}
