package com.comeback.data.ui.movieCloud.bean;

import android.text.TextUtils;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class XXList extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<VodrowsBean> hotrows;
        public List<VodrowsBean> vodrows;
        public String xxx_api_auth;

        /* loaded from: classes.dex */
        public static class VodrowsBean {
            public String areaid;
            public String areaname;
            public String cateid;
            public String catename;
            public String commentcount;
            public String coverpic;
            public String coverpic2;
            public String createtime;
            public String definition;
            public String down_url;
            public String downcount_day;
            public int downcount_month;
            public int downcount_total;
            public String downcount_week;
            public String downnum;
            public String duration;
            public String episode_status;
            public String episode_statustext;
            public String episode_total;
            public int hot;
            public String intro;
            public String isvip;
            public String langvoiceid;
            public Object langvoicename;
            public int limit_free;
            public String mosaic;
            public String play_url;
            public int playcount_day;
            public int playcount_month;
            public int playcount_total;
            public int playcount_week;
            public int playindex;
            public List<PlaylistBean> playlist;
            public String portrait;
            public String scorenum;
            public String subtitle;
            public String title;
            public String updatetime;
            public String upnum;
            public String view_price;
            public String vodid;
            public String vodkey;
            public String yearid;
            public String yearname;

            /* loaded from: classes.dex */
            public static class PlaylistBean {
                public String play_name;
                public int playindex;
                public int view_price;

                public String getPlay_name() {
                    return this.play_name;
                }

                public int getPlayindex() {
                    return this.playindex;
                }

                public int getView_price() {
                    return this.view_price;
                }

                public void setPlay_name(String str) {
                    this.play_name = str;
                }

                public void setPlayindex(int i2) {
                    this.playindex = i2;
                }

                public void setView_price(int i2) {
                    this.view_price = i2;
                }
            }

            public String getAreaid() {
                return this.areaid;
            }

            public String getAreaname() {
                return this.areaname;
            }

            public String getCateid() {
                return this.cateid;
            }

            public String getCatename() {
                return this.catename;
            }

            public String getCommentcount() {
                return this.commentcount;
            }

            public String getCoverpic() {
                return this.coverpic;
            }

            public String getCoverpic2() {
                return this.coverpic2;
            }

            public String getCreatetime() {
                return this.createtime;
            }

            public String getDefinition() {
                return this.definition;
            }

            public String getDown_url() {
                return this.down_url;
            }

            public String getDowncount_day() {
                return this.downcount_day;
            }

            public int getDowncount_month() {
                return this.downcount_month;
            }

            public int getDowncount_total() {
                return this.downcount_total;
            }

            public String getDowncount_week() {
                return this.downcount_week;
            }

            public String getDownnum() {
                return this.downnum;
            }

            public String getDuration() {
                return this.duration;
            }

            public String getEpisode_status() {
                return this.episode_status;
            }

            public String getEpisode_statustext() {
                return this.episode_statustext;
            }

            public String getEpisode_total() {
                return this.episode_total;
            }

            public int getHot() {
                return this.hot;
            }

            public String getIntro() {
                return this.intro;
            }

            public String getIsvip() {
                return this.isvip;
            }

            public String getLangvoiceid() {
                return this.langvoiceid;
            }

            public Object getLangvoicename() {
                return this.langvoicename;
            }

            public int getLimit_free() {
                return this.limit_free;
            }

            public String getMosaic() {
                return this.mosaic;
            }

            public String getPlay_url() {
                return this.play_url;
            }

            public int getPlaycount_day() {
                return this.playcount_day;
            }

            public int getPlaycount_month() {
                return this.playcount_month;
            }

            public int getPlaycount_total() {
                return this.playcount_total;
            }

            public int getPlaycount_week() {
                return this.playcount_week;
            }

            public int getPlayindex() {
                return this.playindex;
            }

            public List<PlaylistBean> getPlaylist() {
                return this.playlist;
            }

            public String getPortrait() {
                return this.portrait;
            }

            public String getScorenum() {
                if (TextUtils.isEmpty(this.episode_statustext)) {
                    return this.scorenum;
                }
                return this.episode_statustext;
            }

            public String getSubtitle() {
                return this.subtitle;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUpdatetime() {
                return this.updatetime;
            }

            public String getUpnum() {
                return this.upnum;
            }

            public String getView_price() {
                return this.view_price;
            }

            public String getVodid() {
                return this.vodid;
            }

            public String getVodkey() {
                return this.vodkey;
            }

            public String getYearid() {
                return this.yearid;
            }

            public String getYearname() {
                return this.yearname;
            }

            public void setAreaid(String str) {
                this.areaid = str;
            }

            public void setAreaname(String str) {
                this.areaname = str;
            }

            public void setCateid(String str) {
                this.cateid = str;
            }

            public void setCatename(String str) {
                this.catename = str;
            }

            public void setCommentcount(String str) {
                this.commentcount = str;
            }

            public void setCoverpic(String str) {
                this.coverpic = str;
            }

            public void setCoverpic2(String str) {
                this.coverpic2 = str;
            }

            public void setCreatetime(String str) {
                this.createtime = str;
            }

            public void setDefinition(String str) {
                this.definition = str;
            }

            public void setDown_url(String str) {
                this.down_url = str;
            }

            public void setDowncount_day(String str) {
                this.downcount_day = str;
            }

            public void setDowncount_month(int i2) {
                this.downcount_month = i2;
            }

            public void setDowncount_total(int i2) {
                this.downcount_total = i2;
            }

            public void setDowncount_week(String str) {
                this.downcount_week = str;
            }

            public void setDownnum(String str) {
                this.downnum = str;
            }

            public void setDuration(String str) {
                this.duration = str;
            }

            public void setEpisode_status(String str) {
                this.episode_status = str;
            }

            public void setEpisode_statustext(String str) {
                this.episode_statustext = str;
            }

            public void setEpisode_total(String str) {
                this.episode_total = str;
            }

            public void setHot(int i2) {
                this.hot = i2;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void setIsvip(String str) {
                this.isvip = str;
            }

            public void setLangvoiceid(String str) {
                this.langvoiceid = str;
            }

            public void setLangvoicename(Object obj) {
                this.langvoicename = obj;
            }

            public void setLimit_free(int i2) {
                this.limit_free = i2;
            }

            public void setMosaic(String str) {
                this.mosaic = str;
            }

            public void setPlay_url(String str) {
                this.play_url = str;
            }

            public void setPlaycount_day(int i2) {
                this.playcount_day = i2;
            }

            public void setPlaycount_month(int i2) {
                this.playcount_month = i2;
            }

            public void setPlaycount_total(int i2) {
                this.playcount_total = i2;
            }

            public void setPlaycount_week(int i2) {
                this.playcount_week = i2;
            }

            public void setPlayindex(int i2) {
                this.playindex = i2;
            }

            public void setPlaylist(List<PlaylistBean> list) {
                this.playlist = list;
            }

            public void setPortrait(String str) {
                this.portrait = str;
            }

            public void setScorenum(String str) {
                this.scorenum = str;
            }

            public void setSubtitle(String str) {
                this.subtitle = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUpdatetime(String str) {
                this.updatetime = str;
            }

            public void setUpnum(String str) {
                this.upnum = str;
            }

            public void setView_price(String str) {
                this.view_price = str;
            }

            public void setVodid(String str) {
                this.vodid = str;
            }

            public void setVodkey(String str) {
                this.vodkey = str;
            }

            public void setYearid(String str) {
                this.yearid = str;
            }

            public void setYearname(String str) {
                this.yearname = str;
            }
        }

        public List<VodrowsBean> getHotrows() {
            return this.hotrows;
        }

        public List<VodrowsBean> getVodrows() {
            return this.vodrows;
        }

        public String getXxx_api_auth() {
            return this.xxx_api_auth;
        }

        public void setVodrows(List<VodrowsBean> list) {
            this.vodrows = list;
        }

        public void setXxx_api_auth(String str) {
            this.xxx_api_auth = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
