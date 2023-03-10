package com.comeback.data.ui.movieCloud.bean;

import com.comeback.data.bean.PlayListBean;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class XXPlay extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public VodrowBean vodrow;

        /* loaded from: classes.dex */
        public static class VodrowBean {
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
            public List<DownlistBean> downlist;
            public String downnum;
            public String duration;
            public String episode_status;
            public String episode_statustext;
            public String episode_total;
            public int hot;
            public String intro;
            public String isvip;
            public String langvoiceid;
            public String langvoicename;
            public int limit_free;
            public String mosaic;
            public String play_url;
            public int playcount_day;
            public int playcount_month;
            public int playcount_total;
            public int playcount_week;
            public int playindex;
            public List<Play> playlist;
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
            public static class DownlistBean {
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

            /* loaded from: classes.dex */
            public static class Play {
                public String play_name;
                public String playindex;
                public int view_price;

                public String getPlay_name() {
                    return this.play_name;
                }

                public String getPlayindex() {
                    return this.playindex;
                }

                public int getView_price() {
                    return this.view_price;
                }

                public void setPlay_name(String str) {
                    this.play_name = str;
                }

                public void setPlayindex(String str) {
                    this.playindex = str;
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

            public List<DownlistBean> getDownlist() {
                return this.downlist;
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

            public String getLangvoicename() {
                return this.langvoicename;
            }

            public int getLimit_free() {
                return this.limit_free;
            }

            public String getMosaic() {
                return this.mosaic;
            }

            public ArrayList<PlayListBean> getPlayList() {
                ArrayList<PlayListBean> arrayList = new ArrayList<>();
                for (Play play : getPlaylist()) {
                    PlayListBean playListBean = new PlayListBean();
                    playListBean.setName(play.getPlay_name());
                    playListBean.setUri(play.getPlayindex());
                    arrayList.add(playListBean);
                }
                return arrayList;
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

            public List<Play> getPlaylist() {
                return this.playlist;
            }

            public String getPortrait() {
                return this.portrait;
            }

            public String getScorenum() {
                return this.scorenum;
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

            public void setDownlist(List<DownlistBean> list) {
                this.downlist = list;
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

            public void setLangvoicename(String str) {
                this.langvoicename = str;
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

            public void setPlaylist(List<Play> list) {
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

        public VodrowBean getVodrow() {
            return this.vodrow;
        }

        public void setVodrow(VodrowBean vodrowBean) {
            this.vodrow = vodrowBean;
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
