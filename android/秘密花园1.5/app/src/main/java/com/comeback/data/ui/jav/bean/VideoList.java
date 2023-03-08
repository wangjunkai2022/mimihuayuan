package com.comeback.data.ui.jav.bean;

import f.e.a.f.k;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoList extends k {
    public boolean isVertical;
    public ArrayList<Video> list;

    public ArrayList<Video> getList() {
        return this.list;
    }

    public boolean isVertical() {
        return this.isVertical;
    }

    public void setList(ArrayList<Video> arrayList) {
        this.list = arrayList;
    }

    public void setVertical(boolean z) {
        this.isVertical = z;
    }
}
