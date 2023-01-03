package com.comeback.data.ui.sex8.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LouFengDetail extends j {
    public DataBean data;
    public int is_collect;
    public String msg;
    public int status;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String age;
        public String area_name;
        public String check_date;
        public String city_id;
        public String city_name;
        public String date;
        public String grade;
        public String hits;
        public String id;
        public String input_date;
        public String is_share;
        public String isneedpay;
        public String item;
        public String phone;
        public List<PicBean> pic;
        public String pic_id;
        public String price;
        public String price1;
        public String prov_id;
        public String qq;
        public String server_num;
        public ShareBean share;
        public String title;
        public String up_date;
        public String up_sign;
        public int v_sign;
        public String verif_live;
        public String verif_mode;
        public String view_type;
        public String wechat;

        /* loaded from: classes.dex */
        public static class PicBean {
            public String pic;

            public String getPic() {
                return this.pic;
            }

            public void setPic(String str) {
                this.pic = str;
            }
        }

        /* loaded from: classes.dex */
        public static class ShareBean {
            public String data;
            public String url;

            public String getData() {
                return this.data;
            }

            public String getUrl() {
                return this.url;
            }

            public void setData(String str) {
                this.data = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public String getAge() {
            return this.age;
        }

        public String getArea_name() {
            return this.area_name;
        }

        public String getCheck_date() {
            return this.check_date;
        }

        public String getCity_id() {
            return this.city_id;
        }

        public String getCity_name() {
            return this.city_name;
        }

        public String getDate() {
            return this.date;
        }

        public String getGrade() {
            return this.grade;
        }

        public String getHits() {
            return this.hits;
        }

        public String getId() {
            return this.id;
        }

        public String getInput_date() {
            return this.input_date;
        }

        public String getIs_share() {
            return this.is_share;
        }

        public String getIsneedpay() {
            return this.isneedpay;
        }

        public String getItem() {
            return this.item;
        }

        public String getLocal() {
            return getArea_name() + e.a("9dU=") + getCity_name() + e.a("GA==") + getAge() + e.a("0tDi");
        }

        public String getPhone() {
            return e.a("0PbWjMTu1o/p") + this.phone;
        }

        public List<PicBean> getPic() {
            return this.pic;
        }

        public List<String> getPicList() {
            ArrayList arrayList = new ArrayList();
            for (PicBean picBean : getPic()) {
                arrayList.add(picBean.getPic());
            }
            return arrayList;
        }

        public String getPic_id() {
            return this.pic_id;
        }

        public String getPrice() {
            return e.a("09nUgsvP1o/p") + this.price;
        }

        public String getPrice1() {
            return this.price1;
        }

        public String getProv_id() {
            return this.prov_id;
        }

        public String getQq() {
            return e.a("ZjOM2PE=") + this.qq;
        }

        public String getServer_num() {
            return e.a("0f7ugeHS3YnJgKHXl9b5") + this.server_num;
        }

        public ShareBean getShare() {
            return this.share;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUp_date() {
            return e.a("0fnXgv3D36TFj6PTl9b5") + this.up_date;
        }

        public String getUp_sign() {
            return this.up_sign;
        }

        public int getV_sign() {
            return this.v_sign;
        }

        public String getVerif_live() {
            return this.verif_live;
        }

        public String getVerif_mode() {
            return this.verif_mode;
        }

        public String getView_type() {
            return this.view_type;
        }

        public String getWechat() {
            return e.a("0tzNgNTS1o/p") + this.wechat;
        }

        public void setAge(String str) {
            this.age = str;
        }

        public void setArea_name(String str) {
            this.area_name = str;
        }

        public void setCheck_date(String str) {
            this.check_date = str;
        }

        public void setCity_id(String str) {
            this.city_id = str;
        }

        public void setCity_name(String str) {
            this.city_name = str;
        }

        public void setDate(String str) {
            this.date = str;
        }

        public void setGrade(String str) {
            this.grade = str;
        }

        public void setHits(String str) {
            this.hits = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setInput_date(String str) {
            this.input_date = str;
        }

        public void setIs_share(String str) {
            this.is_share = str;
        }

        public void setIsneedpay(String str) {
            this.isneedpay = str;
        }

        public void setItem(String str) {
            this.item = str;
        }

        public void setPhone(String str) {
            this.phone = str;
        }

        public void setPic(List<PicBean> list) {
            this.pic = list;
        }

        public void setPic_id(String str) {
            this.pic_id = str;
        }

        public void setPrice(String str) {
            this.price = str;
        }

        public void setPrice1(String str) {
            this.price1 = str;
        }

        public void setProv_id(String str) {
            this.prov_id = str;
        }

        public void setQq(String str) {
            this.qq = str;
        }

        public void setServer_num(String str) {
            this.server_num = str;
        }

        public void setShare(ShareBean shareBean) {
            this.share = shareBean;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUp_date(String str) {
            this.up_date = str;
        }

        public void setUp_sign(String str) {
            this.up_sign = str;
        }

        public void setV_sign(int i2) {
            this.v_sign = i2;
        }

        public void setVerif_live(String str) {
            this.verif_live = str;
        }

        public void setVerif_mode(String str) {
            this.verif_mode = str;
        }

        public void setView_type(String str) {
            this.view_type = str;
        }

        public void setWechat(String str) {
            this.wechat = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getIs_collect() {
        return this.is_collect;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getStatus() {
        return this.status;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setIs_collect(int i2) {
        this.is_collect = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
