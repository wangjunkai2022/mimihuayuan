package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class AVboboConfig extends k {
    public List<BackupHostsBean> backupHosts;
    public String id;
    public List<LastestRefHostsBean> lastestRefHosts;
    public List<MainHostsBean> mainHosts;
    public String sign;

    /* loaded from: classes.dex */
    public static class BackupHostsBean {
        public String host;
        public String path;

        public String getHost() {
            return this.host;
        }

        public String getPath() {
            return this.path;
        }

        public void setHost(String str) {
            this.host = str;
        }

        public void setPath(String str) {
            this.path = str;
        }
    }

    /* loaded from: classes.dex */
    public static class LastestRefHostsBean {
        public String uri;

        public String getUri() {
            return this.uri;
        }

        public void setUri(String str) {
            this.uri = str;
        }
    }

    /* loaded from: classes.dex */
    public static class MainHostsBean {
        public String host;
        public String path;

        public String getHost() {
            return this.host;
        }

        public String getPath() {
            return this.path;
        }

        public void setHost(String str) {
            this.host = str;
        }

        public void setPath(String str) {
            this.path = str;
        }
    }

    public List<BackupHostsBean> getBackupHosts() {
        return this.backupHosts;
    }

    public String getId() {
        return this.id;
    }

    public List<LastestRefHostsBean> getLastestRefHosts() {
        return this.lastestRefHosts;
    }

    public List<MainHostsBean> getMainHosts() {
        return this.mainHosts;
    }

    public String getSign() {
        return this.sign;
    }

    public void setBackupHosts(List<BackupHostsBean> list) {
        this.backupHosts = list;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLastestRefHosts(List<LastestRefHostsBean> list) {
        this.lastestRefHosts = list;
    }

    public void setMainHosts(List<MainHostsBean> list) {
        this.mainHosts = list;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
