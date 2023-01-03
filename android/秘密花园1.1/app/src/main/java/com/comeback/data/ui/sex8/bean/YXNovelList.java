package com.comeback.data.ui.sex8.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class YXNovelList extends j {
    public List<DataBean> data;
    public String msg;
    public int status;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String album_img;
        public String album_price;
        public CategorysBean categorys;
        public String cover_img;
        public String create_time;
        public String created_by;
        public String desc;
        public String host_id;
        public String host_name;
        public String hot_number;
        public String is_best;
        public String is_recommend;
        public String is_share;
        public String name;
        public String play_times;
        public int price;
        public String published_at;
        public String radio_album_id;
        public String radio_count;
        public String radio_types;
        public String recommend_sort;
        public String recommend_time;
        public ShareBean share;
        public String single_price;
        public String status;
        public String total;
        public String update_time;
        public String views;

        /* loaded from: classes.dex */
        public static class CategorysBean {
            public CategoryBean category;
            public ChildCategoryBean child_category;

            /* loaded from: classes.dex */
            public static class CategoryBean {
                public int id;
                public String name;

                public int getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            /* loaded from: classes.dex */
            public static class ChildCategoryBean {
                public String id;
                public String name;

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            public CategoryBean getCategory() {
                return this.category;
            }

            public ChildCategoryBean getChild_category() {
                return this.child_category;
            }

            public void setCategory(CategoryBean categoryBean) {
                this.category = categoryBean;
            }

            public void setChild_category(ChildCategoryBean childCategoryBean) {
                this.child_category = childCategoryBean;
            }
        }

        /* loaded from: classes.dex */
        public static class ShareBean {
            public String url;

            public String getUrl() {
                return this.url;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public String getAlbum_img() {
            return this.album_img;
        }

        public String getAlbum_price() {
            return this.album_price;
        }

        public CategorysBean getCategorys() {
            return this.categorys;
        }

        public String getCover_img() {
            return this.cover_img;
        }

        public String getCreate_time() {
            return this.create_time;
        }

        public String getCreated_by() {
            return this.created_by;
        }

        public String getDesc() {
            return this.desc;
        }

        public String getHost_id() {
            return this.host_id;
        }

        public String getHost_name() {
            return this.host_name;
        }

        public String getHot_number() {
            return this.hot_number;
        }

        public String getIs_best() {
            return this.is_best;
        }

        public String getIs_recommend() {
            return this.is_recommend;
        }

        public String getIs_share() {
            return this.is_share;
        }

        public String getName() {
            return this.name;
        }

        public String getPlay_times() {
            return this.play_times;
        }

        public int getPrice() {
            return this.price;
        }

        public String getPublished_at() {
            return this.published_at;
        }

        public String getRadio_album_id() {
            return this.radio_album_id;
        }

        public String getRadio_count() {
            return this.radio_count;
        }

        public String getRadio_types() {
            return this.radio_types;
        }

        public String getRecommend_sort() {
            return this.recommend_sort;
        }

        public String getRecommend_time() {
            return this.recommend_time;
        }

        public ShareBean getShare() {
            return this.share;
        }

        public String getSingle_price() {
            return this.single_price;
        }

        public String getStatus() {
            return this.status;
        }

        public String getTotal() {
            return this.total;
        }

        public String getUpdate_time() {
            return this.update_time;
        }

        public String getViews() {
            return this.views;
        }

        public void setAlbum_img(String str) {
            this.album_img = str;
        }

        public void setAlbum_price(String str) {
            this.album_price = str;
        }

        public void setCategorys(CategorysBean categorysBean) {
            this.categorys = categorysBean;
        }

        public void setCover_img(String str) {
            this.cover_img = str;
        }

        public void setCreate_time(String str) {
            this.create_time = str;
        }

        public void setCreated_by(String str) {
            this.created_by = str;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setHost_id(String str) {
            this.host_id = str;
        }

        public void setHost_name(String str) {
            this.host_name = str;
        }

        public void setHot_number(String str) {
            this.hot_number = str;
        }

        public void setIs_best(String str) {
            this.is_best = str;
        }

        public void setIs_recommend(String str) {
            this.is_recommend = str;
        }

        public void setIs_share(String str) {
            this.is_share = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPlay_times(String str) {
            this.play_times = str;
        }

        public void setPrice(int i2) {
            this.price = i2;
        }

        public void setPublished_at(String str) {
            this.published_at = str;
        }

        public void setRadio_album_id(String str) {
            this.radio_album_id = str;
        }

        public void setRadio_count(String str) {
            this.radio_count = str;
        }

        public void setRadio_types(String str) {
            this.radio_types = str;
        }

        public void setRecommend_sort(String str) {
            this.recommend_sort = str;
        }

        public void setRecommend_time(String str) {
            this.recommend_time = str;
        }

        public void setShare(ShareBean shareBean) {
            this.share = shareBean;
        }

        public void setSingle_price(String str) {
            this.single_price = str;
        }

        public void setStatus(String str) {
            this.status = str;
        }

        public void setTotal(String str) {
            this.total = str;
        }

        public void setUpdate_time(String str) {
            this.update_time = str;
        }

        public void setViews(String str) {
            this.views = str;
        }
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getStatus() {
        return this.status;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
