package com.comeback.data.ui.km.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import f.e.a.k.f;
import f.e.a.k.j;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class KMInfo extends k {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public ArrayList<InfoBean> system;

        /* loaded from: classes.dex */
        public static class InfoBean {
            public String ms_forum_url;
            public String ms_help;
            public String ms_id;
            public String ms_share_url;
            public String ms_title;

            public String getMs_forum_url() {
                return this.ms_forum_url;
            }

            public String getMs_help() {
                return this.ms_help;
            }

            public String getMs_id() {
                return this.ms_id;
            }

            public String getMs_share_url() {
                return this.ms_share_url;
            }

            public String getMs_title() {
                return this.ms_title;
            }

            public void setMs_forum_url(String str) {
                this.ms_forum_url = str;
            }

            public void setMs_help(String str) {
                this.ms_help = str;
            }

            public void setMs_id(String str) {
                this.ms_id = str;
            }

            public void setMs_share_url(String str) {
                this.ms_share_url = str;
            }

            public void setMs_title(String str) {
                this.ms_title = str;
            }
        }

        public ArrayList<InfoBean> getSystem() {
            return this.system;
        }

        public String getTargetUrl() {
            ArrayList<InfoBean> arrayList = this.system;
            if (arrayList != null && arrayList.size() != 0) {
                Iterator<InfoBean> it = this.system.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    InfoBean next = it.next();
                    if (next.ms_id.equals(e.a("BlY="))) {
                        Video.targetUrl = next.ms_forum_url;
                        Video.targetUrlDetail = next.ms_help;
                        String e2 = j.b().e(e.a("XA88DRs="), "");
                        if (!TextUtils.isEmpty(e2) && !TextUtils.isEmpty(Video.targetUrlDetail) && Video.targetUrlDetail.contains(e2)) {
                            Video.targetUrl = e2;
                            e.a("09/cg//b3qfbgLzQkdH7g5nGiuHmlISd");
                            f.a();
                        }
                    }
                }
            }
            return Video.targetUrl;
        }

        public void setSystem(ArrayList<InfoBean> arrayList) {
            this.system = arrayList;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
