package com.comeback.data.ui.gkj.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ScreenBean extends k {
    public List<StateBean> pay;
    public List<StateBean> sort;
    public List<StateBean> state;
    public List<TypeBean> type;

    /* loaded from: classes.dex */
    public static class StateBean {
        public String key;
        public String name;

        public String getKey() {
            return this.key;
        }

        public String getName() {
            return this.name;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes.dex */
    public static class TypeBean {
        public List<ChildrenBean> children;
        public String key;
        public String name;

        /* loaded from: classes.dex */
        public static class ChildrenBean {
            public int id;
            public String title;

            public int getId() {
                return this.id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public List<ChildrenBean> getChildren() {
            return this.children;
        }

        public String getKey() {
            return this.key;
        }

        public String getName() {
            return this.name;
        }

        public void setChildren(List<ChildrenBean> list) {
            this.children = list;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public List<StateBean> getPay() {
        return this.pay;
    }

    public List<StateBean> getSort() {
        return this.sort;
    }

    public List<StateBean> getState() {
        return this.state;
    }

    public List<TypeBean> getType() {
        return this.type;
    }

    public void setPay(List<StateBean> list) {
        this.pay = list;
    }

    public void setSort(List<StateBean> list) {
        this.sort = list;
    }

    public void setState(List<StateBean> list) {
        this.state = list;
    }

    public void setType(List<TypeBean> list) {
        this.type = list;
    }
}
