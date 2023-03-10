package com.comeback.data.ui.km2.bean;

import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class MMList extends k {
    public int code;
    public DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<ListEntity> list;

        /* loaded from: classes.dex */
        public class ListEntity {
            public String base64_txt;
            public String content;
            public String create_at;
            public String fee_num;
            public String id;
            public String image;
            public String nickname;
            public String read_num;
            public List<Tag_idEntity> tag_id;
            public String title;
            public int tol_image;
            public int type;
            public String user_id;

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

            public ListEntity() {
            }

            public String getBase64_txt() {
                return this.base64_txt;
            }

            public String getContent() {
                return this.content;
            }

            public String getCreate_at() {
                return this.create_at;
            }

            public String getFee_num() {
                return this.fee_num;
            }

            public String getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public String getNickname() {
                return this.nickname;
            }

            public String getRead_num() {
                return this.read_num;
            }

            public List<Tag_idEntity> getTag_id() {
                return this.tag_id;
            }

            public String getTitle() {
                return this.title;
            }

            public int getTol_image() {
                return this.tol_image;
            }

            public int getType() {
                return this.type;
            }

            public String getUser_id() {
                return this.user_id;
            }

            public boolean isAd() {
                return this.type == 2;
            }

            public void setBase64_txt(String str) {
                this.base64_txt = str;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCreate_at(String str) {
                this.create_at = str;
            }

            public void setFee_num(String str) {
                this.fee_num = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setRead_num(String str) {
                this.read_num = str;
            }

            public void setTag_id(List<Tag_idEntity> list) {
                this.tag_id = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setTol_image(int i2) {
                this.tol_image = i2;
            }

            public void setType(int i2) {
                this.type = i2;
            }

            public void setUser_id(String str) {
                this.user_id = str;
            }
        }

        public DataEntity() {
        }

        public List<ListEntity> getList() {
            Iterator<ListEntity> it = this.list.iterator();
            while (it.hasNext()) {
                if (it.next().isAd()) {
                    it.remove();
                }
            }
            return this.list;
        }

        public void setList(List<ListEntity> list) {
            this.list = list;
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
