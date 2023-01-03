package com.comeback.data.ui.xj.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class SearchResult extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<VideoBean> hotrows;
        public List<HotwordsBean> hotwords;
        public List<VideoBean> vodrows;
        public String xxx_api_auth;

        /* loaded from: classes.dex */
        public static class HotwordsBean {
            public String dspwd;
            public String schwd;

            public String getDspwd() {
                return this.dspwd;
            }

            public String getSchwd() {
                return this.schwd;
            }

            public void setDspwd(String str) {
                this.dspwd = str;
            }

            public void setSchwd(String str) {
                this.schwd = str;
            }
        }

        public List<VideoBean> getHotrows() {
            List<VideoBean> list = this.hotrows;
            if (list != null && list.size() != 0) {
                return this.hotrows;
            }
            return this.vodrows;
        }

        public List<HotwordsBean> getHotwords() {
            return this.hotwords;
        }

        public String getXxx_api_auth() {
            return this.xxx_api_auth;
        }

        public void setHotrows(List<VideoBean> list) {
            this.hotrows = list;
        }

        public void setHotwords(List<HotwordsBean> list) {
            this.hotwords = list;
        }

        public void setXxx_api_auth(String str) {
            this.xxx_api_auth = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
