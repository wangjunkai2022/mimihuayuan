package com.comeback.data.ui.gkj.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ViewModel extends j {
    public int current_page;
    public List<DataBean> data;
    public String first_page_url;
    public int from;
    public int last_page;
    public String last_page_url;
    public String next_page_url;
    public String path;
    public int per_page;
    public Object prev_page_url;
    public int to;
    public int total;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int client_limit;
        public String client_module;
        public String client_style;
        public int id;
        public List<MAdDataBean> m_ad_data;
        public List<MBannerDataBean> m_banner_data;
        public List<MComicDataBean> m_comic_data;
        public String module;
        public String options;
        public String subtitle;
        public String title;

        /* loaded from: classes.dex */
        public static class MAdDataBean {
            public Object comic_id;
            public String cover_oss_filename;
            public String created_at;
            public Object deleted_at;
            public String global_type;
            public int id;
            public String key;
            public String redirect_url;
            public int sort;
            public int status;
            public String title;
            public String type;
            public String updated_at;

            public Object getComic_id() {
                return this.comic_id;
            }

            public String getCover_oss_filename() {
                return this.cover_oss_filename;
            }

            public String getCreated_at() {
                return this.created_at;
            }

            public Object getDeleted_at() {
                return this.deleted_at;
            }

            public String getGlobal_type() {
                return this.global_type;
            }

            public int getId() {
                return this.id;
            }

            public String getKey() {
                return this.key;
            }

            public String getRedirect_url() {
                return this.redirect_url;
            }

            public int getSort() {
                return this.sort;
            }

            public int getStatus() {
                return this.status;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public String getUpdated_at() {
                return this.updated_at;
            }

            public void setComic_id(Object obj) {
                this.comic_id = obj;
            }

            public void setCover_oss_filename(String str) {
                this.cover_oss_filename = str;
            }

            public void setCreated_at(String str) {
                this.created_at = str;
            }

            public void setDeleted_at(Object obj) {
                this.deleted_at = obj;
            }

            public void setGlobal_type(String str) {
                this.global_type = str;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setKey(String str) {
                this.key = str;
            }

            public void setRedirect_url(String str) {
                this.redirect_url = str;
            }

            public void setSort(int i2) {
                this.sort = i2;
            }

            public void setStatus(int i2) {
                this.status = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }

            public void setUpdated_at(String str) {
                this.updated_at = str;
            }
        }

        /* loaded from: classes.dex */
        public static class MBannerDataBean {
            public int comic_id;
            public String cover_oss_filename;
            public String global_type;
            public String key;
            public String redirect_url;
            public String title;
            public String type;

            public int getComic_id() {
                return this.comic_id;
            }

            public String getCover_oss_filename() {
                return this.cover_oss_filename;
            }

            public String getGlobal_type() {
                return this.global_type;
            }

            public String getKey() {
                return this.key;
            }

            public String getRedirect_url() {
                return this.redirect_url;
            }

            public String getTitle() {
                return this.title;
            }

            public String getType() {
                return this.type;
            }

            public void setComic_id(int i2) {
                this.comic_id = i2;
            }

            public void setCover_oss_filename(String str) {
                this.cover_oss_filename = str;
            }

            public void setGlobal_type(String str) {
                this.global_type = str;
            }

            public void setKey(String str) {
                this.key = str;
            }

            public void setRedirect_url(String str) {
                this.redirect_url = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        /* loaded from: classes.dex */
        public static class MComicDataBean {
            public String banner_url;
            public String cover_url;
            public String created_at;
            public int dump_status;
            public int dump_week;
            public String global_type;
            public int hot;
            public int id;
            public String intro;
            public int is_new;
            public int is_pay;
            public int is_recommend;
            public int resource_total;
            public double score;
            public int status;
            public String title;
            public String updated_at;

            public String getBanner_url() {
                return this.banner_url;
            }

            public String getCover_url() {
                return this.cover_url;
            }

            public String getCreated_at() {
                return this.created_at;
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

            public int getHot() {
                return this.hot;
            }

            public int getId() {
                return this.id;
            }

            public String getIntro() {
                if (TextUtils.isEmpty(this.intro)) {
                    return e.a("0ufS") + this.resource_total + e.a("383+");
                }
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
                return this.score + e.a("0url");
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

            public boolean isNew() {
                return this.is_new == 1;
            }

            public void setBanner_url(String str) {
                this.banner_url = str;
            }

            public void setCover_url(String str) {
                this.cover_url = str;
            }

            public void setCreated_at(String str) {
                this.created_at = str;
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

            public void setHot(int i2) {
                this.hot = i2;
            }

            public void setId(int i2) {
                this.id = i2;
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

            public void setScore(double d2) {
                this.score = d2;
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
        }

        public int getClient_limit() {
            return this.client_limit;
        }

        public String getClient_module() {
            return this.client_module;
        }

        public String getClient_style() {
            return this.client_style;
        }

        public int getId() {
            return this.id;
        }

        public List<MAdDataBean> getM_ad_data() {
            return this.m_ad_data;
        }

        public List<MBannerDataBean> getM_banner_data() {
            return this.m_banner_data;
        }

        public List<MComicDataBean> getM_comic_data() {
            return this.m_comic_data;
        }

        public String getModule() {
            return this.module;
        }

        public String getOptions() {
            return this.options;
        }

        public String getSubtitle() {
            return this.subtitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setClient_limit(int i2) {
            this.client_limit = i2;
        }

        public void setClient_module(String str) {
            this.client_module = str;
        }

        public void setClient_style(String str) {
            this.client_style = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setM_ad_data(List<MAdDataBean> list) {
            this.m_ad_data = list;
        }

        public void setM_banner_data(List<MBannerDataBean> list) {
            this.m_banner_data = list;
        }

        public void setM_comic_data(List<MComicDataBean> list) {
            this.m_comic_data = list;
        }

        public void setModule(String str) {
            this.module = str;
        }

        public void setOptions(String str) {
            this.options = str;
        }

        public void setSubtitle(String str) {
            this.subtitle = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public int getCurrent_page() {
        return this.current_page;
    }

    public List<DataBean> getData() {
        List<DataBean> list = this.data;
        if (list != null) {
            Iterator<DataBean> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getModule().equals(e.a("VgY="))) {
                    it.remove();
                }
            }
        }
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

    public int getPer_page() {
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

    public void setPer_page(int i2) {
        this.per_page = i2;
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
}
