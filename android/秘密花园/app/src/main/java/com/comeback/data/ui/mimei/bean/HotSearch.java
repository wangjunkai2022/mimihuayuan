package com.comeback.data.ui.mimei.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class HotSearch extends j {
    public SuccessBean success;

    /* loaded from: classes.dex */
    public static class SuccessBean {
        public List<String> hot;

        public List<String> getHot() {
            return this.hot;
        }

        public void setHot(List<String> list) {
            this.hot = list;
        }
    }

    public SuccessBean getSuccess() {
        return this.success;
    }

    public void setSuccess(SuccessBean successBean) {
        this.success = successBean;
    }
}
