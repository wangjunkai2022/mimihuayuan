package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ColumnList extends k {
    public int code;
    public DataEntity data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int currentPage;
        public int hasNextPage;
        public List<Columnist> list;
        public int totalPage;

        public DataEntity() {
        }

        public int getCurrentPage() {
            return this.currentPage;
        }

        public int getHasNextPage() {
            return this.hasNextPage;
        }

        public List<Columnist> getList() {
            return this.list;
        }

        public int getTotalPage() {
            return this.totalPage;
        }

        public void setCurrentPage(int i2) {
            this.currentPage = i2;
        }

        public void setHasNextPage(int i2) {
            this.hasNextPage = i2;
        }

        public void setList(List<Columnist> list) {
            this.list = list;
        }

        public void setTotalPage(int i2) {
            this.totalPage = i2;
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

    public int getTime() {
        return this.time;
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

    public void setTime(int i2) {
        this.time = i2;
    }
}
