package com.comeback.data.ui.lutube.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoType extends j {
    public ResponseBean response;
    public StatusBean status;

    /* loaded from: classes.dex */
    public static class ResponseBean {
        public List<CategoriesBean> categories;

        /* loaded from: classes.dex */
        public static class CategoriesBean {
            public int category_id;
            public String category_image;
            public String category_name;

            public int getCategory_id() {
                return this.category_id;
            }

            public String getCategory_image() {
                return this.category_image;
            }

            public String getCategory_name() {
                return this.category_name;
            }

            public void setCategory_id(int i2) {
                this.category_id = i2;
            }

            public void setCategory_image(String str) {
                this.category_image = str;
            }

            public void setCategory_name(String str) {
                this.category_name = str;
            }
        }

        public List<CategoriesBean> getCategories() {
            return this.categories;
        }

        public void setCategories(List<CategoriesBean> list) {
            this.categories = list;
        }
    }

    /* loaded from: classes.dex */
    public static class StatusBean {
        public int code;
        public String message;

        public int getCode() {
            return this.code;
        }

        public String getMessage() {
            return this.message;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }
    }

    public ResponseBean getResponse() {
        return this.response;
    }

    public StatusBean getStatus() {
        return this.status;
    }

    public void setResponse(ResponseBean responseBean) {
        this.response = responseBean;
    }

    public void setStatus(StatusBean statusBean) {
        this.status = statusBean;
    }
}
