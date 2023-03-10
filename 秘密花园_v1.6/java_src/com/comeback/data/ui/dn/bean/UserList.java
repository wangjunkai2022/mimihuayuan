package com.comeback.data.ui.dn.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class UserList extends k {
    public DataBean data;
    public String msg;
    public int ret;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int code;
        public List<UserInfo> info;
        public String msg;

        public int getCode() {
            return this.code;
        }

        public List<UserInfo> getInfo() {
            return this.info;
        }

        public String getMsg() {
            return this.msg;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setInfo(List<UserInfo> list) {
            this.info = list;
        }

        public void setMsg(String str) {
            this.msg = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getRet() {
        return this.ret;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRet(int i2) {
        this.ret = i2;
    }
}
