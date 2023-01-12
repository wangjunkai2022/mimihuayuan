package com.comeback.data.ui.aimeiju.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class PlayKey extends k {
    public int code;
    public DataEntity data;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String key;
        public String time;

        public DataEntity() {
        }

        public String getKey() {
            return this.key;
        }

        public String getTime() {
            return this.time;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setTime(String str) {
            this.time = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }
}
