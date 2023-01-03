package com.comeback.data.ui.ds.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.j;
import f.i.b.b0.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ComicDetailBean extends j {
    public int code;
    public String msg;
    public ResultBean result;
    public boolean succ;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public boolean lastPage;
        public List<ListBean> list;
        public String pageNumber;
        public String pageSize;
        public int totalPage;
        public String totalRow;

        /* loaded from: classes.dex */
        public static class ListBean {
            public int buy;
            public String cjid;
            public String cjname;
            public String cjstatus;
            public String content;
            public String create_time;
            public String id;
            public String image;
            public String imagelist;
            public int isvip;
            public String manhua_id;
            public String score;
            public String sort;
            @b("switch")
            public String switchX;
            public String title;
            public String type;
            public String update_time;
            public Object view;

            public List<String> getAllImage() {
                String[] split;
                ArrayList arrayList = new ArrayList();
                if (TextUtils.isEmpty(this.imagelist)) {
                    return arrayList;
                }
                for (String str : this.imagelist.split(e.a("Gw=="))) {
                    arrayList.add(f.e.a.k.b.l0 + str);
                }
                return arrayList;
            }

            public int getBuy() {
                return this.buy;
            }

            public String getCjid() {
                return this.cjid;
            }

            public String getCjname() {
                return this.cjname;
            }

            public String getCjstatus() {
                return this.cjstatus;
            }

            public String getContent() {
                return this.content;
            }

            public String getCreate_time() {
                return this.create_time;
            }

            public String getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public String getImagelist() {
                return this.imagelist;
            }

            public int getIsvip() {
                return this.isvip;
            }

            public String getManhua_id() {
                return this.manhua_id;
            }

            public String getScore() {
                return this.score;
            }

            public String getSort() {
                return this.sort;
            }

            public String getSwitchX() {
                return this.switchX;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public String getUpdate_time() {
                return this.update_time;
            }

            public Object getView() {
                return this.view;
            }

            public void setBuy(int i2) {
                this.buy = i2;
            }

            public void setCjid(String str) {
                this.cjid = str;
            }

            public void setCjname(String str) {
                this.cjname = str;
            }

            public void setCjstatus(String str) {
                this.cjstatus = str;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCreate_time(String str) {
                this.create_time = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setImagelist(String str) {
                this.imagelist = str;
            }

            public void setIsvip(int i2) {
                this.isvip = i2;
            }

            public void setManhua_id(String str) {
                this.manhua_id = str;
            }

            public void setScore(String str) {
                this.score = str;
            }

            public void setSort(String str) {
                this.sort = str;
            }

            public void setSwitchX(String str) {
                this.switchX = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }

            public void setUpdate_time(String str) {
                this.update_time = str;
            }

            public void setView(Object obj) {
                this.view = obj;
            }
        }

        public List<ListBean> getList() {
            return this.list;
        }

        public String getPageNumber() {
            return this.pageNumber;
        }

        public String getPageSize() {
            return this.pageSize;
        }

        public int getTotalPage() {
            return this.totalPage;
        }

        public String getTotalRow() {
            return this.totalRow;
        }

        public boolean isLastPage() {
            return this.lastPage;
        }

        public void setLastPage(boolean z) {
            this.lastPage = z;
        }

        public void setList(List<ListBean> list) {
            this.list = list;
        }

        public void setPageNumber(String str) {
            this.pageNumber = str;
        }

        public void setPageSize(String str) {
            this.pageSize = str;
        }

        public void setTotalPage(int i2) {
            this.totalPage = i2;
        }

        public void setTotalRow(String str) {
            this.totalRow = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public boolean isSucc() {
        return this.succ;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setSucc(boolean z) {
        this.succ = z;
    }
}
