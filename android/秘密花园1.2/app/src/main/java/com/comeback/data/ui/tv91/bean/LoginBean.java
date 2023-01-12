package com.comeback.data.ui.tv91.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class LoginBean extends k {
    public String Code;
    public MessageBean Message;
    public int Result;

    /* loaded from: classes.dex */
    public static class MessageBean {
        public String Token;

        public String getToken() {
            return this.Token;
        }

        public void setToken(String str) {
            this.Token = str;
        }
    }

    public String getCode() {
        return this.Code;
    }

    public MessageBean getMessage() {
        return this.Message;
    }

    public int getResult() {
        return this.Result;
    }

    public void setCode(String str) {
        this.Code = str;
    }

    public void setMessage(MessageBean messageBean) {
        this.Message = messageBean;
    }

    public void setResult(int i2) {
        this.Result = i2;
    }
}
