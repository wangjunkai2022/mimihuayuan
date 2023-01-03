package com.comeback.data.ui.hgl.bean;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ListBean extends j {
    public DataBean data;
    public String msg;
    public int ret;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int code;
        public List<InfoBean> info;
        public String msg;

        /* loaded from: classes.dex */
        public static class InfoBean {
            public List<ListBeanS> list;

            /* loaded from: classes.dex */
            public static class ListBeanS {
                public String anyway;
                public String avatar;
                public String avatar_thumb;
                public String city;
                public String game;
                public String game_action;
                public String goodnum;
                public String hotpostion;
                public String isvideo;
                public String level_anchor;
                public String nums;
                public String pull;
                public String stream;
                public String thumb;
                public String title;
                public String type_money;
                public String type_money_val;
                public String type_pass;
                public String type_pass_val;
                public String type_super_vip;
                public String uid;
                public String user_nicename;
                public String votestotal;

                public String getAnyway() {
                    return this.anyway;
                }

                public String getAvatar() {
                    return this.avatar;
                }

                public String getAvatar_thumb() {
                    return this.avatar_thumb;
                }

                public String getCity() {
                    return this.city;
                }

                public String getGame() {
                    return this.game;
                }

                public String getGame_action() {
                    return this.game_action;
                }

                public String getGoodnum() {
                    return this.goodnum;
                }

                public String getHotpostion() {
                    return this.hotpostion;
                }

                public String getIsvideo() {
                    return this.isvideo;
                }

                public String getLevel_anchor() {
                    return this.level_anchor;
                }

                public String getNums() {
                    return a.n(new StringBuilder(), this.nums, "F4f/zIzvsg==");
                }

                public String getPull() {
                    return this.pull;
                }

                public String getStream() {
                    return this.stream;
                }

                public String getThumb() {
                    return this.thumb;
                }

                public String getTitle() {
                    return this.title;
                }

                public String getType_money() {
                    return this.type_money;
                }

                public String getType_money_val() {
                    return this.type_money_val;
                }

                public String getType_pass() {
                    return this.type_pass;
                }

                public String getType_pass_val() {
                    return this.type_pass_val;
                }

                public String getType_super_vip() {
                    return this.type_super_vip;
                }

                public String getUid() {
                    return this.uid;
                }

                public String getUser_nicename() {
                    return this.user_nicename;
                }

                public String getVotestotal() {
                    return this.votestotal;
                }

                public void setAnyway(String str) {
                    this.anyway = str;
                }

                public void setAvatar(String str) {
                    this.avatar = str;
                }

                public void setAvatar_thumb(String str) {
                    this.avatar_thumb = str;
                }

                public void setCity(String str) {
                    this.city = str;
                }

                public void setGame(String str) {
                    this.game = str;
                }

                public void setGame_action(String str) {
                    this.game_action = str;
                }

                public void setGoodnum(String str) {
                    this.goodnum = str;
                }

                public void setHotpostion(String str) {
                    this.hotpostion = str;
                }

                public void setIsvideo(String str) {
                    this.isvideo = str;
                }

                public void setLevel_anchor(String str) {
                    this.level_anchor = str;
                }

                public void setNums(String str) {
                    this.nums = str;
                }

                public void setPull(String str) {
                    this.pull = str;
                }

                public void setStream(String str) {
                    this.stream = str;
                }

                public void setThumb(String str) {
                    this.thumb = str;
                }

                public void setTitle(String str) {
                    this.title = str;
                }

                public void setType_money(String str) {
                    this.type_money = str;
                }

                public void setType_money_val(String str) {
                    this.type_money_val = str;
                }

                public void setType_pass(String str) {
                    this.type_pass = str;
                }

                public void setType_pass_val(String str) {
                    this.type_pass_val = str;
                }

                public void setType_super_vip(String str) {
                    this.type_super_vip = str;
                }

                public void setUid(String str) {
                    this.uid = str;
                }

                public void setUser_nicename(String str) {
                    this.user_nicename = str;
                }

                public void setVotestotal(String str) {
                    this.votestotal = str;
                }
            }

            public List<ListBeanS> getList() {
                Iterator<ListBeanS> it = this.list.iterator();
                while (it.hasNext()) {
                    ListBeanS next = it.next();
                    if (next.getUser_nicename().contains(e.a("0cHog+L/")) || next.getUser_nicename().contains(e.a("3uXyjOHC"))) {
                        it.remove();
                    }
                }
                return this.list;
            }

            public void setList(List<ListBeanS> list) {
                this.list = list;
            }
        }

        public int getCode() {
            return this.code;
        }

        public List<InfoBean> getInfo() {
            return this.info;
        }

        public String getMsg() {
            return this.msg;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setInfo(List<InfoBean> list) {
            this.info = list;
        }

        public void setMsg(String str) {
            this.msg = str;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getRet() {
        return this.ret;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRet(int i2) {
        this.ret = i2;
    }
}
