package com.comeback.data.ui.live.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class LiveChannel extends j {
    public DataBean data;

    /* loaded from: classes.dex */
    public class DataBean {
        public List<ListBean> lists;

        /* loaded from: classes.dex */
        public class ListBean {
            public String img;
            public String name;
            public String number;
            public String title;

            public ListBean() {
            }

            public String getImage() {
                return this.img;
            }

            public String getName() {
                return this.name;
            }

            public String getNumber() {
                return this.number;
            }

            public String getTitle() {
                return this.title;
            }

            public void setImage(String str) {
                this.img = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setNumber(String str) {
                this.number = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public DataBean() {
        }

        public List<ListBean> getLists() {
            return this.lists;
        }

        public void setLists(List<ListBean> list) {
            this.lists = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }
}
