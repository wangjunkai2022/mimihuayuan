package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.j;

/* loaded from: classes.dex */
public class LoginInfo extends j {
    public Object errors;
    public Object message;
    public int status;
    public TokensBean tokens;

    /* loaded from: classes.dex */
    public static class TokensBean {
        public LoginTokenBean loginToken;
        public Object notifyMessage;
        public int status;
        public TokenBean token;

        /* loaded from: classes.dex */
        public static class LoginTokenBean {
            public String token;
            public String type;

            public String getToken() {
                return this.token;
            }

            public String getType() {
                return this.type;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        /* loaded from: classes.dex */
        public static class TokenBean {
            public String token;
            public String type;

            public String getToken() {
                return this.token;
            }

            public String getType() {
                return this.type;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        public LoginTokenBean getLoginToken() {
            return this.loginToken;
        }

        public Object getNotifyMessage() {
            return this.notifyMessage;
        }

        public int getStatus() {
            return this.status;
        }

        public TokenBean getToken() {
            return this.token;
        }

        public void setLoginToken(LoginTokenBean loginTokenBean) {
            this.loginToken = loginTokenBean;
        }

        public void setNotifyMessage(Object obj) {
            this.notifyMessage = obj;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setToken(TokenBean tokenBean) {
            this.token = tokenBean;
        }
    }

    public Object getErrors() {
        return this.errors;
    }

    public Object getMessage() {
        return this.message;
    }

    public int getStatus() {
        return this.status;
    }

    public TokensBean getTokens() {
        return this.tokens;
    }

    public void setErrors(Object obj) {
        this.errors = obj;
    }

    public void setMessage(Object obj) {
        this.message = obj;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setTokens(TokensBean tokensBean) {
        this.tokens = tokensBean;
    }
}
