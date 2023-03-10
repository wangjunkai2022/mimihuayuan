package com.comeback.data.ui.ba.bean;

import f.e.a.f.k;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class ComicDetailBean extends k {
    public int code;
    public String msg;
    public ResultsBean results;

    /* loaded from: classes.dex */
    public static class ResultsBean {
        public List<ComicEpisodesBean> comic_episodes;

        /* loaded from: classes.dex */
        public static class ComicEpisodesBean {
            public List<String> cover_image;
            public int create_time;
            public String describes;
            public int detail_id;
            public int episodes;
            public int is_end;
            public int is_paid;
            public String title;
            public int update_time;
            public VipInfoBean vip_info;

            /* loaded from: classes.dex */
            public static class VipInfoBean {
                public int is_ticket;
                public int is_vip;
                public int ticket_price;
                public int vip_price;

                public int getIs_ticket() {
                    return this.is_ticket;
                }

                public int getIs_vip() {
                    return this.is_vip;
                }

                public int getTicket_price() {
                    return this.ticket_price;
                }

                public int getVip_price() {
                    return this.vip_price;
                }

                public void setIs_ticket(int i2) {
                    this.is_ticket = i2;
                }

                public void setIs_vip(int i2) {
                    this.is_vip = i2;
                }

                public void setTicket_price(int i2) {
                    this.ticket_price = i2;
                }

                public void setVip_price(int i2) {
                    this.vip_price = i2;
                }
            }

            public List<String> getCover_image() {
                return this.cover_image;
            }

            public int getCreate_time() {
                return this.create_time;
            }

            public String getDescribes() {
                return this.describes;
            }

            public int getDetail_id() {
                return this.detail_id;
            }

            public int getEpisodes() {
                return this.episodes;
            }

            public int getIs_end() {
                return this.is_end;
            }

            public int getIs_paid() {
                return this.is_paid;
            }

            public String getTitle() {
                return this.title;
            }

            public int getUpdate_time() {
                return this.update_time;
            }

            public VipInfoBean getVip_info() {
                return this.vip_info;
            }

            public void setCover_image(List<String> list) {
                this.cover_image = list;
            }

            public void setCreate_time(int i2) {
                this.create_time = i2;
            }

            public void setDescribes(String str) {
                this.describes = str;
            }

            public void setDetail_id(int i2) {
                this.detail_id = i2;
            }

            public void setEpisodes(int i2) {
                this.episodes = i2;
            }

            public void setIs_end(int i2) {
                this.is_end = i2;
            }

            public void setIs_paid(int i2) {
                this.is_paid = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUpdate_time(int i2) {
                this.update_time = i2;
            }

            public void setVip_info(VipInfoBean vipInfoBean) {
                this.vip_info = vipInfoBean;
            }
        }

        public List<ComicEpisodesBean> getComic_episodes() {
            return this.comic_episodes;
        }

        public void setComic_episodes(List<ComicEpisodesBean> list) {
            this.comic_episodes = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultsBean getResults() {
        return this.results;
    }

    public ComicDetailBean getSelf() {
        Collections.reverse(getResults().getComic_episodes());
        return this;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResults(ResultsBean resultsBean) {
        this.results = resultsBean;
    }
}
