package com.comeback.data.ui.mimei.bean;

import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NovelHomeType extends k {
    public SuccessBean success;

    /* loaded from: classes.dex */
    public static class SuccessBean {
        public List<BannerBean> banner;
        public List<TypeBean> category;
        public Object continued;
        public List<MimeiNovelItem> data;
        public RankingBean korea_end;
        public RankingBean korea_serial;
        @b("new")
        public RankingBean newX;
        public RankingBean ranking;
        public RankingBean recommend;
        public List<MimeiNovelItem> series;
        public List<TypeBean> type;

        /* loaded from: classes.dex */
        public static class BannerBean {
            public String destn;
            public String img;
            public String method;
            public String name;
            public String src;

            public String getDestn() {
                return this.destn;
            }

            public String getImg() {
                return this.img;
            }

            public String getMethod() {
                return this.method;
            }

            public String getName() {
                return this.name;
            }

            public String getSrc() {
                return this.src;
            }

            public void setDestn(String str) {
                this.destn = str;
            }

            public void setImg(String str) {
                this.img = str;
            }

            public void setMethod(String str) {
                this.method = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setSrc(String str) {
                this.src = str;
            }
        }

        /* loaded from: classes.dex */
        public static class RankingBean {
            public List<MimeiNovelItem> data;
            public int lastPage;
            public int total;

            public List<MimeiNovelItem> getData() {
                return this.data;
            }

            public int getLastPage() {
                return this.lastPage;
            }

            public int getTotal() {
                return this.total;
            }

            public void setData(List<MimeiNovelItem> list) {
                this.data = list;
            }

            public void setLastPage(int i2) {
                this.lastPage = i2;
            }

            public void setTotal(int i2) {
                this.total = i2;
            }
        }

        /* loaded from: classes.dex */
        public static class TypeBean {
            public List<MimeiNovelItem> data;
            public InfoBean info;

            /* loaded from: classes.dex */
            public static class InfoBean {
                public String name;
                public int type;

                public String getName() {
                    return this.name;
                }

                public int getType() {
                    return this.type;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setType(int i2) {
                    this.type = i2;
                }
            }

            public List<MimeiNovelItem> getData() {
                return this.data;
            }

            public InfoBean getInfo() {
                return this.info;
            }

            public void setData(List<MimeiNovelItem> list) {
                this.data = list;
            }

            public void setInfo(InfoBean infoBean) {
                this.info = infoBean;
            }
        }

        public List<BannerBean> getBanner() {
            return this.banner;
        }

        public Object getContinued() {
            return this.continued;
        }

        public List<MimeiNovelItem> getData() {
            return this.data;
        }

        public RankingBean getKorea_end() {
            return this.korea_end;
        }

        public RankingBean getKorea_serial() {
            return this.korea_serial;
        }

        public RankingBean getNewX() {
            return this.newX;
        }

        public RankingBean getRanking() {
            return this.ranking;
        }

        public RankingBean getRecommend() {
            return this.recommend;
        }

        public List<TypeBean> getType() {
            List<TypeBean> list = this.type;
            if (list != null && list.size() != 0) {
                return this.type;
            }
            List<TypeBean> list2 = this.category;
            if (list2 != null && list2.size() != 0) {
                return this.category;
            }
            return new ArrayList();
        }

        public void setBanner(List<BannerBean> list) {
            this.banner = list;
        }

        public void setContinued(Object obj) {
            this.continued = obj;
        }

        public void setData(List<MimeiNovelItem> list) {
            this.data = list;
        }

        public void setKorea_end(RankingBean rankingBean) {
            this.korea_end = rankingBean;
        }

        public void setKorea_serial(RankingBean rankingBean) {
            this.korea_serial = rankingBean;
        }

        public void setNewX(RankingBean rankingBean) {
            this.newX = rankingBean;
        }

        public void setRanking(RankingBean rankingBean) {
            this.ranking = rankingBean;
        }

        public void setRecommend(RankingBean rankingBean) {
            this.recommend = rankingBean;
        }

        public void setType(List<TypeBean> list) {
            this.type = list;
        }
    }

    public SuccessBean getSuccess() {
        return this.success;
    }

    public void setSuccess(SuccessBean successBean) {
        this.success = successBean;
    }
}
