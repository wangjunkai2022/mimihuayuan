package com.comeback.data.ui.md.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends k {
    public int current_page;
    public List<DataEntity> data;
    public int last_page;
    public int per_page;
    public int total;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int comefrom;
        public String comefrom_title;
        public String description;
        public int id;
        public int is_bloger;
        public int is_vip;
        public String panorama;
        public String preview;
        public int status;
        public List<TagsEntity> tags;
        public String test_video_url;
        public String thumb;
        public String title;
        public int try_second;
        public String video_url;

        /* loaded from: classes.dex */
        public class TagsEntity {
            public int id;
            public String name;

            public TagsEntity() {
            }

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

        public DataEntity() {
        }

        public int getComefrom() {
            return this.comefrom;
        }

        public String getComefrom_title() {
            return this.comefrom_title;
        }

        public String getDescription() {
            return this.description;
        }

        public int getId() {
            return this.id;
        }

        public int getIs_bloger() {
            return this.is_bloger;
        }

        public int getIs_vip() {
            return this.is_vip;
        }

        public String getPanorama() {
            return this.panorama;
        }

        public String getPreview() {
            return this.preview;
        }

        public int getStatus() {
            return this.status;
        }

        public List<TagsEntity> getTags() {
            return this.tags;
        }

        public String getTest_video_url() {
            return this.test_video_url;
        }

        public String getThumb() {
            return this.thumb;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTry_second() {
            return this.try_second;
        }

        public String getVideo_url() {
            return this.video_url;
        }

        public void setComefrom(int i2) {
            this.comefrom = i2;
        }

        public void setComefrom_title(String str) {
            this.comefrom_title = str;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIs_bloger(int i2) {
            this.is_bloger = i2;
        }

        public void setIs_vip(int i2) {
            this.is_vip = i2;
        }

        public void setPanorama(String str) {
            this.panorama = str;
        }

        public void setPreview(String str) {
            this.preview = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setTags(List<TagsEntity> list) {
            this.tags = list;
        }

        public void setTest_video_url(String str) {
            this.test_video_url = str;
        }

        public void setThumb(String str) {
            this.thumb = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTry_second(int i2) {
            this.try_second = i2;
        }

        public void setVideo_url(String str) {
            this.video_url = str;
        }
    }

    public int getCurrent_page() {
        return this.current_page;
    }

    public List<DataEntity> getData() {
        return this.data;
    }

    public int getLast_page() {
        return this.last_page;
    }

    public int getPer_page() {
        return this.per_page;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCurrent_page(int i2) {
        this.current_page = i2;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setLast_page(int i2) {
        this.last_page = i2;
    }

    public void setPer_page(int i2) {
        this.per_page = i2;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
