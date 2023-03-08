package com.comeback.data.ui.cucumber.bean;

import com.comeback.data.ui.cucumber.bean.StarWork;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class TopStar extends k {
    public int code;
    public List<StarWork.DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    public int getCode() {
        return this.code;
    }

    public List<StarWork.DataBean> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<StarWork.DataBean> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
