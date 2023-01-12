package com.comeback.data.ui.ins.bean;

import f.e.a.f.k;

/* loaded from: classes.dex */
public class Config extends k {
    public String code;
    public DataEntity data;
    public String message;
    public ResultMapEntity resultMap;
    public boolean success;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String androidDown;
        public String androidVersion;
        public String generalizeDesc;
        public String generalizeWeal;
        public String h5Domain;
        public String jumpPageUrl;
        public String landingPageUrl;
        public String resourceDomain;
        public String updateCopy;
        public int updateType;
        public String vipPrice;
        public String webDomain;

        public DataEntity() {
        }

        public String getAndroidDown() {
            return this.androidDown;
        }

        public String getAndroidVersion() {
            return this.androidVersion;
        }

        public String getGeneralizeDesc() {
            return this.generalizeDesc;
        }

        public String getGeneralizeWeal() {
            return this.generalizeWeal;
        }

        public String getH5Domain() {
            return this.h5Domain;
        }

        public String getJumpPageUrl() {
            return this.jumpPageUrl;
        }

        public String getLandingPageUrl() {
            return this.landingPageUrl;
        }

        public String getResourceDomain() {
            return this.resourceDomain;
        }

        public String getUpdateCopy() {
            return this.updateCopy;
        }

        public int getUpdateType() {
            return this.updateType;
        }

        public String getVipPrice() {
            return this.vipPrice;
        }

        public String getWebDomain() {
            return this.webDomain;
        }

        public void setAndroidDown(String str) {
            this.androidDown = str;
        }

        public void setAndroidVersion(String str) {
            this.androidVersion = str;
        }

        public void setGeneralizeDesc(String str) {
            this.generalizeDesc = str;
        }

        public void setGeneralizeWeal(String str) {
            this.generalizeWeal = str;
        }

        public void setH5Domain(String str) {
            this.h5Domain = str;
        }

        public void setJumpPageUrl(String str) {
            this.jumpPageUrl = str;
        }

        public void setLandingPageUrl(String str) {
            this.landingPageUrl = str;
        }

        public void setResourceDomain(String str) {
            this.resourceDomain = str;
        }

        public void setUpdateCopy(String str) {
            this.updateCopy = str;
        }

        public void setUpdateType(int i2) {
            this.updateType = i2;
        }

        public void setVipPrice(String str) {
            this.vipPrice = str;
        }

        public void setWebDomain(String str) {
            this.webDomain = str;
        }
    }

    /* loaded from: classes.dex */
    public class ResultMapEntity {
        public ResultMapEntity() {
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public ResultMapEntity getResultMap() {
        return this.resultMap;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResultMap(ResultMapEntity resultMapEntity) {
        this.resultMap = resultMapEntity;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
