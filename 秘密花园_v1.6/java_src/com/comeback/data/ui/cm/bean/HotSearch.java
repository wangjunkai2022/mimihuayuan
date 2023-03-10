package com.comeback.data.ui.cm.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class HotSearch extends k {
    public int code;
    public String msg;
    public List<RescontEntity> rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public List<String> lists;
        public String title;

        public RescontEntity() {
        }

        public List<String> getLists() {
            return this.lists;
        }

        public String getTitle() {
            return this.title;
        }

        public void setLists(List<String> list) {
            this.lists = list;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public List<RescontEntity> getRescont() {
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(List<RescontEntity> list) {
        this.rescont = list;
    }
}
