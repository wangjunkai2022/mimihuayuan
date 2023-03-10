package com.comeback.data.ui.mimei.bean;

import f.e.a.e;
import f.e.a.f.k;
/* loaded from: classes.dex */
public class RegisterBean extends k {
    public SuccessBean success;

    /* loaded from: classes.dex */
    public static class SuccessBean {
        public String token;
        public String universal_id;
        public int user_id;

        public String getToken() {
            return e.a("dQcCFg4BGQ==") + this.token;
        }

        public String getUniversal_id() {
            return this.universal_id;
        }

        public int getUser_id() {
            return this.user_id;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUniversal_id(String str) {
            this.universal_id = str;
        }

        public void setUser_id(int i2) {
            this.user_id = i2;
        }
    }

    public SuccessBean getSuccess() {
        return this.success;
    }

    public void setSuccess(SuccessBean successBean) {
        this.success = successBean;
    }
}
