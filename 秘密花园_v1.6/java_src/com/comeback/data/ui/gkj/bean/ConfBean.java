package com.comeback.data.ui.gkj.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ConfBean extends k {
    public int code;
    public ContentEntity content;
    public String message;

    /* loaded from: classes.dex */
    public class ContentEntity {
        public DataEntity data;

        /* loaded from: classes.dex */
        public class DataEntity {
            public List<SpecialNavEntity> specialNav;

            /* loaded from: classes.dex */
            public class SpecialNavEntity {
                public String createTime;
                public int id;
                public String navName;
                public String navNameEn;
                public int sort;
                public int status;
                public int topping;
                public String updateTime;

                public SpecialNavEntity() {
                }

                public String getCreateTime() {
                    return this.createTime;
                }

                public int getId() {
                    return this.id;
                }

                public String getNavName() {
                    return this.navName;
                }

                public String getNavNameEn() {
                    return this.navNameEn;
                }

                public int getSort() {
                    return this.sort;
                }

                public int getStatus() {
                    return this.status;
                }

                public int getTopping() {
                    return this.topping;
                }

                public String getUpdateTime() {
                    return this.updateTime;
                }

                public void setCreateTime(String str) {
                    this.createTime = str;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setNavName(String str) {
                    this.navName = str;
                }

                public void setNavNameEn(String str) {
                    this.navNameEn = str;
                }

                public void setSort(int i2) {
                    this.sort = i2;
                }

                public void setStatus(int i2) {
                    this.status = i2;
                }

                public void setTopping(int i2) {
                    this.topping = i2;
                }

                public void setUpdateTime(String str) {
                    this.updateTime = str;
                }
            }

            public DataEntity() {
            }

            public List<SpecialNavEntity> getSpecialNav() {
                return this.specialNav;
            }

            public void setSpecialNav(List<SpecialNavEntity> list) {
                this.specialNav = list;
            }
        }

        public ContentEntity() {
        }

        public DataEntity getData() {
            return this.data;
        }

        public void setData(DataEntity dataEntity) {
            this.data = dataEntity;
        }
    }

    public int getCode() {
        return this.code;
    }

    public ContentEntity getContent() {
        return this.content;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setContent(ContentEntity contentEntity) {
        this.content = contentEntity;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
