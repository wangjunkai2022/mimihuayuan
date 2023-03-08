package com.comeback.data.ui.gdian.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import f.e.a.k.b;
import java.util.List;

/* loaded from: classes.dex */
public class Play extends k {
    public String code;
    public DataEntity data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<?> actor_ids;
        public int can_watch_time;
        public int collect_count;
        public int collect_count_cycle;
        public int comment_count;
        public int discount;
        public int forever_point;
        public int history_line;
        public int history_long;
        public String introduction;
        public int is_collect;
        public int is_like;
        public int is_watch;
        public String jav_number;
        public List<String> labels;
        public int like_count;
        public String movie_cover;
        public int movie_id;
        public String movie_long;
        public List<Movie_m3u8_urlEntity> movie_m3u8_url;
        public String movie_mp4;
        public String movie_name;
        public String movie_preview_img;
        public int movie_score;
        public int movie_second;
        public int need_login;
        public int need_vip;
        public int oneday_point;
        public int push_time;
        public List<Suggestion_listEntity> suggestion_list;
        public int user_coupons_state;
        public int vip_line_num;
        public int watch_count;
        public int watch_count_cycle;

        /* loaded from: classes.dex */
        public class Movie_m3u8_urlEntity {
            public String name;
            public String url;

            public Movie_m3u8_urlEntity() {
            }

            public String getName() {
                return this.name;
            }

            public String getUrl() {
                return this.url;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        /* loaded from: classes.dex */
        public class Suggestion_listEntity {
            public List<?> actor_ids;
            public int collect_count_cycle;
            public int forever_point;
            public String jav_number;
            public List<String> labels;
            public int list_type;
            public String movie_cover;
            public int movie_id;
            public String movie_long;
            public String movie_name;
            public String movie_preview_img;
            public int movie_score;
            public int need_login;
            public int need_vip;
            public int push_time;
            public int watch_count;
            public int watch_count_cycle;

            public Suggestion_listEntity() {
            }

            public List<?> getActor_ids() {
                return this.actor_ids;
            }

            public int getCollect_count_cycle() {
                return this.collect_count_cycle;
            }

            public int getForever_point() {
                return this.forever_point;
            }

            public String getJav_number() {
                return this.jav_number;
            }

            public List<String> getLabels() {
                return this.labels;
            }

            public int getList_type() {
                return this.list_type;
            }

            public String getMovie_cover() {
                return this.movie_cover;
            }

            public int getMovie_id() {
                return this.movie_id;
            }

            public String getMovie_long() {
                return this.movie_long;
            }

            public String getMovie_name() {
                return this.movie_name;
            }

            public String getMovie_preview_img() {
                return this.movie_preview_img;
            }

            public int getMovie_score() {
                return this.movie_score;
            }

            public int getNeed_login() {
                return this.need_login;
            }

            public int getNeed_vip() {
                return this.need_vip;
            }

            public int getPush_time() {
                return this.push_time;
            }

            public int getWatch_count() {
                return this.watch_count;
            }

            public int getWatch_count_cycle() {
                return this.watch_count_cycle;
            }

            public void setActor_ids(List<?> list) {
                this.actor_ids = list;
            }

            public void setCollect_count_cycle(int i2) {
                this.collect_count_cycle = i2;
            }

            public void setForever_point(int i2) {
                this.forever_point = i2;
            }

            public void setJav_number(String str) {
                this.jav_number = str;
            }

            public void setLabels(List<String> list) {
                this.labels = list;
            }

            public void setList_type(int i2) {
                this.list_type = i2;
            }

            public void setMovie_cover(String str) {
                this.movie_cover = str;
            }

            public void setMovie_id(int i2) {
                this.movie_id = i2;
            }

            public void setMovie_long(String str) {
                this.movie_long = str;
            }

            public void setMovie_name(String str) {
                this.movie_name = str;
            }

            public void setMovie_preview_img(String str) {
                this.movie_preview_img = str;
            }

            public void setMovie_score(int i2) {
                this.movie_score = i2;
            }

            public void setNeed_login(int i2) {
                this.need_login = i2;
            }

            public void setNeed_vip(int i2) {
                this.need_vip = i2;
            }

            public void setPush_time(int i2) {
                this.push_time = i2;
            }

            public void setWatch_count(int i2) {
                this.watch_count = i2;
            }

            public void setWatch_count_cycle(int i2) {
                this.watch_count_cycle = i2;
            }
        }

        public DataEntity() {
        }

        public List<?> getActor_ids() {
            return this.actor_ids;
        }

        public int getCan_watch_time() {
            return this.can_watch_time;
        }

        public int getCollect_count() {
            return this.collect_count;
        }

        public int getCollect_count_cycle() {
            return this.collect_count_cycle;
        }

        public int getComment_count() {
            return this.comment_count;
        }

        public int getDiscount() {
            return this.discount;
        }

        public int getForever_point() {
            return this.forever_point;
        }

        public int getHistory_line() {
            return this.history_line;
        }

        public int getHistory_long() {
            return this.history_long;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public int getIs_collect() {
            return this.is_collect;
        }

        public int getIs_like() {
            return this.is_like;
        }

        public int getIs_watch() {
            return this.is_watch;
        }

        public String getJav_number() {
            return this.jav_number;
        }

        public List<String> getLabels() {
            return this.labels;
        }

        public int getLike_count() {
            return this.like_count;
        }

        public String getMovie_cover() {
            return this.movie_cover;
        }

        public int getMovie_id() {
            return this.movie_id;
        }

        public String getMovie_long() {
            return this.movie_long;
        }

        public List<Movie_m3u8_urlEntity> getMovie_m3u8_url() {
            return this.movie_m3u8_url;
        }

        public String getMovie_mp4() {
            return this.movie_mp4;
        }

        public String getMovie_name() {
            return this.movie_name;
        }

        public String getMovie_preview_img() {
            return this.movie_preview_img;
        }

        public int getMovie_score() {
            return this.movie_score;
        }

        public int getMovie_second() {
            return this.movie_second;
        }

        public int getNeed_login() {
            return this.need_login;
        }

        public int getNeed_vip() {
            return this.need_vip;
        }

        public int getOneday_point() {
            return this.oneday_point;
        }

        public String getPlayUrl() {
            if (getMovie_m3u8_url() != null && getMovie_m3u8_url().size() != 0) {
                for (Movie_m3u8_urlEntity movie_m3u8_urlEntity : getMovie_m3u8_url()) {
                    if (!TextUtils.isEmpty(movie_m3u8_urlEntity.getUrl())) {
                        return (b.t0 + movie_m3u8_urlEntity.getUrl()).replace(e.a("GBIPBRJM"), e.a("GBIPBRJdVAAGXgs="));
                    }
                }
                return e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG");
            }
            return e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG");
        }

        public int getPush_time() {
            return this.push_time;
        }

        public List<Suggestion_listEntity> getSuggestion_list() {
            return this.suggestion_list;
        }

        public int getUser_coupons_state() {
            return this.user_coupons_state;
        }

        public int getVip_line_num() {
            return this.vip_line_num;
        }

        public int getWatch_count() {
            return this.watch_count;
        }

        public int getWatch_count_cycle() {
            return this.watch_count_cycle;
        }

        public void setActor_ids(List<?> list) {
            this.actor_ids = list;
        }

        public void setCan_watch_time(int i2) {
            this.can_watch_time = i2;
        }

        public void setCollect_count(int i2) {
            this.collect_count = i2;
        }

        public void setCollect_count_cycle(int i2) {
            this.collect_count_cycle = i2;
        }

        public void setComment_count(int i2) {
            this.comment_count = i2;
        }

        public void setDiscount(int i2) {
            this.discount = i2;
        }

        public void setForever_point(int i2) {
            this.forever_point = i2;
        }

        public void setHistory_line(int i2) {
            this.history_line = i2;
        }

        public void setHistory_long(int i2) {
            this.history_long = i2;
        }

        public void setIntroduction(String str) {
            this.introduction = str;
        }

        public void setIs_collect(int i2) {
            this.is_collect = i2;
        }

        public void setIs_like(int i2) {
            this.is_like = i2;
        }

        public void setIs_watch(int i2) {
            this.is_watch = i2;
        }

        public void setJav_number(String str) {
            this.jav_number = str;
        }

        public void setLabels(List<String> list) {
            this.labels = list;
        }

        public void setLike_count(int i2) {
            this.like_count = i2;
        }

        public void setMovie_cover(String str) {
            this.movie_cover = str;
        }

        public void setMovie_id(int i2) {
            this.movie_id = i2;
        }

        public void setMovie_long(String str) {
            this.movie_long = str;
        }

        public void setMovie_m3u8_url(List<Movie_m3u8_urlEntity> list) {
            this.movie_m3u8_url = list;
        }

        public void setMovie_mp4(String str) {
            this.movie_mp4 = str;
        }

        public void setMovie_name(String str) {
            this.movie_name = str;
        }

        public void setMovie_preview_img(String str) {
            this.movie_preview_img = str;
        }

        public void setMovie_score(int i2) {
            this.movie_score = i2;
        }

        public void setMovie_second(int i2) {
            this.movie_second = i2;
        }

        public void setNeed_login(int i2) {
            this.need_login = i2;
        }

        public void setNeed_vip(int i2) {
            this.need_vip = i2;
        }

        public void setOneday_point(int i2) {
            this.oneday_point = i2;
        }

        public void setPush_time(int i2) {
            this.push_time = i2;
        }

        public void setSuggestion_list(List<Suggestion_listEntity> list) {
            this.suggestion_list = list;
        }

        public void setUser_coupons_state(int i2) {
            this.user_coupons_state = i2;
        }

        public void setVip_line_num(int i2) {
            this.vip_line_num = i2;
        }

        public void setWatch_count(int i2) {
            this.watch_count = i2;
        }

        public void setWatch_count_cycle(int i2) {
            this.watch_count_cycle = i2;
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public int getIs_login() {
        return this.is_login;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setIs_login(int i2) {
        this.is_login = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
