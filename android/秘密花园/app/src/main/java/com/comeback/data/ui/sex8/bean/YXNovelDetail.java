package com.comeback.data.ui.sex8.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class YXNovelDetail extends j {
    public DataBean data;
    public int is_collect;
    public String msg;
    public int status;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<AdBean> ad;
        public List<AdInRadioListBean> ad_in_radio_list;
        public CategorysBean categorys;
        public String cover_img;
        public String desc;
        public YXHostBean host;
        public String host_id;
        public String hot_number;
        public int isPay;
        public String is_best;
        public String is_finished;
        public String is_share;
        public List<LabelListBeanX> label_list;
        public List<LikeAlbumListBean> likeAlbumList;
        public String name;
        public int price;
        public String radio_album_id;
        public String radio_count;
        public List<RadioListBean> radio_list;
        public List<?> radio_trial_list;
        public List<RecommBean> recomm;
        public String status;
        public String url;
        public String views;

        /* loaded from: classes.dex */
        public static class AdBean {
            public String adid;
            public String img_url;
            public String introduce;
            public String isjump;
            public String jumpid;
            public String jumpmode;
            public String title;
            public String url;

            public String getAdid() {
                return this.adid;
            }

            public String getImg_url() {
                return this.img_url;
            }

            public String getIntroduce() {
                return this.introduce;
            }

            public String getIsjump() {
                return this.isjump;
            }

            public String getJumpid() {
                return this.jumpid;
            }

            public String getJumpmode() {
                return this.jumpmode;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUrl() {
                return this.url;
            }

            public void setAdid(String str) {
                this.adid = str;
            }

            public void setImg_url(String str) {
                this.img_url = str;
            }

            public void setIntroduce(String str) {
                this.introduce = str;
            }

            public void setIsjump(String str) {
                this.isjump = str;
            }

            public void setJumpid(String str) {
                this.jumpid = str;
            }

            public void setJumpmode(String str) {
                this.jumpmode = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        /* loaded from: classes.dex */
        public static class AdInRadioListBean {
            public String adid;
            public String img_url;
            public String introduce;
            public String isjump;
            public String jumpid;
            public String jumpmode;
            public String title;
            public String url;

            public String getAdid() {
                return this.adid;
            }

            public String getImg_url() {
                return this.img_url;
            }

            public String getIntroduce() {
                return this.introduce;
            }

            public String getIsjump() {
                return this.isjump;
            }

            public String getJumpid() {
                return this.jumpid;
            }

            public String getJumpmode() {
                return this.jumpmode;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUrl() {
                return this.url;
            }

            public void setAdid(String str) {
                this.adid = str;
            }

            public void setImg_url(String str) {
                this.img_url = str;
            }

            public void setIntroduce(String str) {
                this.introduce = str;
            }

            public void setIsjump(String str) {
                this.isjump = str;
            }

            public void setJumpid(String str) {
                this.jumpid = str;
            }

            public void setJumpmode(String str) {
                this.jumpmode = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

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
        public static class LabelListBeanX {
            public String category;
            public String id;
            public String title;

            public String getCategory() {
                return this.category;
            }

            public String getId() {
                return this.id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setCategory(String str) {
                this.category = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        /* loaded from: classes.dex */
        public static class LikeAlbumListBean {
            public String album_img;
            public String album_price;
            public CategorysBeanXX categorys;
            public String cover_img;
            public String create_time;
            public String created_by;
            public String default_play_times;
            public String default_views_times;
            public String desc;
            public String display_order;
            public String finished;
            public HostBeanX host;
            public String host_id;
            public String host_name;
            public String hot_number;
            public String is_best;
            public String is_new;
            public String is_recommend;
            public String is_share;
            public String name;
            public String num;
            public String play_times;
            public String published_at;
            public String radio_album_id;
            public String radio_count;
            public String radio_types;
            public String recommend_sort;
            public Object recommend_time;
            public ShareBean share;
            public String single_price;
            public String status;
            public String total;
            public String update_time;
            public String views;
            public String xb_num;

            /* loaded from: classes.dex */
            public static class CategorysBeanXX {
                public CategoryBeanXX category;
                public ChildCategoryBeanXX child_category;

                /* loaded from: classes.dex */
                public static class CategoryBeanXX {
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
                public static class ChildCategoryBeanXX {
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

                public CategoryBeanXX getCategory() {
                    return this.category;
                }

                public ChildCategoryBeanXX getChild_category() {
                    return this.child_category;
                }

                public void setCategory(CategoryBeanXX categoryBeanXX) {
                    this.category = categoryBeanXX;
                }

                public void setChild_category(ChildCategoryBeanXX childCategoryBeanXX) {
                    this.child_category = childCategoryBeanXX;
                }
            }

            /* loaded from: classes.dex */
            public static class HostBeanX {
                public String desc;
                public String dml_flag;
                public String dml_time;
                public String host_id;
                public String img;
                public String init_time;
                public String name;
                public String pos;
                public String radio_count;
                public String sale_number;
                public String views;
                public String works_count;

                public String getDesc() {
                    return this.desc;
                }

                public String getDml_flag() {
                    return this.dml_flag;
                }

                public String getDml_time() {
                    return this.dml_time;
                }

                public String getHost_id() {
                    return this.host_id;
                }

                public String getImg() {
                    return this.img;
                }

                public String getInit_time() {
                    return this.init_time;
                }

                public String getName() {
                    return this.name;
                }

                public String getPos() {
                    return this.pos;
                }

                public String getRadio_count() {
                    return this.radio_count;
                }

                public String getSale_number() {
                    return this.sale_number;
                }

                public String getViews() {
                    return this.views;
                }

                public String getWorks_count() {
                    return this.works_count;
                }

                public void setDesc(String str) {
                    this.desc = str;
                }

                public void setDml_flag(String str) {
                    this.dml_flag = str;
                }

                public void setDml_time(String str) {
                    this.dml_time = str;
                }

                public void setHost_id(String str) {
                    this.host_id = str;
                }

                public void setImg(String str) {
                    this.img = str;
                }

                public void setInit_time(String str) {
                    this.init_time = str;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setPos(String str) {
                    this.pos = str;
                }

                public void setRadio_count(String str) {
                    this.radio_count = str;
                }

                public void setSale_number(String str) {
                    this.sale_number = str;
                }

                public void setViews(String str) {
                    this.views = str;
                }

                public void setWorks_count(String str) {
                    this.works_count = str;
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

            public CategorysBeanXX getCategorys() {
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

            public String getDefault_play_times() {
                return this.default_play_times;
            }

            public String getDefault_views_times() {
                return this.default_views_times;
            }

            public String getDesc() {
                return this.desc;
            }

            public String getDisplay_order() {
                return this.display_order;
            }

            public String getFinished() {
                return this.finished;
            }

            public HostBeanX getHost() {
                return this.host;
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

            public String getIs_new() {
                return this.is_new;
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

            public String getNum() {
                return this.num;
            }

            public String getPlay_times() {
                return this.play_times;
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

            public Object getRecommend_time() {
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

            public String getXb_num() {
                return this.xb_num;
            }

            public void setAlbum_img(String str) {
                this.album_img = str;
            }

            public void setAlbum_price(String str) {
                this.album_price = str;
            }

            public void setCategorys(CategorysBeanXX categorysBeanXX) {
                this.categorys = categorysBeanXX;
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

            public void setDefault_play_times(String str) {
                this.default_play_times = str;
            }

            public void setDefault_views_times(String str) {
                this.default_views_times = str;
            }

            public void setDesc(String str) {
                this.desc = str;
            }

            public void setDisplay_order(String str) {
                this.display_order = str;
            }

            public void setFinished(String str) {
                this.finished = str;
            }

            public void setHost(HostBeanX hostBeanX) {
                this.host = hostBeanX;
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

            public void setIs_new(String str) {
                this.is_new = str;
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

            public void setNum(String str) {
                this.num = str;
            }

            public void setPlay_times(String str) {
                this.play_times = str;
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

            public void setRecommend_time(Object obj) {
                this.recommend_time = obj;
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

            public void setXb_num(String str) {
                this.xb_num = str;
            }
        }

        /* loaded from: classes.dex */
        public static class RadioListBean implements Parcelable {
            public static final Parcelable.Creator<RadioListBean> CREATOR = new a();
            public String album_price;
            public String default_play_times;
            public String default_view_times;
            public String down_url;
            public String duration;
            public String hits;
            public String img;
            public int isPay;
            public String is_free;
            public String is_share;
            public String name;
            public String play_times;
            public String price;
            public String radio_album_list_id;
            public String radio_id;
            public String single_price;
            public String url;
            public double views;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<RadioListBean> {
                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // android.os.Parcelable.Creator
                public RadioListBean createFromParcel(Parcel parcel) {
                    return new RadioListBean(parcel);
                }

                /* Return type fixed from 'java.lang.Object[]' to match base method */
                @Override // android.os.Parcelable.Creator
                public RadioListBean[] newArray(int i2) {
                    return new RadioListBean[i2];
                }
            }

            public RadioListBean() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getAlbum_price() {
                return this.album_price;
            }

            public String getDefault_play_times() {
                return this.default_play_times;
            }

            public String getDefault_view_times() {
                return this.default_view_times;
            }

            public String getDown_url() {
                return this.down_url;
            }

            public String getDuration() {
                return this.duration;
            }

            public String getHits() {
                return this.hits;
            }

            public String getImg() {
                return this.img;
            }

            public int getIsPay() {
                return this.isPay;
            }

            public String getIs_free() {
                return this.is_free;
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

            public String getPrice() {
                return this.price;
            }

            public String getRadio_album_list_id() {
                return this.radio_album_list_id;
            }

            public String getRadio_id() {
                return this.radio_id;
            }

            public String getSingle_price() {
                return this.single_price;
            }

            public String getUrl() {
                return this.url;
            }

            public double getViews() {
                return this.views;
            }

            public void setAlbum_price(String str) {
                this.album_price = str;
            }

            public void setDefault_play_times(String str) {
                this.default_play_times = str;
            }

            public void setDefault_view_times(String str) {
                this.default_view_times = str;
            }

            public void setDown_url(String str) {
                this.down_url = str;
            }

            public void setDuration(String str) {
                this.duration = str;
            }

            public void setHits(String str) {
                this.hits = str;
            }

            public void setImg(String str) {
                this.img = str;
            }

            public void setIsPay(int i2) {
                this.isPay = i2;
            }

            public void setIs_free(String str) {
                this.is_free = str;
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

            public void setPrice(String str) {
                this.price = str;
            }

            public void setRadio_album_list_id(String str) {
                this.radio_album_list_id = str;
            }

            public void setRadio_id(String str) {
                this.radio_id = str;
            }

            public void setSingle_price(String str) {
                this.single_price = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }

            public void setViews(double d2) {
                this.views = d2;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.album_price);
                parcel.writeString(this.default_play_times);
                parcel.writeString(this.default_view_times);
                parcel.writeString(this.down_url);
                parcel.writeString(this.duration);
                parcel.writeString(this.hits);
                parcel.writeString(this.img);
                parcel.writeInt(this.isPay);
                parcel.writeString(this.is_free);
                parcel.writeString(this.is_share);
                parcel.writeString(this.name);
                parcel.writeString(this.play_times);
                parcel.writeString(this.price);
                parcel.writeString(this.radio_album_list_id);
                parcel.writeString(this.radio_id);
                parcel.writeString(this.single_price);
                parcel.writeString(this.url);
                parcel.writeDouble(this.views);
            }

            public RadioListBean(Parcel parcel) {
                this.album_price = parcel.readString();
                this.default_play_times = parcel.readString();
                this.default_view_times = parcel.readString();
                this.down_url = parcel.readString();
                this.duration = parcel.readString();
                this.hits = parcel.readString();
                this.img = parcel.readString();
                this.isPay = parcel.readInt();
                this.is_free = parcel.readString();
                this.is_share = parcel.readString();
                this.name = parcel.readString();
                this.play_times = parcel.readString();
                this.price = parcel.readString();
                this.radio_album_list_id = parcel.readString();
                this.radio_id = parcel.readString();
                this.single_price = parcel.readString();
                this.url = parcel.readString();
                this.views = parcel.readDouble();
            }
        }

        /* loaded from: classes.dex */
        public static class RecommBean {
            public String album_id;
            public String album_name;
            public String category;
            public CategorysBeanX categorys;
            public String cover_img;
            public String desc;
            public String host_id;
            public String host_name;
            public String hot_number;
            public String is_best;
            public String is_share;
            public String isfinished;
            public List<LabelListBean> label_list;
            public String name;
            public int price;
            public String radio_album_id;
            public String radio_count;
            public String radio_types;
            public String views;

            /* loaded from: classes.dex */
            public static class CategorysBeanX {
                public CategoryBeanX category;
                public ChildCategoryBeanX child_category;

                /* loaded from: classes.dex */
                public static class CategoryBeanX {
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
                public static class ChildCategoryBeanX {
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

                public CategoryBeanX getCategory() {
                    return this.category;
                }

                public ChildCategoryBeanX getChild_category() {
                    return this.child_category;
                }

                public void setCategory(CategoryBeanX categoryBeanX) {
                    this.category = categoryBeanX;
                }

                public void setChild_category(ChildCategoryBeanX childCategoryBeanX) {
                    this.child_category = childCategoryBeanX;
                }
            }

            /* loaded from: classes.dex */
            public static class LabelListBean {
                public String category;
                public String id;
                public String title;

                public String getCategory() {
                    return this.category;
                }

                public String getId() {
                    return this.id;
                }

                public String getTitle() {
                    return this.title;
                }

                public void setCategory(String str) {
                    this.category = str;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setTitle(String str) {
                    this.title = str;
                }
            }

            public String getAlbum_id() {
                return this.album_id;
            }

            public String getAlbum_name() {
                return this.album_name;
            }

            public String getCategory() {
                return this.category;
            }

            public CategorysBeanX getCategorys() {
                return this.categorys;
            }

            public String getCover_img() {
                return this.cover_img;
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

            public String getIs_share() {
                return this.is_share;
            }

            public String getIsfinished() {
                return this.isfinished;
            }

            public List<LabelListBean> getLabel_list() {
                return this.label_list;
            }

            public String getName() {
                return this.name;
            }

            public int getPrice() {
                return this.price;
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

            public String getViews() {
                return this.views;
            }

            public void setAlbum_id(String str) {
                this.album_id = str;
            }

            public void setAlbum_name(String str) {
                this.album_name = str;
            }

            public void setCategory(String str) {
                this.category = str;
            }

            public void setCategorys(CategorysBeanX categorysBeanX) {
                this.categorys = categorysBeanX;
            }

            public void setCover_img(String str) {
                this.cover_img = str;
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

            public void setIs_share(String str) {
                this.is_share = str;
            }

            public void setIsfinished(String str) {
                this.isfinished = str;
            }

            public void setLabel_list(List<LabelListBean> list) {
                this.label_list = list;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setPrice(int i2) {
                this.price = i2;
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

            public void setViews(String str) {
                this.views = str;
            }
        }

        public List<AdBean> getAd() {
            return this.ad;
        }

        public List<AdInRadioListBean> getAd_in_radio_list() {
            return this.ad_in_radio_list;
        }

        public CategorysBean getCategorys() {
            return this.categorys;
        }

        public String getCover_img() {
            return this.cover_img;
        }

        public String getDesc() {
            return this.desc;
        }

        public YXHostBean getHost() {
            return this.host;
        }

        public String getHost_id() {
            return this.host_id;
        }

        public String getHot_number() {
            return this.hot_number;
        }

        public int getIsPay() {
            return this.isPay;
        }

        public String getIs_best() {
            return this.is_best;
        }

        public String getIs_finished() {
            return this.is_finished;
        }

        public String getIs_share() {
            return this.is_share;
        }

        public List<LabelListBeanX> getLabel_list() {
            return this.label_list;
        }

        public List<LikeAlbumListBean> getLikeAlbumList() {
            return this.likeAlbumList;
        }

        public String getName() {
            return this.name;
        }

        public int getPrice() {
            return this.price;
        }

        public String getRadio_album_id() {
            return this.radio_album_id;
        }

        public String getRadio_count() {
            return this.radio_count;
        }

        public List<RadioListBean> getRadio_list() {
            return this.radio_list;
        }

        public List<?> getRadio_trial_list() {
            return this.radio_trial_list;
        }

        public List<RecommBean> getRecomm() {
            return this.recomm;
        }

        public String getStatus() {
            return this.status;
        }

        public String getUrl() {
            return this.url;
        }

        public String getViews() {
            return this.views;
        }

        public void setAd(List<AdBean> list) {
            this.ad = list;
        }

        public void setAd_in_radio_list(List<AdInRadioListBean> list) {
            this.ad_in_radio_list = list;
        }

        public void setCategorys(CategorysBean categorysBean) {
            this.categorys = categorysBean;
        }

        public void setCover_img(String str) {
            this.cover_img = str;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setHost(YXHostBean yXHostBean) {
            this.host = yXHostBean;
        }

        public void setHost_id(String str) {
            this.host_id = str;
        }

        public void setHot_number(String str) {
            this.hot_number = str;
        }

        public void setIsPay(int i2) {
            this.isPay = i2;
        }

        public void setIs_best(String str) {
            this.is_best = str;
        }

        public void setIs_finished(String str) {
            this.is_finished = str;
        }

        public void setIs_share(String str) {
            this.is_share = str;
        }

        public void setLabel_list(List<LabelListBeanX> list) {
            this.label_list = list;
        }

        public void setLikeAlbumList(List<LikeAlbumListBean> list) {
            this.likeAlbumList = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPrice(int i2) {
            this.price = i2;
        }

        public void setRadio_album_id(String str) {
            this.radio_album_id = str;
        }

        public void setRadio_count(String str) {
            this.radio_count = str;
        }

        public void setRadio_list(List<RadioListBean> list) {
            this.radio_list = list;
        }

        public void setRadio_trial_list(List<?> list) {
            this.radio_trial_list = list;
        }

        public void setRecomm(List<RecommBean> list) {
            this.recomm = list;
        }

        public void setStatus(String str) {
            this.status = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setViews(String str) {
            this.views = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getIs_collect() {
        return this.is_collect;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getStatus() {
        return this.status;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setIs_collect(int i2) {
        this.is_collect = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
