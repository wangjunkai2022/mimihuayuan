package com.comeback.data.ui.km2.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class MMInfo extends k {
    public int code;
    public DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public InfoEntity info;

        /* loaded from: classes.dex */
        public class InfoEntity {
            public String age;
            public String area_id;
            public String area_name;
            public String avatar;
            public List<String> base64_txt;
            public String comment_num;
            public String content;
            public String create_at;
            public String description;
            public String fee_gold;
            public String fee_num;
            public List<String> image;
            public String is_certification;
            public int is_collect;
            public int is_exclusive_vip;
            public int is_pay;
            public int is_vip;
            public String nickname;
            public String num;
            public String phone;
            public String price;
            public String qq;
            public String read_num;
            public int relation;
            public List<Tag_idEntity> tag_id;
            public String title;
            public int total_post;
            public String user_id;
            public int user_is_vip;
            public String vip_unlock_num;
            public String wechat;

            /* loaded from: classes.dex */
            public class Tag_idEntity {
                public String id;
                public String name;

                public Tag_idEntity() {
                }

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            public InfoEntity() {
            }

            public String getAge() {
                return this.age;
            }

            public String getArea_id() {
                return this.area_id;
            }

            public String getArea_name() {
                return this.area_name;
            }

            public String getAvatar() {
                return this.avatar;
            }

            public List<String> getBase64_txt() {
                return this.base64_txt;
            }

            public String getComment_num() {
                return this.comment_num;
            }

            public String getContent() {
                return this.content;
            }

            public String getCreate_at() {
                return this.create_at;
            }

            public String getDescription() {
                return this.description;
            }

            public String getFee_gold() {
                return this.fee_gold;
            }

            public String getFee_num() {
                return this.fee_num;
            }

            public List<String> getImage() {
                return this.image;
            }

            public String getIs_certification() {
                return this.is_certification;
            }

            public int getIs_collect() {
                return this.is_collect;
            }

            public int getIs_exclusive_vip() {
                return this.is_exclusive_vip;
            }

            public int getIs_pay() {
                return this.is_pay;
            }

            public int getIs_vip() {
                return this.is_vip;
            }

            public String getNickname() {
                return this.nickname;
            }

            public String getNum() {
                return this.num;
            }

            public String getPhone() {
                return this.phone;
            }

            public String getPrice() {
                return this.price;
            }

            public String getQq() {
                return this.qq;
            }

            public String getRead_num() {
                return this.read_num;
            }

            public int getRelation() {
                return this.relation;
            }

            public List<Tag_idEntity> getTag_id() {
                return this.tag_id;
            }

            public String getTitle() {
                return this.title;
            }

            public int getTotal_post() {
                return this.total_post;
            }

            public String getUser_id() {
                return this.user_id;
            }

            public int getUser_is_vip() {
                return this.user_is_vip;
            }

            public String getVip_unlock_num() {
                return this.vip_unlock_num;
            }

            public String getWechat() {
                return this.wechat;
            }

            public void setAge(String str) {
                this.age = str;
            }

            public void setArea_id(String str) {
                this.area_id = str;
            }

            public void setArea_name(String str) {
                this.area_name = str;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setBase64_txt(List<String> list) {
                this.base64_txt = list;
            }

            public void setComment_num(String str) {
                this.comment_num = str;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCreate_at(String str) {
                this.create_at = str;
            }

            public void setDescription(String str) {
                this.description = str;
            }

            public void setFee_gold(String str) {
                this.fee_gold = str;
            }

            public void setFee_num(String str) {
                this.fee_num = str;
            }

            public void setImage(List<String> list) {
                this.image = list;
            }

            public void setIs_certification(String str) {
                this.is_certification = str;
            }

            public void setIs_collect(int i2) {
                this.is_collect = i2;
            }

            public void setIs_exclusive_vip(int i2) {
                this.is_exclusive_vip = i2;
            }

            public void setIs_pay(int i2) {
                this.is_pay = i2;
            }

            public void setIs_vip(int i2) {
                this.is_vip = i2;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setNum(String str) {
                this.num = str;
            }

            public void setPhone(String str) {
                this.phone = str;
            }

            public void setPrice(String str) {
                this.price = str;
            }

            public void setQq(String str) {
                this.qq = str;
            }

            public void setRead_num(String str) {
                this.read_num = str;
            }

            public void setRelation(int i2) {
                this.relation = i2;
            }

            public void setTag_id(List<Tag_idEntity> list) {
                this.tag_id = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setTotal_post(int i2) {
                this.total_post = i2;
            }

            public void setUser_id(String str) {
                this.user_id = str;
            }

            public void setUser_is_vip(int i2) {
                this.user_is_vip = i2;
            }

            public void setVip_unlock_num(String str) {
                this.vip_unlock_num = str;
            }

            public void setWechat(String str) {
                this.wechat = str;
            }
        }

        public DataEntity() {
        }

        public InfoEntity getInfo() {
            return this.info;
        }

        public void setInfo(InfoEntity infoEntity) {
            this.info = infoEntity;
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

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
