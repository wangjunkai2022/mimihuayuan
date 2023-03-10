package com.comeback.data.ui.bale.bean;

import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class HotSearch extends k {
    public String message;
    public ResultBean result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public List<HotBean> hot;
        public List<HotBean> recommend;

        /* loaded from: classes.dex */
        public static class HotBean {
            public int id;
            public int is_recommand;
            public String title;

            public int getId() {
                return this.id;
            }

            public int getIs_recommand() {
                return this.is_recommand;
            }

            public String getTitle() {
                return this.title;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setIs_recommand(int i2) {
                this.is_recommand = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public List<HotBean> getAll() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.recommend);
            arrayList.addAll(this.hot);
            return arrayList;
        }

        public List<HotBean> getHot() {
            return this.hot;
        }

        public List<HotBean> getRecommend() {
            return this.recommend;
        }

        public void setHot(List<HotBean> list) {
            this.hot = list;
        }

        public void setRecommend(List<HotBean> list) {
            this.recommend = list;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
