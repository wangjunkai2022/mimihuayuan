package com.comeback.data.ui.md.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ChanelList extends k {
    public int code;
    public List<DataEntity> data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String desc;
        public int id;
        public String image;
        public String name;
        public int total;
        public String url;

        public DataEntity() {
        }

        public String getDesc() {
            return this.desc;
        }

        public int getId() {
            return this.id;
        }

        public String getImage() {
            return this.image;
        }

        public String getName() {
            return this.name;
        }

        public int getTotal() {
            return this.total;
        }

        public String getUrl() {
            return this.url;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataEntity> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
