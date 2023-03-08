package com.comeback.data.ui.ds.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class RankBean extends k {
    public int code;
    public String msg;
    public ResultBean result;
    public boolean succ;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public List<DsItemBean> most_clicks;
        public List<DsItemBean> most_consumes;
        public List<DsItemBean> most_favorites;
        public List<DsItemBean> most_search;

        public List<DsItemBean> getMost_clicks() {
            return this.most_clicks;
        }

        public List<DsItemBean> getMost_consumes() {
            return this.most_consumes;
        }

        public List<DsItemBean> getMost_favorites() {
            return this.most_favorites;
        }

        public List<DsItemBean> getMost_search() {
            return this.most_search;
        }

        public void setMost_clicks(List<DsItemBean> list) {
            this.most_clicks = list;
        }

        public void setMost_consumes(List<DsItemBean> list) {
            this.most_consumes = list;
        }

        public void setMost_favorites(List<DsItemBean> list) {
            this.most_favorites = list;
        }

        public void setMost_search(List<DsItemBean> list) {
            this.most_search = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public boolean isSucc() {
        return this.succ;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setSucc(boolean z) {
        this.succ = z;
    }
}
