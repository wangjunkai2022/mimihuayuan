package com.comeback.data.ui.cm.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class ArtistDetail extends j {
    public int code;
    public String msg;
    public RescontEntity rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public String artist;
        public String birthday;
        public String country;
        public String cup;
        public String desc;
        public int height;
        public int id;
        public String image;
        public String measurement;
        public VideoListEntity videoList;

        /* loaded from: classes.dex */
        public class VideoListEntity {
            public int current_page;
            public List<DataEntity> data;
            public String first_page_url;
            public int from;
            public int last_page;
            public String last_page_url;
            public String next_page_url;
            public String path;
            public int per_page;
            public String prev_page_url;
            public int to;
            public int total;

            /* loaded from: classes.dex */
            public class DataEntity {
                public int artist;
                public String auther;
                public String auther_no;
                public String authername;
                public String cover;
                public CoverBase64 coverbase64;
                public String coverpath;
                public String created_at;
                public String deleted_at;
                public String ext;
                public int id;
                public String introduction;
                public int is_vip;
                public int pageviews;
                public String playtimes;
                public int recommend;
                public String short_video_path;
                public int sort_id;
                public int status;
                public int sync_status;
                public String title;
                public int ts_time;
                public String updated_at;
                public String uuid;
                public String videopath;

                public DataEntity() {
                }

                public int getArtist() {
                    return this.artist;
                }

                public String getAuther() {
                    return this.auther;
                }

                public String getAuther_no() {
                    return this.auther_no;
                }

                public String getAuthername() {
                    return this.authername;
                }

                public String getCover() {
                    if (this.cover.startsWith(e.a("XxYXFA=="))) {
                        return this.cover;
                    }
                    return e.a("XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ==") + this.cover;
                }

                public CoverBase64 getCoverBase64() {
                    return this.coverbase64;
                }

                public String getCoverpath() {
                    if (this.coverpath.startsWith(e.a("XxYXFA=="))) {
                        return this.coverpath;
                    }
                    return e.a("XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ==") + this.coverpath;
                }

                public String getCreated_at() {
                    return this.created_at;
                }

                public String getDeleted_at() {
                    return this.deleted_at;
                }

                public String getExt() {
                    return this.ext;
                }

                public int getId() {
                    return this.id;
                }

                public String getIntroduction() {
                    return this.introduction;
                }

                public int getIs_vip() {
                    return this.is_vip;
                }

                public int getPageviews() {
                    return this.pageviews;
                }

                public String getPlaytimes() {
                    return this.playtimes;
                }

                public int getRecommend() {
                    return this.recommend;
                }

                public String getShort_video_path() {
                    return this.short_video_path;
                }

                public int getSort_id() {
                    return this.sort_id;
                }

                public int getStatus() {
                    return this.status;
                }

                public int getSync_status() {
                    return this.sync_status;
                }

                public String getTitle() {
                    return this.title;
                }

                public int getTs_time() {
                    return this.ts_time;
                }

                public String getUpdated_at() {
                    return this.updated_at;
                }

                public String getUuid() {
                    return this.uuid;
                }

                public String getVideopath() {
                    return this.videopath;
                }

                public void setArtist(int i2) {
                    this.artist = i2;
                }

                public void setAuther(String str) {
                    this.auther = str;
                }

                public void setAuther_no(String str) {
                    this.auther_no = str;
                }

                public void setAuthername(String str) {
                    this.authername = str;
                }

                public void setCover(String str) {
                    this.cover = str;
                }

                public void setCoverBase64(CoverBase64 coverBase64) {
                    this.coverbase64 = coverBase64;
                }

                public void setCoverpath(String str) {
                    this.coverpath = str;
                }

                public void setCreated_at(String str) {
                    this.created_at = str;
                }

                public void setDeleted_at(String str) {
                    this.deleted_at = str;
                }

                public void setExt(String str) {
                    this.ext = str;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setIntroduction(String str) {
                    this.introduction = str;
                }

                public void setIs_vip(int i2) {
                    this.is_vip = i2;
                }

                public void setPageviews(int i2) {
                    this.pageviews = i2;
                }

                public void setPlaytimes(String str) {
                    this.playtimes = str;
                }

                public void setRecommend(int i2) {
                    this.recommend = i2;
                }

                public void setShort_video_path(String str) {
                    this.short_video_path = str;
                }

                public void setSort_id(int i2) {
                    this.sort_id = i2;
                }

                public void setStatus(int i2) {
                    this.status = i2;
                }

                public void setSync_status(int i2) {
                    this.sync_status = i2;
                }

                public void setTitle(String str) {
                    this.title = str;
                }

                public void setTs_time(int i2) {
                    this.ts_time = i2;
                }

                public void setUpdated_at(String str) {
                    this.updated_at = str;
                }

                public void setUuid(String str) {
                    this.uuid = str;
                }

                public void setVideopath(String str) {
                    this.videopath = str;
                }
            }

            public VideoListEntity() {
            }

            public int getCurrent_page() {
                return this.current_page;
            }

            public List<DataEntity> getData() {
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

            public String getPrev_page_url() {
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

            public void setData(List<DataEntity> list) {
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

            public void setPrev_page_url(String str) {
                this.prev_page_url = str;
            }

            public void setTo(int i2) {
                this.to = i2;
            }

            public void setTotal(int i2) {
                this.total = i2;
            }
        }

        public RescontEntity() {
        }

        public String getArtist() {
            return this.artist;
        }

        public String getBirthday() {
            return this.birthday;
        }

        public String getCountry() {
            return this.country;
        }

        public String getCup() {
            return this.cup;
        }

        public String getDesc() {
            return this.desc;
        }

        public int getHeight() {
            return this.height;
        }

        public int getId() {
            return this.id;
        }

        public String getImage() {
            if (this.image.startsWith(e.a("XxYXFA=="))) {
                return this.image;
            }
            return e.a("XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ==") + this.image;
        }

        public String getMeasurement() {
            return this.measurement;
        }

        public VideoListEntity getVideoList() {
            return this.videoList;
        }

        public void setArtist(String str) {
            this.artist = str;
        }

        public void setBirthday(String str) {
            this.birthday = str;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public void setCup(String str) {
            this.cup = str;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setHeight(int i2) {
            this.height = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setMeasurement(String str) {
            this.measurement = str;
        }

        public void setVideoList(VideoListEntity videoListEntity) {
            this.videoList = videoListEntity;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public RescontEntity getRescont() {
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(RescontEntity rescontEntity) {
        this.rescont = rescontEntity;
    }
}
