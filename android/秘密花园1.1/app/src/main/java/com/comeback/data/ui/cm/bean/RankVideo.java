package com.comeback.data.ui.cm.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class RankVideo extends j {
    public int code;
    public String msg;
    public RescontEntity rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public int current_page;
        public HashMap<Object, DataEntity> data;
        public String first_page_url;
        public int from;
        public int last_page;
        public String last_page_url;
        public String next_page_url;
        public String path;
        public int per_page;
        public String prev_page_url;
        public int to;
        public int total;

        /* loaded from: classes.dex */
        public class DataEntity {
            public String authername;
            public CoverBase64 coverbase64;
            public String coverpath;
            public String created_at;
            public int id;
            public int is_vip;
            public int pageviews;
            public String playtimes;
            public String title;
            public String updated_at;
            public String videopath;

            public DataEntity() {
            }

            public String getAuthername() {
                return this.authername;
            }

            public CoverBase64 getCoverBase64() {
                return this.coverbase64;
            }

            public String getCoverpath() {
                if (this.coverpath.startsWith(e.a("XxYXFA=="))) {
                    return this.coverpath;
                }
                return e.a("XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ==") + this.coverpath;
            }

            public String getCreated_at() {
                return this.created_at;
            }

            public int getId() {
                return this.id;
            }

            public int getIs_vip() {
                return this.is_vip;
            }

            public int getPageviews() {
                return this.pageviews;
            }

            public String getPlaytimes() {
                return this.playtimes;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUpdated_at() {
                return this.updated_at;
            }

            public String getVideopath() {
                return this.videopath;
            }

            public void setAuthername(String str) {
                this.authername = str;
            }

            public void setCoverBase64(CoverBase64 coverBase64) {
                this.coverbase64 = coverBase64;
            }

            public void setCoverpath(String str) {
                this.coverpath = str;
            }

            public void setCreated_at(String str) {
                this.created_at = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setIs_vip(int i2) {
                this.is_vip = i2;
            }

            public void setPageviews(int i2) {
                this.pageviews = i2;
            }

            public void setPlaytimes(String str) {
                this.playtimes = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUpdated_at(String str) {
                this.updated_at = str;
            }

            public void setVideopath(String str) {
                this.videopath = str;
            }
        }

        public RescontEntity() {
        }

        public List<DataEntity> getAll() {
            ArrayList arrayList = new ArrayList();
            HashMap<Object, DataEntity> hashMap = this.data;
            if (hashMap != null && hashMap.size() != 0) {
                arrayList.addAll(this.data.values());
            }
            return arrayList;
        }

        public int getCurrent_page() {
            return this.current_page;
        }

        public HashMap<Object, DataEntity> getData() {
            return this.data;
        }

        public String getFirst_page_url() {
            return this.first_page_url;
        }

        public int getFrom() {
            return this.from;
        }

        public int getLast_page() {
            return this.last_page;
        }

        public String getLast_page_url() {
            return this.last_page_url;
        }

        public String getNext_page_url() {
            return this.next_page_url;
        }

        public String getPath() {
            return this.path;
        }

        public int getPer_page() {
            return this.per_page;
        }

        public String getPrev_page_url() {
            return this.prev_page_url;
        }

        public int getTo() {
            return this.to;
        }

        public int getTotal() {
            return this.total;
        }

        public void setCurrent_page(int i2) {
            this.current_page = i2;
        }

        public void setData(HashMap<Object, DataEntity> hashMap) {
            this.data = hashMap;
        }

        public void setFirst_page_url(String str) {
            this.first_page_url = str;
        }

        public void setFrom(int i2) {
            this.from = i2;
        }

        public void setLast_page(int i2) {
            this.last_page = i2;
        }

        public void setLast_page_url(String str) {
            this.last_page_url = str;
        }

        public void setNext_page_url(String str) {
            this.next_page_url = str;
        }

        public void setPath(String str) {
            this.path = str;
        }

        public void setPer_page(int i2) {
            this.per_page = i2;
        }

        public void setPrev_page_url(String str) {
            this.prev_page_url = str;
        }

        public void setTo(int i2) {
            this.to = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public RescontEntity getRescont() {
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(RescontEntity rescontEntity) {
        this.rescont = rescontEntity;
    }
}
