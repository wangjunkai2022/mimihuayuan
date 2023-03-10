package com.comeback.data.ui.avbobo.bean;

import f.e.a.e;
/* loaded from: classes.dex */
public class MovieDetail$CoverFullBean$_$01Bean {
    public LocalBean local;

    /* loaded from: classes.dex */
    public static class LocalBean {
        public String path;

        public String getPath() {
            if (!this.path.contains(e.a("RxAGEgIWTh0eFgA=")) && !this.path.contains(e.a("GBEKCgwfXBwaC1UAHRk=")) && !this.path.contains(e.a("GBERB1lcTwE=")) && !this.path.contains(e.a("GBEKCgwfXBwZEw=="))) {
                return e.a("XxYXFBhJFhwFSF0FFwgMWhkBDAlEFldeXBJaEw==") + this.path;
            }
            return e.a("XxYXFBhJFhwaC1UAHRlNCVgADBcfAVZdFFUESRsFDkRSDA5LCRE=") + this.path;
        }

        public void setPath(String str) {
            this.path = str;
        }
    }

    public LocalBean getLocal() {
        return this.local;
    }

    public void setLocal(LocalBean localBean) {
        this.local = localBean;
    }
}
