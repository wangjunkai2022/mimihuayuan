package com.comeback.data.ui.senlin.bean;

import f.e.a.f.j;
import f.i.b.b0.b;
import java.util.List;

/* loaded from: classes.dex */
public class SenlinList extends j {
    @b("class")
    public List<ClassEntity> cClass;
    public int code;
    public String limit;
    public List<ListEntity> list;
    public String msg;
    public int page;
    public int pagecount;
    public int total;

    /* loaded from: classes.dex */
    public class ClassEntity {
        public int type_id;
        public String type_name;
        public int type_pid;

        public ClassEntity() {
        }

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public int getType_pid() {
            return this.type_pid;
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }

        public void setType_name(String str) {
            this.type_name = str;
        }

        public void setType_pid(int i2) {
            this.type_pid = i2;
        }
    }

    /* loaded from: classes.dex */
    public class ListEntity {
        public int type_id;
        public String type_name;
        public String vod_en;
        public int vod_id;
        public String vod_name;
        public String vod_play_from;
        public String vod_remarks;
        public String vod_time;

        public ListEntity() {
        }

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public String getVod_en() {
            return this.vod_en;
        }

        public int getVod_id() {
            return this.vod_id;
        }

        public String getVod_name() {
            return this.vod_name;
        }

        public String getVod_play_from() {
            return this.vod_play_from;
        }

        public String getVod_remarks() {
            return this.vod_remarks;
        }

        public String getVod_time() {
            return this.vod_time;
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }

        public void setType_name(String str) {
            this.type_name = str;
        }

        public void setVod_en(String str) {
            this.vod_en = str;
        }

        public void setVod_id(int i2) {
            this.vod_id = i2;
        }

        public void setVod_name(String str) {
            this.vod_name = str;
        }

        public void setVod_play_from(String str) {
            this.vod_play_from = str;
        }

        public void setVod_remarks(String str) {
            this.vod_remarks = str;
        }

        public void setVod_time(String str) {
            this.vod_time = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getLimit() {
        return this.limit;
    }

    public List<ListEntity> getList() {
        return this.list;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPage() {
        return this.page;
    }

    public int getPagecount() {
        return this.pagecount;
    }

    public int getTotal() {
        return this.total;
    }

    public List<ClassEntity> getcClass() {
        return this.cClass;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setLimit(String str) {
        this.limit = str;
    }

    public void setList(List<ListEntity> list) {
        this.list = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPagecount(int i2) {
        this.pagecount = i2;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }

    public void setcClass(List<ClassEntity> list) {
        this.cClass = list;
    }
}
