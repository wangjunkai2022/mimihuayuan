package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class SearchInfo extends k {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<ChildrenBeanXX> children;
        public String group_id;
        public String name;
        public int order_index;
        public String tree_id;

        /* loaded from: classes.dex */
        public static class ChildrenBeanXX {
            public AttrsBean attrs;
            public List<ChildrenBeanX> children;
            public String group_id;
            public String name;
            public int order_index;
            public String parent_group_id;
            public String tree_id;

            /* loaded from: classes.dex */
            public static class AttrsBean {
                public String view;
                public ViewPropsBean viewProps;

                /* loaded from: classes.dex */
                public static class ViewPropsBean {
                    public String types_tree_id;

                    public String getTypes_tree_id() {
                        return this.types_tree_id;
                    }

                    public void setTypes_tree_id(String str) {
                        this.types_tree_id = str;
                    }
                }

                public String getView() {
                    return this.view;
                }

                public ViewPropsBean getViewProps() {
                    return this.viewProps;
                }

                public void setView(String str) {
                    this.view = str;
                }

                public void setViewProps(ViewPropsBean viewPropsBean) {
                    this.viewProps = viewPropsBean;
                }
            }

            /* loaded from: classes.dex */
            public static class ChildrenBeanX {
                public List<ChildrenBean> children;
                public String group_id;
                public String name;
                public int order_index;
                public String parent_group_id;
                public String tree_id;

                /* loaded from: classes.dex */
                public static class ChildrenBean {
                    public AttrsBeanX attrs;
                    public String group_id;
                    public String name;
                    public OrderValueBean orderValue;
                    public int order_index;
                    public String parent_group_id;
                    public String tree_id;
                    public String type;

                    /* loaded from: classes.dex */
                    public static class AttrsBeanX {
                        public boolean selected;

                        public boolean isSelected() {
                            return this.selected;
                        }

                        public void setSelected(boolean z) {
                            this.selected = z;
                        }
                    }

                    /* loaded from: classes.dex */
                    public static class OrderValueBean {
                        public String type;

                        public String getType() {
                            return this.type;
                        }

                        public void setType(String str) {
                            this.type = str;
                        }
                    }

                    public AttrsBeanX getAttrs() {
                        return this.attrs;
                    }

                    public String getGroup_id() {
                        return this.group_id;
                    }

                    public String getName() {
                        return this.name;
                    }

                    public OrderValueBean getOrderValue() {
                        return this.orderValue;
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

                    public String getType() {
                        return this.type;
                    }

                    public void setAttrs(AttrsBeanX attrsBeanX) {
                        this.attrs = attrsBeanX;
                    }

                    public void setGroup_id(String str) {
                        this.group_id = str;
                    }

                    public void setName(String str) {
                        this.name = str;
                    }

                    public void setOrderValue(OrderValueBean orderValueBean) {
                        this.orderValue = orderValueBean;
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

                    public void setType(String str) {
                        this.type = str;
                    }
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

            public String getParent_group_id() {
                return this.parent_group_id;
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

            public void setParent_group_id(String str) {
                this.parent_group_id = str;
            }

            public void setTree_id(String str) {
                this.tree_id = str;
            }
        }

        public List<ChildrenBeanXX> getChildren() {
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

        public void setChildren(List<ChildrenBeanXX> list) {
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

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
