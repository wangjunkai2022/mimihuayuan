package com.comeback.data.ui.movieCloud.bean;

import com.comeback.data.bean.PlayListBean;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AMJPlay extends j {
    public int code;
    public DataBeanX data;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public String CT_App_Show_Name1;
        public String CT_App_Show_Pic1;
        public String CT_App_Show_Url1;
        public String CT_App_Show_Vod1;
        public String CT_App_Show_Vod_Time1;
        public String CT_App_Show_Vod_Type1;
        public String CT_App_Show_Vod_Url1;
        public String CT_App_Show_Vod_must_Time1;
        public String CT_Pic_url1_pause;
        public String CT_Pic_url1_pause_skip;
        public String addtime;
        public AdvertisingBean advertising;
        public String cid;
        public String cion;
        public String cname;
        public int comment_count;
        public String daoyan;
        public int dhits;
        public String diqu;
        public String fid;
        public String hits;
        public String id;
        public String info;
        public int look;
        public int looktime;
        public String name;
        public String pf;
        public String pic;
        public String shareurl;
        public String state;
        public List<?> tags;
        public String text;
        public String type;
        public String vip;
        public String year;
        public String yuyan;
        public String zhuyan;
        public List<ZuBean> zu;

        /* loaded from: classes.dex */
        public static class AdvertisingBean {
            public List<DataBean> data;
            public String time;

            /* loaded from: classes.dex */
            public static class DataBean {
                public String pic;
                public String skip;

                public String getPic() {
                    return this.pic;
                }

                public String getSkip() {
                    return this.skip;
                }

                public void setPic(String str) {
                    this.pic = str;
                }

                public void setSkip(String str) {
                    this.skip = str;
                }
            }

            public List<DataBean> getData() {
                return this.data;
            }

            public String getTime() {
                return this.time;
            }

            public void setData(List<DataBean> list) {
                this.data = list;
            }

            public void setTime(String str) {
                this.time = str;
            }
        }

        /* loaded from: classes.dex */
        public static class ZuBean {
            public int count;
            public int id;
            public List<JiBean> ji;
            public String ly;
            public String name;

            /* loaded from: classes.dex */
            public static class JiBean {
                public String ext;
                public int id;
                public String name;
                public String purl;

                public String getExt() {
                    return this.ext;
                }

                public int getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getPurl() {
                    return this.purl;
                }

                public void setExt(String str) {
                    this.ext = str;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setPurl(String str) {
                    this.purl = str;
                }
            }

            public int getCount() {
                return this.count;
            }

            public int getId() {
                return this.id;
            }

            public List<JiBean> getJi() {
                return this.ji;
            }

            public String getLy() {
                return this.ly;
            }

            public String getName() {
                return this.name;
            }

            public void setCount(int i2) {
                this.count = i2;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setJi(List<JiBean> list) {
                this.ji = list;
            }

            public void setLy(String str) {
                this.ly = str;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public String getAddtime() {
            return this.addtime;
        }

        public AdvertisingBean getAdvertising() {
            return this.advertising;
        }

        public String getCT_App_Show_Name1() {
            return this.CT_App_Show_Name1;
        }

        public String getCT_App_Show_Pic1() {
            return this.CT_App_Show_Pic1;
        }

        public String getCT_App_Show_Url1() {
            return this.CT_App_Show_Url1;
        }

        public String getCT_App_Show_Vod1() {
            return this.CT_App_Show_Vod1;
        }

        public String getCT_App_Show_Vod_Time1() {
            return this.CT_App_Show_Vod_Time1;
        }

        public String getCT_App_Show_Vod_Type1() {
            return this.CT_App_Show_Vod_Type1;
        }

        public String getCT_App_Show_Vod_Url1() {
            return this.CT_App_Show_Vod_Url1;
        }

        public String getCT_App_Show_Vod_must_Time1() {
            return this.CT_App_Show_Vod_must_Time1;
        }

        public String getCT_Pic_url1_pause() {
            return this.CT_Pic_url1_pause;
        }

        public String getCT_Pic_url1_pause_skip() {
            return this.CT_Pic_url1_pause_skip;
        }

        public String getCid() {
            return this.cid;
        }

        public String getCion() {
            return this.cion;
        }

        public String getCname() {
            return this.cname;
        }

        public int getComment_count() {
            return this.comment_count;
        }

        public String getDaoyan() {
            return this.daoyan;
        }

        public int getDhits() {
            return this.dhits;
        }

        public String getDiqu() {
            return this.diqu;
        }

        public String getFid() {
            return this.fid;
        }

        public String getHits() {
            return this.hits;
        }

        public String getId() {
            return this.id;
        }

        public String getInfo() {
            return this.info;
        }

        public int getLook() {
            return this.look;
        }

        public int getLooktime() {
            return this.looktime;
        }

        public String getName() {
            return this.name;
        }

        public String getPf() {
            return this.pf;
        }

        public String getPic() {
            return this.pic;
        }

        public ArrayList<PlayListBean> getPlayList() {
            ArrayList<PlayListBean> arrayList = new ArrayList<>();
            for (ZuBean zuBean : this.zu) {
                for (ZuBean.JiBean jiBean : zuBean.getJi()) {
                    PlayListBean playListBean = new PlayListBean();
                    playListBean.setUri(jiBean.getPurl());
                    playListBean.setName(jiBean.getName());
                    arrayList.add(playListBean);
                }
            }
            return arrayList;
        }

        public String getShareurl() {
            return this.shareurl;
        }

        public String getState() {
            return this.state;
        }

        public List<?> getTags() {
            return this.tags;
        }

        public String getText() {
            return this.text;
        }

        public String getType() {
            return this.type;
        }

        public String getVip() {
            return this.vip;
        }

        public String getYear() {
            return this.year;
        }

        public String getYuyan() {
            return this.yuyan;
        }

        public String getZhuyan() {
            return this.zhuyan;
        }

        public List<ZuBean> getZu() {
            return this.zu;
        }

        public void setAddtime(String str) {
            this.addtime = str;
        }

        public void setAdvertising(AdvertisingBean advertisingBean) {
            this.advertising = advertisingBean;
        }

        public void setCT_App_Show_Name1(String str) {
            this.CT_App_Show_Name1 = str;
        }

        public void setCT_App_Show_Pic1(String str) {
            this.CT_App_Show_Pic1 = str;
        }

        public void setCT_App_Show_Url1(String str) {
            this.CT_App_Show_Url1 = str;
        }

        public void setCT_App_Show_Vod1(String str) {
            this.CT_App_Show_Vod1 = str;
        }

        public void setCT_App_Show_Vod_Time1(String str) {
            this.CT_App_Show_Vod_Time1 = str;
        }

        public void setCT_App_Show_Vod_Type1(String str) {
            this.CT_App_Show_Vod_Type1 = str;
        }

        public void setCT_App_Show_Vod_Url1(String str) {
            this.CT_App_Show_Vod_Url1 = str;
        }

        public void setCT_App_Show_Vod_must_Time1(String str) {
            this.CT_App_Show_Vod_must_Time1 = str;
        }

        public void setCT_Pic_url1_pause(String str) {
            this.CT_Pic_url1_pause = str;
        }

        public void setCT_Pic_url1_pause_skip(String str) {
            this.CT_Pic_url1_pause_skip = str;
        }

        public void setCid(String str) {
            this.cid = str;
        }

        public void setCion(String str) {
            this.cion = str;
        }

        public void setCname(String str) {
            this.cname = str;
        }

        public void setComment_count(int i2) {
            this.comment_count = i2;
        }

        public void setDaoyan(String str) {
            this.daoyan = str;
        }

        public void setDhits(int i2) {
            this.dhits = i2;
        }

        public void setDiqu(String str) {
            this.diqu = str;
        }

        public void setFid(String str) {
            this.fid = str;
        }

        public void setHits(String str) {
            this.hits = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setInfo(String str) {
            this.info = str;
        }

        public void setLook(int i2) {
            this.look = i2;
        }

        public void setLooktime(int i2) {
            this.looktime = i2;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPf(String str) {
            this.pf = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setShareurl(String str) {
            this.shareurl = str;
        }

        public void setState(String str) {
            this.state = str;
        }

        public void setTags(List<?> list) {
            this.tags = list;
        }

        public void setText(String str) {
            this.text = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setVip(String str) {
            this.vip = str;
        }

        public void setYear(String str) {
            this.year = str;
        }

        public void setYuyan(String str) {
            this.yuyan = str;
        }

        public void setZhuyan(String str) {
            this.zhuyan = str;
        }

        public void setZu(List<ZuBean> list) {
            this.zu = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBeanX getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBeanX dataBeanX) {
        this.data = dataBeanX;
    }
}
