package com.comeback.data.ui.bale.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ScreenBean extends j {
    public String message;
    public List<ResultBean> result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public String desc;
        public String icon;
        public int id;
        public String title;

        public String getDesc() {
            return this.desc;
        }

        public String getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public List<ResultBean> getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(List<ResultBean> list) {
        this.result = list;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
