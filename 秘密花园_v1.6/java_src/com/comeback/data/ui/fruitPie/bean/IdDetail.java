package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class IdDetail extends k {
    public int code;
    public DataEntity data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<AuthorBean> anchors;
        public List<Columnist> columnist;
        public int comment_status;
        public String content;
        public int date_number;
        public List<DetailEntity> detail;
        public int favorites;
        public String film_id;
        public int is_favorites;
        public int is_like;
        public int is_unlike;
        public int library_id;
        public int like_num_hand;
        public int like_num_self;
        public int like_num_total;
        public int like_sgin;
        public String ltype;
        public int play_time_num_hand;
        public int play_time_num_self;
        public int play_time_num_total;
        public int play_time_sgin;
        public String share_content;
        public int share_num_hand;
        public int share_num_self;
        public int share_sgin;
        public String show_time;
        public int status;
        public String subtitle;
        public String title;
        public int unlikes;

        /* loaded from: classes.dex */
        public class DetailEntity {
            public String content;
            public String img_url;
            public int type;
            public String url;

            public DetailEntity() {
            }

            public String getContent() {
                return this.content;
            }

            public String getImg_url() {
                return this.img_url;
            }

            public int getType() {
                return this.type;
            }

            public String getUrl() {
                return this.url;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setImg_url(String str) {
                this.img_url = str;
            }

            public void setType(int i2) {
                this.type = i2;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public DataEntity() {
        }

        public List<AuthorBean> getAnchors() {
            return this.anchors;
        }

        public List<Columnist> getColumnist() {
            return this.columnist;
        }

        public int getComment_status() {
            return this.comment_status;
        }

        public String getContent() {
            return this.content;
        }

        public int getDate_number() {
            return this.date_number;
        }

        public List<DetailEntity> getDetail() {
            return this.detail;
        }

        public int getFavorites() {
            return this.favorites;
        }

        public String getFilm_id() {
            return this.film_id;
        }

        public int getIs_favorites() {
            return this.is_favorites;
        }

        public int getIs_like() {
            return this.is_like;
        }

        public int getIs_unlike() {
            return this.is_unlike;
        }

        public int getLibrary_id() {
            return this.library_id;
        }

        public int getLike_num_hand() {
            return this.like_num_hand;
        }

        public int getLike_num_self() {
            return this.like_num_self;
        }

        public int getLike_num_total() {
            return this.like_num_total;
        }

        public int getLike_sgin() {
            return this.like_sgin;
        }

        public String getLtype() {
            return this.ltype;
        }

        public int getPlay_time_num_hand() {
            return this.play_time_num_hand;
        }

        public int getPlay_time_num_self() {
            return this.play_time_num_self;
        }

        public int getPlay_time_num_total() {
            return this.play_time_num_total;
        }

        public int getPlay_time_sgin() {
            return this.play_time_sgin;
        }

        public String getShare_content() {
            return this.share_content;
        }

        public int getShare_num_hand() {
            return this.share_num_hand;
        }

        public int getShare_num_self() {
            return this.share_num_self;
        }

        public int getShare_sgin() {
            return this.share_sgin;
        }

        public String getShow_time() {
            return this.show_time;
        }

        public int getStatus() {
            return this.status;
        }

        public String getSubtitle() {
            return this.subtitle;
        }

        public String getTitle() {
            return this.title;
        }

        public int getUnlikes() {
            return this.unlikes;
        }

        public void setAnchors(List<AuthorBean> list) {
            this.anchors = list;
        }

        public void setColumnist(List<Columnist> list) {
            this.columnist = list;
        }

        public void setComment_status(int i2) {
            this.comment_status = i2;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setDate_number(int i2) {
            this.date_number = i2;
        }

        public void setDetail(List<DetailEntity> list) {
            this.detail = list;
        }

        public void setFavorites(int i2) {
            this.favorites = i2;
        }

        public void setFilm_id(String str) {
            this.film_id = str;
        }

        public void setIs_favorites(int i2) {
            this.is_favorites = i2;
        }

        public void setIs_like(int i2) {
            this.is_like = i2;
        }

        public void setIs_unlike(int i2) {
            this.is_unlike = i2;
        }

        public void setLibrary_id(int i2) {
            this.library_id = i2;
        }

        public void setLike_num_hand(int i2) {
            this.like_num_hand = i2;
        }

        public void setLike_num_self(int i2) {
            this.like_num_self = i2;
        }

        public void setLike_num_total(int i2) {
            this.like_num_total = i2;
        }

        public void setLike_sgin(int i2) {
            this.like_sgin = i2;
        }

        public void setLtype(String str) {
            this.ltype = str;
        }

        public void setPlay_time_num_hand(int i2) {
            this.play_time_num_hand = i2;
        }

        public void setPlay_time_num_self(int i2) {
            this.play_time_num_self = i2;
        }

        public void setPlay_time_num_total(int i2) {
            this.play_time_num_total = i2;
        }

        public void setPlay_time_sgin(int i2) {
            this.play_time_sgin = i2;
        }

        public void setShare_content(String str) {
            this.share_content = str;
        }

        public void setShare_num_hand(int i2) {
            this.share_num_hand = i2;
        }

        public void setShare_num_self(int i2) {
            this.share_num_self = i2;
        }

        public void setShare_sgin(int i2) {
            this.share_sgin = i2;
        }

        public void setShow_time(String str) {
            this.show_time = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setSubtitle(String str) {
            this.subtitle = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUnlikes(int i2) {
            this.unlikes = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getTime() {
        return this.time;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setTime(int i2) {
        this.time = i2;
    }
}
