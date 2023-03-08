package com.comeback.data.ui.nana.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class TypeBean extends k {
    public ResponseEntity response;
    public StatusEntity status;

    /* loaded from: classes.dex */
    public class ResponseEntity {
        public List<CategoriesEntity> categories;

        /* loaded from: classes.dex */
        public class CategoriesEntity {
            public int category_id;
            public String category_image;
            public String category_name;

            public CategoriesEntity() {
            }

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

        public ResponseEntity() {
        }

        public List<CategoriesEntity> getCategories() {
            return this.categories;
        }

        public void setCategories(List<CategoriesEntity> list) {
            this.categories = list;
        }
    }

    /* loaded from: classes.dex */
    public class StatusEntity {
        public int code;
        public String message;

        public StatusEntity() {
        }

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

    public ResponseEntity getResponse() {
        return this.response;
    }

    public StatusEntity getStatus() {
        return this.status;
    }

    public void setResponse(ResponseEntity responseEntity) {
        this.response = responseEntity;
    }

    public void setStatus(StatusEntity statusEntity) {
        this.status = statusEntity;
    }
}
