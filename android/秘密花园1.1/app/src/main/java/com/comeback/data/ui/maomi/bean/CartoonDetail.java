package com.comeback.data.ui.maomi.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class CartoonDetail extends j {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<DataBean> data;
        public int total;
        public int total_page;

        /* loaded from: classes.dex */
        public static class DataBean {
            public int browses;
            public String id;
            public String image;
            public boolean is_praise;
            public int liked;
            public String name;
            public int praises;

            public String getBrowses() {
                return this.browses + e.a("0c7Cgt780ZT7");
            }

            public String getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public int getLiked() {
                return this.liked;
            }

            public String getName() {
                return this.name;
            }

            public String getPraises() {
                return this.praises + e.a("09jZjMz63I3kg4rvkN/9");
            }

            public boolean isIs_praise() {
                return this.is_praise;
            }

            public void setBrowses(int i2) {
                this.browses = i2;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setIs_praise(boolean z) {
                this.is_praise = z;
            }

            public void setLiked(int i2) {
                this.liked = i2;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setPraises(int i2) {
                this.praises = i2;
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public int getTotal() {
            return this.total;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }

        public void setTotal(int i2) {
            this.total = i2;
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
