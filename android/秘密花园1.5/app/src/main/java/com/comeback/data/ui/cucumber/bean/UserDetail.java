package com.comeback.data.ui.cucumber.bean;

import f.e.a.f.k;
import f.e.a.k.b;
import java.util.List;

/* loaded from: classes.dex */
public class UserDetail extends k {
    public int code;
    public List<DataEntity> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int actorId;
        public int attentionCnt;
        public int attentionState;
        public String bgImageUrl;
        public int fansCnt;
        public int gender;
        public String icon;
        public int isMcn;
        public int isOfficial;
        public boolean isSVIP;
        public int isUper;
        public int isWanghong;
        public int isZhenren;
        public int isZhubo;
        public String myInviteCode;
        public String name;
        public int nvshenTieziId;
        public String nvshenVideoCover;
        public int upedCnt;
        public String userDescs;
        public String userId;

        public DataEntity() {
        }

        public int getActorId() {
            return this.actorId;
        }

        public int getAttentionCnt() {
            return this.attentionCnt;
        }

        public int getAttentionState() {
            return this.attentionState;
        }

        public String getBgImageUrl() {
            return this.bgImageUrl;
        }

        public int getFansCnt() {
            return this.fansCnt;
        }

        public int getGender() {
            return this.gender;
        }

        public String getIcon() {
            return b.Q + this.icon;
        }

        public int getIsMcn() {
            return this.isMcn;
        }

        public int getIsOfficial() {
            return this.isOfficial;
        }

        public int getIsUper() {
            return this.isUper;
        }

        public int getIsWanghong() {
            return this.isWanghong;
        }

        public int getIsZhenren() {
            return this.isZhenren;
        }

        public int getIsZhubo() {
            return this.isZhubo;
        }

        public String getMyInviteCode() {
            return this.myInviteCode;
        }

        public String getName() {
            return this.name;
        }

        public int getNvshenTieziId() {
            return this.nvshenTieziId;
        }

        public String getNvshenVideoCover() {
            return this.nvshenVideoCover;
        }

        public int getUpedCnt() {
            return this.upedCnt;
        }

        public String getUserDescs() {
            return this.userDescs;
        }

        public String getUserId() {
            return this.userId;
        }

        public boolean isIsSVIP() {
            return this.isSVIP;
        }

        public void setActorId(int i2) {
            this.actorId = i2;
        }

        public void setAttentionCnt(int i2) {
            this.attentionCnt = i2;
        }

        public void setAttentionState(int i2) {
            this.attentionState = i2;
        }

        public void setBgImageUrl(String str) {
            this.bgImageUrl = str;
        }

        public void setFansCnt(int i2) {
            this.fansCnt = i2;
        }

        public void setGender(int i2) {
            this.gender = i2;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setIsMcn(int i2) {
            this.isMcn = i2;
        }

        public void setIsOfficial(int i2) {
            this.isOfficial = i2;
        }

        public void setIsSVIP(boolean z) {
            this.isSVIP = z;
        }

        public void setIsUper(int i2) {
            this.isUper = i2;
        }

        public void setIsWanghong(int i2) {
            this.isWanghong = i2;
        }

        public void setIsZhenren(int i2) {
            this.isZhenren = i2;
        }

        public void setIsZhubo(int i2) {
            this.isZhubo = i2;
        }

        public void setMyInviteCode(String str) {
            this.myInviteCode = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setNvshenTieziId(int i2) {
            this.nvshenTieziId = i2;
        }

        public void setNvshenVideoCover(String str) {
            this.nvshenVideoCover = str;
        }

        public void setUpedCnt(int i2) {
            this.upedCnt = i2;
        }

        public void setUserDescs(String str) {
            this.userDescs = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataEntity> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
