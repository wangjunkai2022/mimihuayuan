package com.comeback.data.ui.fruitPie.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends k {
    public int code;
    public DataEntity data;
    public String msg;
    public int time;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<?> banner;
        public int currentPage;
        public int hasNextPage;
        public List<ListEntity> list;
        public int totalPage;

        /* loaded from: classes.dex */
        public class ListEntity {
            public List<Columnist> columnist;
            public int date_number;
            public String img_url;
            public int library_id;
            public String show_time;
            public String subtitle;
            public List<TagsEntity> tags;
            public String title;

            /* loaded from: classes.dex */
            public class TagsEntity {
                public int tag_id;
                public String tag_title;

                public TagsEntity() {
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

            public ListEntity() {
            }

            public List<Columnist> getColumnist() {
                return this.columnist;
            }

            public int getDate_number() {
                return this.date_number;
            }

            public String getImg_url() {
                return this.img_url;
            }

            public int getLibrary_id() {
                return this.library_id;
            }

            public String getShow_time() {
                return this.show_time;
            }

            public String getSubtitle() {
                return this.subtitle;
            }

            public List<TagsEntity> getTags() {
                return this.tags;
            }

            public String getTitle() {
                return this.title;
            }

            public void setColumnist(List<Columnist> list) {
                this.columnist = list;
            }

            public void setDate_number(int i2) {
                this.date_number = i2;
            }

            public void setImg_url(String str) {
                this.img_url = str;
            }

            public void setLibrary_id(int i2) {
                this.library_id = i2;
            }

            public void setShow_time(String str) {
                this.show_time = str;
            }

            public void setSubtitle(String str) {
                this.subtitle = str;
            }

            public void setTags(List<TagsEntity> list) {
                this.tags = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public DataEntity() {
        }

        public List<?> getBanner() {
            return this.banner;
        }

        public int getCurrentPage() {
            return this.currentPage;
        }

        public int getHasNextPage() {
            return this.hasNextPage;
        }

        public List<ListEntity> getList() {
            return this.list;
        }

        public int getTotalPage() {
            return this.totalPage;
        }

        public void setBanner(List<?> list) {
            this.banner = list;
        }

        public void setCurrentPage(int i2) {
            this.currentPage = i2;
        }

        public void setHasNextPage(int i2) {
            this.hasNextPage = i2;
        }

        public void setList(List<ListEntity> list) {
            this.list = list;
        }

        public void setTotalPage(int i2) {
            this.totalPage = i2;
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
