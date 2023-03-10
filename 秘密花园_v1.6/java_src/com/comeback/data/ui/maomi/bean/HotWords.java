package com.comeback.data.ui.maomi.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class HotWords extends k {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<DataBean> data;
        public int total_page;

        /* loaded from: classes.dex */
        public static class DataBean {
            public int id;
            public String name;

            public int getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<DataBean> list) {
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
