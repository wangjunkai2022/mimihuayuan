package com.comeback.data.ui.fengliu.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class MMList2 extends j {
    public int code;
    public DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String countId;
        public int current;
        public String maxLimit;
        public boolean optimizeCountSql;
        public List<?> orders;
        public int pages;
        public List<RecordsEntity> records;
        public boolean searchCount;
        public int size;
        public int total;

        public DataEntity() {
        }

        public String getCountId() {
            return this.countId;
        }

        public int getCurrent() {
            return this.current;
        }

        public String getMaxLimit() {
            return this.maxLimit;
        }

        public List<?> getOrders() {
            return this.orders;
        }

        public int getPages() {
            return this.pages;
        }

        public List<RecordsEntity> getRecords() {
            return this.records;
        }

        public int getSize() {
            return this.size;
        }

        public int getTotal() {
            return this.total;
        }

        public boolean isOptimizeCountSql() {
            return this.optimizeCountSql;
        }

        public boolean isSearchCount() {
            return this.searchCount;
        }

        public void setCountId(String str) {
            this.countId = str;
        }

        public void setCurrent(int i2) {
            this.current = i2;
        }

        public void setMaxLimit(String str) {
            this.maxLimit = str;
        }

        public void setOptimizeCountSql(boolean z) {
            this.optimizeCountSql = z;
        }

        public void setOrders(List<?> list) {
            this.orders = list;
        }

        public void setPages(int i2) {
            this.pages = i2;
        }

        public void setRecords(List<RecordsEntity> list) {
            this.records = list;
        }

        public void setSearchCount(boolean z) {
            this.searchCount = z;
        }

        public void setSize(int i2) {
            this.size = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
