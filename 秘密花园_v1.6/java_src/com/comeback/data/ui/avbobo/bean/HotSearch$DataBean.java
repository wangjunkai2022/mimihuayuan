package com.comeback.data.ui.avbobo.bean;

import java.util.List;
/* loaded from: classes.dex */
public class HotSearch$DataBean {
    public AttrsBean attrs;
    public List<ChildrenBeanX> children;
    public String group_id;
    public String name;
    public int order_index;
    public String tree_id;

    /* loaded from: classes.dex */
    public static class AttrsBean {
        public String view;

        public String getView() {
            return this.view;
        }

        public void setView(String str) {
            this.view = str;
        }
    }

    /* loaded from: classes.dex */
    public static class ChildrenBeanX {
        public AttrsBeanX attrs;
        public List<ChildrenBean> children;
        public String group_id;
        public String name;
        public int order_index;
        public String parent_group_id;
        public String tree_id;

        /* loaded from: classes.dex */
        public static class AttrsBeanX {
            public String view;

            public String getView() {
                return this.view;
            }

            public void setView(String str) {
                this.view = str;
            }
        }

        /* loaded from: classes.dex */
        public static class ChildrenBean {
            public AttrsBeanXX attrs;
            public String group_id;
            public String name;
            public int order_index;
            public String parent_group_id;
            public String tree_id;

            /* loaded from: classes.dex */
            public static class AttrsBeanXX {
                public boolean enabled;
                public String view;

                public String getView() {
                    return this.view;
                }

                public boolean isEnabled() {
                    return this.enabled;
                }

                public void setEnabled(boolean z) {
                    this.enabled = z;
                }

                public void setView(String str) {
                    this.view = str;
                }
            }

            public AttrsBeanXX getAttrs() {
                return this.attrs;
            }

            public String getGroup_id() {
                return this.group_id;
            }

            public String getName() {
                return this.name;
            }

            public int getOrder_index() {
                return this.order_index;
            }

            public String getParent_group_id() {
                return this.parent_group_id;
            }

            public String getTree_id() {
                return this.tree_id;
            }

            public void setAttrs(AttrsBeanXX attrsBeanXX) {
                this.attrs = attrsBeanXX;
            }

            public void setGroup_id(String str) {
                this.group_id = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setOrder_index(int i2) {
                this.order_index = i2;
            }

            public void setParent_group_id(String str) {
                this.parent_group_id = str;
            }

            public void setTree_id(String str) {
                this.tree_id = str;
            }
        }

        public AttrsBeanX getAttrs() {
            return this.attrs;
        }

        public List<ChildrenBean> getChildren() {
            return this.children;
        }

        public String getGroup_id() {
            return this.group_id;
        }

        public String getName() {
            return this.name;
        }

        public int getOrder_index() {
            return this.order_index;
        }

        public String getParent_group_id() {
            return this.parent_group_id;
        }

        public String getTree_id() {
            return this.tree_id;
        }

        public void setAttrs(AttrsBeanX attrsBeanX) {
            this.attrs = attrsBeanX;
        }

        public void setChildren(List<ChildrenBean> list) {
            this.children = list;
        }

        public void setGroup_id(String str) {
            this.group_id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOrder_index(int i2) {
            this.order_index = i2;
        }

        public void setParent_group_id(String str) {
            this.parent_group_id = str;
        }

        public void setTree_id(String str) {
            this.tree_id = str;
        }
    }

    public AttrsBean getAttrs() {
        return this.attrs;
    }

    public List<ChildrenBeanX> getChildren() {
        return this.children;
    }

    public String getGroup_id() {
        return this.group_id;
    }

    public String getName() {
        return this.name;
    }

    public int getOrder_index() {
        return this.order_index;
    }

    public String getTree_id() {
        return this.tree_id;
    }

    public void setAttrs(AttrsBean attrsBean) {
        this.attrs = attrsBean;
    }

    public void setChildren(List<ChildrenBeanX> list) {
        this.children = list;
    }

    public void setGroup_id(String str) {
        this.group_id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOrder_index(int i2) {
        this.order_index = i2;
    }

    public void setTree_id(String str) {
        this.tree_id = str;
    }
}
