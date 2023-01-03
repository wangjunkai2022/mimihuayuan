package com.comeback.data.ui.fengliu.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class Login extends j {
    public String access_token;
    public int expires_in;
    public String token_type;

    public String getAccess_token() {
        return this.access_token;
    }

    public int getExpires_in() {
        return this.expires_in;
    }

    public String getToken_type() {
        return this.token_type;
    }

    public void setAccess_token(String str) {
        this.access_token = str;
    }

    public void setExpires_in(int i2) {
        this.expires_in = i2;
    }

    public void setToken_type(String str) {
        this.token_type = str;
    }
}
