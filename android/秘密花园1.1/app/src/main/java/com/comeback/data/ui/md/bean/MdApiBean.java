package com.comeback.data.ui.md.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class MdApiBean extends j {
    public int code;
    public DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String file_name;

        public DataEntity() {
        }

        public String getFile_name() {
            return this.file_name;
        }

        public void setFile_name(String str) {
            this.file_name = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
