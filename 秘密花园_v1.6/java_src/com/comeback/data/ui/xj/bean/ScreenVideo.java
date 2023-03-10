package com.comeback.data.ui.xj.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ScreenVideo extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String action;
        public List<AreasBean> areas;
        public List<CategoriesBean> categories;
        public List<DefinitionsBean> definitions;
        public List<DurationsBean> durations;
        public List<FreetypesBean> freetypes;
        public List<LangvoicesBean> langvoices;
        public List<MosaicsBean> mosaics;
        public int now;
        public List<OrdersBean> orders;
        public String sample_params;
        public List<VideoBean> vodrows;
        public List<YearsBean> years;

        /* loaded from: classes.dex */
        public static class AreasBean {
            public String areaid;
            public String areaname;
            public String sortnum;

            public String getAreaid() {
                return this.areaid;
            }

            public String getAreaname() {
                return this.areaname;
            }

            public String getSortnum() {
                return this.sortnum;
            }

            public void setAreaid(String str) {
                this.areaid = str;
            }

            public void setAreaname(String str) {
                this.areaname = str;
            }

            public void setSortnum(String str) {
                this.sortnum = str;
            }
        }

        /* loaded from: classes.dex */
        public static class CategoriesBean {
            public String cateid;
            public String catename;
            public String parentid;
            public String uuid;

            public String getCateid() {
                return this.cateid;
            }

            public String getCatename() {
                return this.catename;
            }

            public String getParentid() {
                return this.parentid;
            }

            public String getUuid() {
                return this.uuid;
            }

            public void setCateid(String str) {
                this.cateid = str;
            }

            public void setCatename(String str) {
                this.catename = str;
            }

            public void setParentid(String str) {
                this.parentid = str;
            }

            public void setUuid(String str) {
                this.uuid = str;
            }
        }

        /* loaded from: classes.dex */
        public static class DefinitionsBean {
            public String keyid;
            public String value;

            public String getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(String str) {
                this.keyid = str;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class DurationsBean {
            public String keyid;
            public String value;

            public String getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(String str) {
                this.keyid = str;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class FreetypesBean {
            public int keyid;
            public String value;

            public int getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(int i2) {
                this.keyid = i2;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class LangvoicesBean {
            public String keyid;
            public String value;

            public String getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(String str) {
                this.keyid = str;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class MosaicsBean {
            public String keyid;
            public String value;

            public String getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(String str) {
                this.keyid = str;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class OrdersBean {
            public String keyid;
            public String value;

            public String getKeyid() {
                return this.keyid;
            }

            public String getValue() {
                return this.value;
            }

            public void setKeyid(String str) {
                this.keyid = str;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        /* loaded from: classes.dex */
        public static class YearsBean {
            public String sortnum;
            public String yearid;
            public String yearname;

            public String getSortnum() {
                return this.sortnum;
            }

            public String getYearid() {
                return this.yearid;
            }

            public String getYearname() {
                return this.yearname;
            }

            public void setSortnum(String str) {
                this.sortnum = str;
            }

            public void setYearid(String str) {
                this.yearid = str;
            }

            public void setYearname(String str) {
                this.yearname = str;
            }
        }

        public String getAction() {
            return this.action;
        }

        public List<AreasBean> getAreas() {
            return this.areas;
        }

        public List<CategoriesBean> getCategories() {
            return this.categories;
        }

        public List<DefinitionsBean> getDefinitions() {
            return this.definitions;
        }

        public List<DurationsBean> getDurations() {
            return this.durations;
        }

        public List<FreetypesBean> getFreetypes() {
            return this.freetypes;
        }

        public List<LangvoicesBean> getLangvoices() {
            return this.langvoices;
        }

        public List<MosaicsBean> getMosaics() {
            return this.mosaics;
        }

        public int getNow() {
            return this.now;
        }

        public List<OrdersBean> getOrders() {
            return this.orders;
        }

        public String getSample_params() {
            return this.sample_params;
        }

        public List<VideoBean> getVodrows() {
            return this.vodrows;
        }

        public List<YearsBean> getYears() {
            return this.years;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public void setAreas(List<AreasBean> list) {
            this.areas = list;
        }

        public void setCategories(List<CategoriesBean> list) {
            this.categories = list;
        }

        public void setDefinitions(List<DefinitionsBean> list) {
            this.definitions = list;
        }

        public void setDurations(List<DurationsBean> list) {
            this.durations = list;
        }

        public void setFreetypes(List<FreetypesBean> list) {
            this.freetypes = list;
        }

        public void setLangvoices(List<LangvoicesBean> list) {
            this.langvoices = list;
        }

        public void setMosaics(List<MosaicsBean> list) {
            this.mosaics = list;
        }

        public void setNow(int i2) {
            this.now = i2;
        }

        public void setOrders(List<OrdersBean> list) {
            this.orders = list;
        }

        public void setSample_params(String str) {
            this.sample_params = str;
        }

        public void setVodrows(List<VideoBean> list) {
            this.vodrows = list;
        }

        public void setYears(List<YearsBean> list) {
            this.years = list;
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
