package com.comeback.data.ui.ds.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ScreenBean extends k {
    public int code;
    public String msg;
    public ResultBean result;
    public boolean succ;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public boolean lastPage;
        public List<DsItemBean> list;

        public List<DsItemBean> getList() {
            return this.list;
        }

        public boolean isLastPage() {
            return this.lastPage;
        }

        public void setLastPage(boolean z) {
            this.lastPage = z;
        }

        public void setList(List<DsItemBean> list) {
            this.list = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public boolean isSucc() {
        return this.succ;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setSucc(boolean z) {
        this.succ = z;
    }
}
