package com.comeback.data.ui.mimei.bean;

import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.List;

/* loaded from: classes.dex */
public class ApiInfo extends k {
    public List<HostEntity> host;
    @b("host.pwa")
    public List<HostEntity> host_pwa;

    /* loaded from: classes.dex */
    public class HostEntity {
        public String name;
        public String url;

        public HostEntity() {
        }

        public String getName() {
            return this.name;
        }

        public String getUrl() {
            return this.url;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public List<HostEntity> getHost() {
        return this.host;
    }

    public List<HostEntity> getHost_pwa() {
        return this.host_pwa;
    }

    public void setHost(List<HostEntity> list) {
        this.host = list;
    }

    public void setHost_pwa(List<HostEntity> list) {
        this.host_pwa = list;
    }
}
