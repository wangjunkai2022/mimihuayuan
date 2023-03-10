package com.comeback.data.ui.gkj.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.comeback.data.ui.gkj.bean.ViewModel;
import f.e.a.e;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ComicList extends k {
    public List<?> ad;
    public List<ListsBean.DataBean> data;
    public ListsBean lists;

    public List<?> getAd() {
        return this.ad;
    }

    public List<ListsBean.DataBean> getData() {
        return this.data;
    }

    public ListsBean getLists() {
        return this.lists;
    }

    public void setAd(List<?> list) {
        this.ad = list;
    }

    public void setData(List<ListsBean.DataBean> list) {
        this.data = list;
    }

    public void setLists(ListsBean listsBean) {
        this.lists = listsBean;
    }

    /* loaded from: classes.dex */
    public static class ListsBean {
        public int current_page;
        public List<DataBean> data;
        public String first_page_url;
        public int from;
        public int last_page;
        public String last_page_url;
        public String next_page_url;
        public String path;
        public String per_page;
        public Object prev_page_url;
        public int to;
        public int total;

        public int getCurrent_page() {
            return this.current_page;
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public String getFirst_page_url() {
            return this.first_page_url;
        }

        public int getFrom() {
            return this.from;
        }

        public int getLast_page() {
            return this.last_page;
        }

        public String getLast_page_url() {
            return this.last_page_url;
        }

        public String getNext_page_url() {
            return this.next_page_url;
        }

        public String getPath() {
            return this.path;
        }

        public String getPer_page() {
            return this.per_page;
        }

        public Object getPrev_page_url() {
            return this.prev_page_url;
        }

        public int getTo() {
            return this.to;
        }

        public int getTotal() {
            return this.total;
        }

        public void setCurrent_page(int i2) {
            this.current_page = i2;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }

        public void setFirst_page_url(String str) {
            this.first_page_url = str;
        }

        public void setFrom(int i2) {
            this.from = i2;
        }

        public void setLast_page(int i2) {
            this.last_page = i2;
        }

        public void setLast_page_url(String str) {
            this.last_page_url = str;
        }

        public void setNext_page_url(String str) {
            this.next_page_url = str;
        }

        public void setPath(String str) {
            this.path = str;
        }

        public void setPer_page(String str) {
            this.per_page = str;
        }

        public void setPrev_page_url(Object obj) {
            this.prev_page_url = obj;
        }

        public void setTo(int i2) {
            this.to = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }

        /* loaded from: classes.dex */
        public static class DataBean implements Parcelable {
            public static final Parcelable.Creator<DataBean> CREATOR = new a();
            public Object banner_oss_filename;
            public String cover_url;
            public String created_at;
            public Object deleted_at;
            public int dump_status;
            public int dump_week;
            public String global_type;
            public int height;
            public int hot;
            public String id;
            public String intro;
            public int is_new;
            public int is_pay;
            public int is_recommend;
            public int resource_total;
            public String score;
            public int status;
            public String title;
            public String updated_at;
            public int width;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<DataBean> {
                @Override // android.os.Parcelable.Creator
                public DataBean createFromParcel(Parcel parcel) {
                    return new DataBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public DataBean[] newArray(int i2) {
                    return new DataBean[i2];
                }
            }

            public DataBean(ViewModel.DataBean.MComicDataBean mComicDataBean) {
                this.id = String.valueOf(mComicDataBean.getId());
                this.global_type = mComicDataBean.getGlobal_type();
                this.title = mComicDataBean.getTitle();
                this.cover_url = mComicDataBean.getCover_url();
                this.dump_status = mComicDataBean.getDump_status();
                this.intro = mComicDataBean.getIntro();
                this.dump_week = mComicDataBean.getDump_week();
                this.score = mComicDataBean.getScore();
                this.status = mComicDataBean.getStatus();
                this.is_pay = mComicDataBean.getIs_pay();
                this.is_new = mComicDataBean.getIs_new();
                this.is_recommend = mComicDataBean.getIs_recommend();
                this.hot = mComicDataBean.getHot();
                this.resource_total = mComicDataBean.getResource_total();
                this.created_at = mComicDataBean.getCreated_at();
                this.updated_at = mComicDataBean.getUpdated_at();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public Object getBanner_oss_filename() {
                return this.banner_oss_filename;
            }

            public String getCover_url() {
                return this.cover_url;
            }

            public String getCreated_at() {
                return this.created_at;
            }

            public Object getDeleted_at() {
                return this.deleted_at;
            }

            public int getDump_status() {
                return this.dump_status;
            }

            public int getDump_week() {
                return this.dump_week;
            }

            public String getGlobal_type() {
                return this.global_type;
            }

            public int getHeight() {
                return this.height;
            }

            public int getHot() {
                return this.hot;
            }

            public String getId() {
                return this.id;
            }

            public String getIntro() {
                return this.intro;
            }

            public int getIs_new() {
                return this.is_new;
            }

            public int getIs_pay() {
                return this.is_pay;
            }

            public int getIs_recommend() {
                return this.is_recommend;
            }

            public int getResource_total() {
                return this.resource_total;
            }

            public String getScore() {
                return f.b.a.a.a.n(new StringBuilder(), this.score, "0url");
            }

            public int getStatus() {
                return this.status;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUpdate() {
                return e.a("0fnXgv3D0bTA") + this.resource_total + e.a("383+");
            }

            public String getUpdated_at() {
                return this.updated_at;
            }

            public int getWidth() {
                return this.width;
            }

            public boolean isNew() {
                return this.is_new == 1;
            }

            public boolean isRecommend() {
                return this.is_recommend == 1;
            }

            public void setBanner_oss_filename(Object obj) {
                this.banner_oss_filename = obj;
            }

            public void setCover_url(String str) {
                this.cover_url = str;
            }

            public void setCreated_at(String str) {
                this.created_at = str;
            }

            public void setDeleted_at(Object obj) {
                this.deleted_at = obj;
            }

            public void setDump_status(int i2) {
                this.dump_status = i2;
            }

            public void setDump_week(int i2) {
                this.dump_week = i2;
            }

            public void setGlobal_type(String str) {
                this.global_type = str;
            }

            public void setHeight(int i2) {
                this.height = i2;
            }

            public void setHot(int i2) {
                this.hot = i2;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void setIs_new(int i2) {
                this.is_new = i2;
            }

            public void setIs_pay(int i2) {
                this.is_pay = i2;
            }

            public void setIs_recommend(int i2) {
                this.is_recommend = i2;
            }

            public void setResource_total(int i2) {
                this.resource_total = i2;
            }

            public void setScore(String str) {
                this.score = str;
            }

            public void setStatus(int i2) {
                this.status = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUpdated_at(String str) {
                this.updated_at = str;
            }

            public void setWidth(int i2) {
                this.width = i2;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.id);
                parcel.writeString(this.global_type);
                parcel.writeString(this.title);
                parcel.writeString(this.cover_url);
                parcel.writeInt(this.width);
                parcel.writeInt(this.height);
                parcel.writeString(this.intro);
                parcel.writeInt(this.dump_status);
                parcel.writeInt(this.dump_week);
                parcel.writeString(this.score);
                parcel.writeInt(this.status);
                parcel.writeInt(this.is_pay);
                parcel.writeInt(this.is_new);
                parcel.writeInt(this.is_recommend);
                parcel.writeInt(this.hot);
                parcel.writeInt(this.resource_total);
                parcel.writeString(this.created_at);
                parcel.writeString(this.updated_at);
            }

            public DataBean(ViewModel.DataBean.MBannerDataBean mBannerDataBean) {
                this.id = String.valueOf(mBannerDataBean.getComic_id());
                this.global_type = mBannerDataBean.getGlobal_type();
                this.title = mBannerDataBean.getGlobal_type();
                this.cover_url = mBannerDataBean.getCover_oss_filename();
            }

            public DataBean(Parcel parcel) {
                this.id = parcel.readString();
                this.global_type = parcel.readString();
                this.title = parcel.readString();
                this.cover_url = parcel.readString();
                this.width = parcel.readInt();
                this.height = parcel.readInt();
                this.intro = parcel.readString();
                this.dump_status = parcel.readInt();
                this.dump_week = parcel.readInt();
                this.score = parcel.readString();
                this.status = parcel.readInt();
                this.is_pay = parcel.readInt();
                this.is_new = parcel.readInt();
                this.is_recommend = parcel.readInt();
                this.hot = parcel.readInt();
                this.resource_total = parcel.readInt();
                this.created_at = parcel.readString();
                this.updated_at = parcel.readString();
            }
        }
    }
}
