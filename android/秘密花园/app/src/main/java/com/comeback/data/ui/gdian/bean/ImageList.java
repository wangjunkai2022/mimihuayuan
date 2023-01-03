package com.comeback.data.ui.gdian.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.text.DecimalFormat;
import java.util.List;

/* loaded from: classes.dex */
public class ImageList extends j {
    public String code;
    public DataEntity data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<ImageEntity> data;
        public int total;

        /* loaded from: classes.dex */
        public class ImageEntity {
            public String atlas_cover;
            public int atlas_id;
            public int atlas_long;
            public String atlas_name;
            public int collect_count_cycle;
            public int push_time;
            public int watch_count;
            public int watch_count_cycle;

            public ImageEntity() {
            }

            public String getAtlas_cover() {
                return this.atlas_cover;
            }

            public int getAtlas_id() {
                return this.atlas_id;
            }

            public int getAtlas_long() {
                return this.atlas_long;
            }

            public String getAtlas_name() {
                return this.atlas_name;
            }

            public int getCollect_count_cycle() {
                return this.collect_count_cycle;
            }

            public int getPush_time() {
                return this.push_time;
            }

            public int getWatch_count() {
                return this.watch_count;
            }

            public String getWatch_countText() {
                int i2 = this.watch_count;
                if (i2 < 10000) {
                    return e.a("09jZgtvnGQ==") + this.watch_count;
                }
                DecimalFormat decimalFormat = new DecimalFormat(e.a("B0xT"));
                return e.a("09jZgtvnGQ==") + decimalFormat.format((double) (((float) i2) / 10000.0f)) + e.a("QA==");
            }

            public int getWatch_count_cycle() {
                return this.watch_count_cycle;
            }

            public void setAtlas_cover(String str) {
                this.atlas_cover = str;
            }

            public void setAtlas_id(int i2) {
                this.atlas_id = i2;
            }

            public void setAtlas_long(int i2) {
                this.atlas_long = i2;
            }

            public void setAtlas_name(String str) {
                this.atlas_name = str;
            }

            public void setCollect_count_cycle(int i2) {
                this.collect_count_cycle = i2;
            }

            public void setPush_time(int i2) {
                this.push_time = i2;
            }

            public void setWatch_count(int i2) {
                this.watch_count = i2;
            }

            public void setWatch_count_cycle(int i2) {
                this.watch_count_cycle = i2;
            }
        }

        public DataEntity() {
        }

        public List<ImageEntity> getData() {
            return this.data;
        }

        public int getTotal() {
            return this.total;
        }

        public void setData(List<ImageEntity> list) {
            this.data = list;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public int getIs_login() {
        return this.is_login;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setIs_login(int i2) {
        this.is_login = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
