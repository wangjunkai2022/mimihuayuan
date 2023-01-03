package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ChannelId extends j {
    public int code;
    public DataBean data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String app_version;
        public String desc;
        public boolean editable;
        public String id;
        public String name;
        public int order_index;
        public RecommendViewQueryGroupBean recommend_view_query_group;
        public SearchViewQueryGroupBean search_view_query_group;
        public boolean searchable;

        /* loaded from: classes.dex */
        public static class RecommendViewQueryGroupBean {
            public ViewGroupBean view_group;

            /* loaded from: classes.dex */
            public static class ViewGroupBean {
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
                        public String nodeType;
                        public int order_index;
                        public String parent_group_id;
                        public QueryBean query;
                        public String tree_id;
                        public String type;

                        /* loaded from: classes.dex */
                        public static class AttrsBeanXX {
                            public String view;

                            public String getView() {
                                return this.view;
                            }

                            public void setView(String str) {
                                this.view = str;
                            }
                        }

                        /* loaded from: classes.dex */
                        public static class QueryBean {
                            public int limit;
                            public List<SortBean> sort;

                            /* loaded from: classes.dex */
                            public static class SortBean {
                                public String group_id;

                                public String getGroup_id() {
                                    return this.group_id;
                                }

                                public void setGroup_id(String str) {
                                    this.group_id = str;
                                }
                            }

                            public int getLimit() {
                                return this.limit;
                            }

                            public List<SortBean> getSort() {
                                return this.sort;
                            }

                            public void setLimit(int i2) {
                                this.limit = i2;
                            }

                            public void setSort(List<SortBean> list) {
                                this.sort = list;
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

                        public String getNodeType() {
                            return this.nodeType;
                        }

                        public int getOrder_index() {
                            return this.order_index;
                        }

                        public String getParent_group_id() {
                            return this.parent_group_id;
                        }

                        public QueryBean getQuery() {
                            return this.query;
                        }

                        public String getTree_id() {
                            return this.tree_id;
                        }

                        public String getType() {
                            return this.type;
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

                        public void setNodeType(String str) {
                            this.nodeType = str;
                        }

                        public void setOrder_index(int i2) {
                            this.order_index = i2;
                        }

                        public void setParent_group_id(String str) {
                            this.parent_group_id = str;
                        }

                        public void setQuery(QueryBean queryBean) {
                            this.query = queryBean;
                        }

                        public void setTree_id(String str) {
                            this.tree_id = str;
                        }

                        public void setType(String str) {
                            this.type = str;
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

            public ViewGroupBean getView_group() {
                return this.view_group;
            }

            public void setView_group(ViewGroupBean viewGroupBean) {
                this.view_group = viewGroupBean;
            }
        }

        /* loaded from: classes.dex */
        public static class SearchViewQueryGroupBean {
            public QueryGroupBean query_group;
            public ViewGroupBeanX view_group;

            /* loaded from: classes.dex */
            public static class QueryGroupBean {
                public String group_id;
                public String name;
                public int order_index;
                public String parent_group_id;
                public String tree_id;
                public String type;

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

                public String getType() {
                    return this.type;
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

                public void setType(String str) {
                    this.type = str;
                }
            }

            /* loaded from: classes.dex */
            public static class ViewGroupBeanX {
                public AttrsBeanXXX attrs;
                public List<ChildrenBeanXXXX> children;
                public String group_id;
                public String name;
                public int order_index;
                public String parent_group_id;
                public String tree_id;

                /* loaded from: classes.dex */
                public static class AttrsBeanXXX {
                    public String view;

                    public String getView() {
                        return this.view;
                    }

                    public void setView(String str) {
                        this.view = str;
                    }
                }

                /* loaded from: classes.dex */
                public static class ChildrenBeanXXXX {
                    public AttrsBeanXXXX attrs;
                    public List<ChildrenBeanXXX> children;
                    public String group_id;
                    public String name;
                    public int order_index;
                    public String parent_group_id;
                    public String tree_id;

                    /* loaded from: classes.dex */
                    public static class AttrsBeanXXXX {
                        public String view;

                        public String getView() {
                            return this.view;
                        }

                        public void setView(String str) {
                            this.view = str;
                        }
                    }

                    /* loaded from: classes.dex */
                    public static class ChildrenBeanXXX {
                        public List<ChildrenBeanXX> children;
                        public String group_id;
                        public String name;
                        public int order_index;
                        public String parent_group_id;
                        public String tree_id;

                        /* loaded from: classes.dex */
                        public static class ChildrenBeanXX {
                            public AttrsBeanXXXXX attrs;
                            public String group_id;
                            public String name;
                            public OrderValueBean orderValue;
                            public int order_index;
                            public String parent_group_id;
                            public String tree_id;
                            public String type;

                            /* loaded from: classes.dex */
                            public static class AttrsBeanXXXXX {
                                public boolean selected;
                                public String view;

                                public String getView() {
                                    return this.view;
                                }

                                public boolean isSelected() {
                                    return this.selected;
                                }

                                public void setSelected(boolean z) {
                                    this.selected = z;
                                }

                                public void setView(String str) {
                                    this.view = str;
                                }
                            }

                            /* loaded from: classes.dex */
                            public static class OrderValueBean {
                                public ValueBean value;

                                /* loaded from: classes.dex */
                                public static class ValueBean {
                                    public AppUpTimeBean app_upTime;

                                    /* loaded from: classes.dex */
                                    public static class AppUpTimeBean {
                                        public String missing;
                                        public String order;

                                        public String getMissing() {
                                            return this.missing;
                                        }

                                        public String getOrder() {
                                            return this.order;
                                        }

                                        public void setMissing(String str) {
                                            this.missing = str;
                                        }

                                        public void setOrder(String str) {
                                            this.order = str;
                                        }
                                    }

                                    public AppUpTimeBean getApp_upTime() {
                                        return this.app_upTime;
                                    }

                                    public void setApp_upTime(AppUpTimeBean appUpTimeBean) {
                                        this.app_upTime = appUpTimeBean;
                                    }
                                }

                                public ValueBean getValue() {
                                    return this.value;
                                }

                                public void setValue(ValueBean valueBean) {
                                    this.value = valueBean;
                                }
                            }

                            public AttrsBeanXXXXX getAttrs() {
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

                            public void setAttrs(AttrsBeanXXXXX attrsBeanXXXXX) {
                                this.attrs = attrsBeanXXXXX;
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

                        public String getParent_group_id() {
                            return this.parent_group_id;
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

                        public void setParent_group_id(String str) {
                            this.parent_group_id = str;
                        }

                        public void setTree_id(String str) {
                            this.tree_id = str;
                        }
                    }

                    public AttrsBeanXXXX getAttrs() {
                        return this.attrs;
                    }

                    public List<ChildrenBeanXXX> getChildren() {
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

                    public void setAttrs(AttrsBeanXXXX attrsBeanXXXX) {
                        this.attrs = attrsBeanXXXX;
                    }

                    public void setChildren(List<ChildrenBeanXXX> list) {
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

                public AttrsBeanXXX getAttrs() {
                    return this.attrs;
                }

                public List<ChildrenBeanXXXX> getChildren() {
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

                public void setAttrs(AttrsBeanXXX attrsBeanXXX) {
                    this.attrs = attrsBeanXXX;
                }

                public void setChildren(List<ChildrenBeanXXXX> list) {
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

            public QueryGroupBean getQuery_group() {
                return this.query_group;
            }

            public ViewGroupBeanX getView_group() {
                return this.view_group;
            }

            public void setQuery_group(QueryGroupBean queryGroupBean) {
                this.query_group = queryGroupBean;
            }

            public void setView_group(ViewGroupBeanX viewGroupBeanX) {
                this.view_group = viewGroupBeanX;
            }
        }

        public String getApp_version() {
            return this.app_version;
        }

        public String getDesc() {
            return this.desc;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public int getOrder_index() {
            return this.order_index;
        }

        public RecommendViewQueryGroupBean getRecommend_view_query_group() {
            return this.recommend_view_query_group;
        }

        public SearchViewQueryGroupBean getSearch_view_query_group() {
            return this.search_view_query_group;
        }

        public boolean isEditable() {
            return this.editable;
        }

        public boolean isSearchable() {
            return this.searchable;
        }

        public void setApp_version(String str) {
            this.app_version = str;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setEditable(boolean z) {
            this.editable = z;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOrder_index(int i2) {
            this.order_index = i2;
        }

        public void setRecommend_view_query_group(RecommendViewQueryGroupBean recommendViewQueryGroupBean) {
            this.recommend_view_query_group = recommendViewQueryGroupBean;
        }

        public void setSearch_view_query_group(SearchViewQueryGroupBean searchViewQueryGroupBean) {
            this.search_view_query_group = searchViewQueryGroupBean;
        }

        public void setSearchable(boolean z) {
            this.searchable = z;
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
