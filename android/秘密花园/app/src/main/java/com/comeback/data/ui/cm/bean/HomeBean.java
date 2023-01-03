package com.comeback.data.ui.cm.bean;

import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HomeBean extends j {
    public int code;
    public String msg;
    public List<RescontEntity> rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public int is_ad;
        public List<ListEntity> list;
        public String name;
        public int type;
        public int type_id;

        /* loaded from: classes.dex */
        public class ListEntity {
            public CoverBase64 coverbase64;
            public String coverpath;
            public int id;
            public String title;

            public ListEntity() {
            }

            public CoverBase64 getCoverBase64() {
                return this.coverbase64;
            }

            public String getCoverpath() {
                return this.coverpath;
            }

            public int getId() {
                return this.id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setCoverBase64(CoverBase64 coverBase64) {
                this.coverbase64 = coverBase64;
            }

            public void setCoverpath(String str) {
                this.coverpath = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public RescontEntity() {
        }

        public int getIs_ad() {
            return this.is_ad;
        }

        public List<ListEntity> getList() {
            return this.list;
        }

        public String getName() {
            return this.name;
        }

        public int getType() {
            return this.type;
        }

        public int getType_id() {
            return this.type_id;
        }

        public boolean isAd() {
            return this.is_ad == 1;
        }

        public void setIs_ad(int i2) {
            this.is_ad = i2;
        }

        public void setList(List<ListEntity> list) {
            this.list = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setType(int i2) {
            this.type = i2;
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public List<RescontEntity> getRescont() {
        List<RescontEntity> list = this.rescont;
        if (!(list == null || list.size() == 0)) {
            Iterator<RescontEntity> it = this.rescont.iterator();
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
        }
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(List<RescontEntity> list) {
        this.rescont = list;
    }
}
