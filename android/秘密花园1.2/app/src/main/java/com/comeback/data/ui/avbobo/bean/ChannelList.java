package com.comeback.data.ui.avbobo.bean;

import com.comeback.data.ui.commom.PPTAdapter;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ChannelList extends k {
    public int code;
    public List<DataBean> data;
    public int page;

    /* loaded from: classes.dex */
    public static class DataBean implements PPTAdapter.c {
        public AttrsBean attrs;
        public List<?> children;
        public String group_id;
        public List<MovieDetail> loadDataItems;
        public String name;
        public int order_index;

        /* loaded from: classes.dex */
        public static class AttrsBean {
            public boolean allowChange;
            public boolean hideHeader;
            public RouteBean route;
            public boolean showMore;
            public StyleBean style;
            public String subView;
            public String view;
            public ViewPropsBean viewProps;

            /* loaded from: classes.dex */
            public static class RouteBean {
                public MoreBean more;

                /* loaded from: classes.dex */
                public static class MoreBean {
                    public String keyword;
                    public ParamsBean params;
                    public String route;
                    public SelectedChannelBean selectedChannel;
                    public String type;

                    /* loaded from: classes.dex */
                    public static class ParamsBean {
                        public String channel_id;

                        public String getChannel_id() {
                            return this.channel_id;
                        }

                        public void setChannel_id(String str) {
                            this.channel_id = str;
                        }
                    }

                    /* loaded from: classes.dex */
                    public static class SelectedChannelBean {
                        public String id;

                        public String getId() {
                            return this.id;
                        }

                        public void setId(String str) {
                            this.id = str;
                        }
                    }

                    public String getKeyword() {
                        return this.keyword;
                    }

                    public ParamsBean getParams() {
                        return this.params;
                    }

                    public String getRoute() {
                        return this.route;
                    }

                    public SelectedChannelBean getSelectedChannel() {
                        return this.selectedChannel;
                    }

                    public String getType() {
                        return this.type;
                    }

                    public void setKeyword(String str) {
                        this.keyword = str;
                    }

                    public void setParams(ParamsBean paramsBean) {
                        this.params = paramsBean;
                    }

                    public void setRoute(String str) {
                        this.route = str;
                    }

                    public void setSelectedChannel(SelectedChannelBean selectedChannelBean) {
                        this.selectedChannel = selectedChannelBean;
                    }

                    public void setType(String str) {
                        this.type = str;
                    }
                }

                public MoreBean getMore() {
                    return this.more;
                }

                public void setMore(MoreBean moreBean) {
                    this.more = moreBean;
                }
            }

            /* loaded from: classes.dex */
            public static class StyleBean {
                public int height;

                public int getHeight() {
                    return this.height;
                }

                public void setHeight(int i2) {
                    this.height = i2;
                }
            }

            /* loaded from: classes.dex */
            public static class ViewPropsBean {
                public ContainerCustomStyleBean containerCustomStyle;
                public ContentContainerCustomStyleBean contentContainerCustomStyle;
                public String layout;
                public int refNumber;
                public boolean useScrollView;

                /* loaded from: classes.dex */
                public static class ContainerCustomStyleBean {
                    public int marginTop;
                    public String overflow;

                    public int getMarginTop() {
                        return this.marginTop;
                    }

                    public String getOverflow() {
                        return this.overflow;
                    }

                    public void setMarginTop(int i2) {
                        this.marginTop = i2;
                    }

                    public void setOverflow(String str) {
                        this.overflow = str;
                    }
                }

                /* loaded from: classes.dex */
                public static class ContentContainerCustomStyleBean {
                    public int paddingVertical;

                    public int getPaddingVertical() {
                        return this.paddingVertical;
                    }

                    public void setPaddingVertical(int i2) {
                        this.paddingVertical = i2;
                    }
                }

                public ContainerCustomStyleBean getContainerCustomStyle() {
                    return this.containerCustomStyle;
                }

                public ContentContainerCustomStyleBean getContentContainerCustomStyle() {
                    return this.contentContainerCustomStyle;
                }

                public String getLayout() {
                    return this.layout;
                }

                public int getRefNumber() {
                    return this.refNumber;
                }

                public boolean isUseScrollView() {
                    return this.useScrollView;
                }

                public void setContainerCustomStyle(ContainerCustomStyleBean containerCustomStyleBean) {
                    this.containerCustomStyle = containerCustomStyleBean;
                }

                public void setContentContainerCustomStyle(ContentContainerCustomStyleBean contentContainerCustomStyleBean) {
                    this.contentContainerCustomStyle = contentContainerCustomStyleBean;
                }

                public void setLayout(String str) {
                    this.layout = str;
                }

                public void setRefNumber(int i2) {
                    this.refNumber = i2;
                }

                public void setUseScrollView(boolean z) {
                    this.useScrollView = z;
                }
            }

            public RouteBean getRoute() {
                return this.route;
            }

            public StyleBean getStyle() {
                return this.style;
            }

            public String getSubView() {
                return this.subView;
            }

            public String getView() {
                return this.view;
            }

            public ViewPropsBean getViewProps() {
                return this.viewProps;
            }

            public boolean isAllowChange() {
                return this.allowChange;
            }

            public boolean isHideHeader() {
                return this.hideHeader;
            }

            public boolean isShowMore() {
                return this.showMore;
            }

            public void setAllowChange(boolean z) {
                this.allowChange = z;
            }

            public void setHideHeader(boolean z) {
                this.hideHeader = z;
            }

            public void setRoute(RouteBean routeBean) {
                this.route = routeBean;
            }

            public void setShowMore(boolean z) {
                this.showMore = z;
            }

            public void setStyle(StyleBean styleBean) {
                this.style = styleBean;
            }

            public void setSubView(String str) {
                this.subView = str;
            }

            public void setView(String str) {
                this.view = str;
            }

            public void setViewProps(ViewPropsBean viewPropsBean) {
                this.viewProps = viewPropsBean;
            }
        }

        public AttrsBean getAttrs() {
            return this.attrs;
        }

        public List<?> getChildren() {
            return this.children;
        }

        public String getGroup_id() {
            return this.group_id;
        }

        @Override // com.comeback.data.ui.commom.PPTAdapter.c
        public List<String> getImages() {
            ArrayList arrayList = new ArrayList();
            for (MovieDetail movieDetail : getLoadDataItems()) {
                arrayList.add(movieDetail.getCoverImage());
            }
            return arrayList;
        }

        public List<MovieDetail> getLoadDataItems() {
            return this.loadDataItems;
        }

        public String getName() {
            return this.name;
        }

        public int getOrder_index() {
            return this.order_index;
        }

        @Override // com.comeback.data.ui.commom.PPTAdapter.c
        public List<String> getTitles() {
            ArrayList arrayList = new ArrayList();
            for (MovieDetail movieDetail : getLoadDataItems()) {
                arrayList.add(movieDetail.getTitle());
            }
            return arrayList;
        }

        public void setAttrs(AttrsBean attrsBean) {
            this.attrs = attrsBean;
        }

        public void setChildren(List<?> list) {
            this.children = list;
        }

        public void setGroup_id(String str) {
            this.group_id = str;
        }

        public void setLoadDataItems(List<MovieDetail> list) {
            this.loadDataItems = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOrder_index(int i2) {
            this.order_index = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public int getPage() {
        return this.page;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setPage(int i2) {
        this.page = i2;
    }
}
