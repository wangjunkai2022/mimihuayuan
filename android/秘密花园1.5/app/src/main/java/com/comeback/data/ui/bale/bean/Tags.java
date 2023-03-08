package com.comeback.data.ui.bale.bean;

import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Tags extends k {
    public String message;
    public ResultBean result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public List<TagsBean> tags;

        /* loaded from: classes.dex */
        public static class TagsBean {
            public int id;
            public List<ListBean> list;
            public String name;

            /* loaded from: classes.dex */
            public static class ListBean {
                public int id;
                public String title;
                public int topic;

                public int getId() {
                    return this.id;
                }

                public String getTitle() {
                    return this.title;
                }

                public int getTopic() {
                    return this.topic;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setTitle(String str) {
                    this.title = str;
                }

                public void setTopic(int i2) {
                    this.topic = i2;
                }
            }

            public int getId() {
                return this.id;
            }

            public List<ListBean> getList() {
                return this.list;
            }

            public String getName() {
                return this.name;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setList(List<ListBean> list) {
                this.list = list;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public List<TagsBean.ListBean> getAllTags() {
            ArrayList arrayList = new ArrayList();
            for (TagsBean tagsBean : this.tags) {
                arrayList.addAll(tagsBean.getList());
            }
            return arrayList;
        }

        public List<TagsBean> getTags() {
            return this.tags;
        }

        public void setTags(List<TagsBean> list) {
            this.tags = list;
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
