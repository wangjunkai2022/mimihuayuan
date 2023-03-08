package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DiscoverBean extends k {
    public int code;
    public DataEntity data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<HotTagEntity> hotTag;
        public NewHotEntity newHot;
        public List<RecommendEntity> recommend;

        /* loaded from: classes.dex */
        public class HotTagEntity {
            public int tag_id;
            public String tag_title;

            public HotTagEntity() {
            }

            public int getTag_id() {
                return this.tag_id;
            }

            public String getTag_title() {
                return this.tag_title;
            }

            public void setTag_id(int i2) {
                this.tag_id = i2;
            }

            public void setTag_title(String str) {
                this.tag_title = str;
            }
        }

        /* loaded from: classes.dex */
        public class NewHotEntity {
            public int current_page;
            public List<RecommendEntity> data;
            public int from;
            public int per_page;
            public int to;

            public NewHotEntity() {
            }

            public int getCurrent_page() {
                return this.current_page;
            }

            public List<RecommendEntity> getData() {
                return this.data;
            }

            public int getFrom() {
                return this.from;
            }

            public int getPer_page() {
                return this.per_page;
            }

            public int getTo() {
                return this.to;
            }

            public void setCurrent_page(int i2) {
                this.current_page = i2;
            }

            public void setData(List<RecommendEntity> list) {
                this.data = list;
            }

            public void setFrom(int i2) {
                this.from = i2;
            }

            public void setPer_page(int i2) {
                this.per_page = i2;
            }

            public void setTo(int i2) {
                this.to = i2;
            }
        }

        /* loaded from: classes.dex */
        public class RecommendEntity {
            public int id;
            public String img_url;
            public int library_id;
            public String ltype;
            public String movie_time;
            public int play_time_num_hand;
            public int play_time_num_self;
            public int play_time_num_total;
            public int play_time_sgin;
            public String subtitle;
            public String title;

            public RecommendEntity() {
            }

            public int getId() {
                return this.id;
            }

            public String getImg_url() {
                return this.img_url;
            }

            public int getLibrary_id() {
                return this.library_id;
            }

            public String getLtype() {
                return this.ltype;
            }

            public String getMovie_time() {
                return this.movie_time;
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

            public String getSubtitle() {
                return this.subtitle;
            }

            public String getTitle() {
                return this.title;
            }

            public int getVideoId() {
                int i2 = this.library_id;
                return i2 != 0 ? i2 : this.id;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setImg_url(String str) {
                this.img_url = str;
            }

            public void setLibrary_id(int i2) {
                this.library_id = i2;
            }

            public void setLtype(String str) {
                this.ltype = str;
            }

            public void setMovie_time(String str) {
                this.movie_time = str;
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

            public void setSubtitle(String str) {
                this.subtitle = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public DataEntity() {
        }

        public List<HotTagEntity> getHotTag() {
            return this.hotTag;
        }

        public NewHotEntity getNewHot() {
            return this.newHot;
        }

        public List<RecommendEntity> getRecommend() {
            return this.recommend;
        }

        public List<String> getTagString() {
            ArrayList arrayList = new ArrayList();
            for (HotTagEntity hotTagEntity : this.hotTag) {
                arrayList.add(hotTagEntity.tag_title);
            }
            return arrayList;
        }

        public void setHotTag(List<HotTagEntity> list) {
            this.hotTag = list;
        }

        public void setNewHot(NewHotEntity newHotEntity) {
            this.newHot = newHotEntity;
        }

        public void setRecommend(List<RecommendEntity> list) {
            this.recommend = list;
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
