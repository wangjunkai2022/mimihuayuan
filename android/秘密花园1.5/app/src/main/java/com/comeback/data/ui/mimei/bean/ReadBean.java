package com.comeback.data.ui.mimei.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ReadBean extends k {
    public SuccessBean success;

    /* loaded from: classes.dex */
    public static class SuccessBean {
        public List<String> data;

        public List<String> getData() {
            return this.data;
        }

        public void setData(List<String> list) {
            this.data = list;
        }
    }

    public SuccessBean getSuccess() {
        return this.success;
    }

    public void setSuccess(SuccessBean successBean) {
        this.success = successBean;
    }
}
