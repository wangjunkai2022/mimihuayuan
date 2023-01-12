package com.comeback.data.ui.maomi.bean;

import com.comeback.data.ui.maomi.bean.HomeData;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class SearchResult extends k {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<HomeData.DataBean.VideosBean> data;
        public int total_page;

        public List<HomeData.DataBean.VideosBean> getData() {
            return this.data;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<HomeData.DataBean.VideosBean> list) {
            this.data = list;
        }

        public void setTotal_page(int i2) {
            this.total_page = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBeanX getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBeanX dataBeanX) {
        this.data = dataBeanX;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
