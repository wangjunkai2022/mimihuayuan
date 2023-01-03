package com.comeback.data.ui.ds.bean;

import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RecommendBean extends j {
    public int code;
    public DataBean data;
    public Object start;
    public int total;

    /* loaded from: classes.dex */
    public static class DataBean {
        public DataBeanX cnxh;
        public DataBeanX jphc1;
        public DataBeanX jphc2;
        public DataBeanX mzsx;
        public DataBeanX mzxm;
        public DataBeanX rmtj1;
        public DataBeanX rmtj2;
        public DataBeanX top;

        /* loaded from: classes.dex */
        public static class DataBeanX {
            public List<DsItemBean> data;

            public List<DsItemBean> getData() {
                return this.data;
            }

            public void setData(List<DsItemBean> list) {
                this.data = list;
            }
        }

        public DataBeanX getCnxh() {
            return this.cnxh;
        }

        public List<DsItemBean> getJphc() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(getJphc1().data);
            arrayList.addAll(getJphc2().data);
            return arrayList;
        }

        public DataBeanX getJphc1() {
            return this.jphc1;
        }

        public DataBeanX getJphc2() {
            return this.jphc2;
        }

        public DataBeanX getMzsx() {
            return this.mzsx;
        }

        public DataBeanX getMzxm() {
            return this.mzxm;
        }

        public List<DsItemBean> getRmtj() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(getRmtj1().data);
            arrayList.addAll(getRmtj1().data);
            return arrayList;
        }

        public DataBeanX getRmtj1() {
            return this.rmtj1;
        }

        public DataBeanX getRmtj2() {
            return this.rmtj2;
        }

        public DataBeanX getTop() {
            return this.top;
        }

        public void setCnxh(DataBeanX dataBeanX) {
            this.cnxh = dataBeanX;
        }

        public void setJphc1(DataBeanX dataBeanX) {
            this.jphc1 = dataBeanX;
        }

        public void setJphc2(DataBeanX dataBeanX) {
            this.jphc2 = dataBeanX;
        }

        public void setMzsx(DataBeanX dataBeanX) {
            this.mzsx = dataBeanX;
        }

        public void setMzxm(DataBeanX dataBeanX) {
            this.mzxm = dataBeanX;
        }

        public void setRmtj1(DataBeanX dataBeanX) {
            this.rmtj1 = dataBeanX;
        }

        public void setRmtj2(DataBeanX dataBeanX) {
            this.rmtj2 = dataBeanX;
        }

        public void setTop(DataBeanX dataBeanX) {
            this.top = dataBeanX;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public Object getStart() {
        return this.start;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setStart(Object obj) {
        this.start = obj;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
