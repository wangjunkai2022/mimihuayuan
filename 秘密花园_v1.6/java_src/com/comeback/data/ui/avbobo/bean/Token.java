package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class Token extends k {
    public AppConfigBean appConfig;
    public TokensBean tokens;
    public UserBean user;

    /* loaded from: classes.dex */
    public static class AppConfigBean {
        public String _id;

        /* renamed from: android  reason: collision with root package name */
        public AndroidBean f183android;
        public CdnConfigBean cdnConfig;
        public String codePushUrl;
        public String comicAndroidInstallUrl;
        public String comicIosInstallUrl;
        public List<DefaultSearchKeywordBean> defaultSearchKeyword;
        public String getJpMovieDataUrl;
        public IosBean ios;
        public String potato;
        public String pushUrl;
        public String shareUrl;
        public List<String> tips;
        public String type;
        public String updateServerUrl;

        /* loaded from: classes.dex */
        public static class AndroidBean {
        }

        /* loaded from: classes.dex */
        public static class CdnConfigBean {
            public String first;
            public List<?> meCdns;
            public List<String> otherCdns;

            public String getFirst() {
                return this.first;
            }

            public List<?> getMeCdns() {
                return this.meCdns;
            }

            public List<String> getOtherCdns() {
                return this.otherCdns;
            }

            public void setFirst(String str) {
                this.first = str;
            }

            public void setMeCdns(List<?> list) {
                this.meCdns = list;
            }

            public void setOtherCdns(List<String> list) {
                this.otherCdns = list;
            }
        }

        /* loaded from: classes.dex */
        public static class DefaultSearchKeywordBean {
            public String desc;
            public String keyword;
            public String type;

            public String getDesc() {
                return this.desc;
            }

            public String getKeyword() {
                return this.keyword;
            }

            public String getType() {
                return this.type;
            }

            public void setDesc(String str) {
                this.desc = str;
            }

            public void setKeyword(String str) {
                this.keyword = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        /* loaded from: classes.dex */
        public static class IosBean {

            /* loaded from: classes.dex */
            public static class AppShowHuluwaBean {
            }
        }

        public AndroidBean getAndroid() {
            return this.f183android;
        }

        public CdnConfigBean getCdnConfig() {
            return this.cdnConfig;
        }

        public String getCodePushUrl() {
            return this.codePushUrl;
        }

        public String getComicAndroidInstallUrl() {
            return this.comicAndroidInstallUrl;
        }

        public String getComicIosInstallUrl() {
            return this.comicIosInstallUrl;
        }

        public List<DefaultSearchKeywordBean> getDefaultSearchKeyword() {
            return this.defaultSearchKeyword;
        }

        public String getGetJpMovieDataUrl() {
            return this.getJpMovieDataUrl;
        }

        public IosBean getIos() {
            return this.ios;
        }

        public String getPotato() {
            return this.potato;
        }

        public String getPushUrl() {
            return this.pushUrl;
        }

        public String getShareUrl() {
            return this.shareUrl;
        }

        public List<String> getTips() {
            return this.tips;
        }

        public String getType() {
            return this.type;
        }

        public String getUpdateServerUrl() {
            return this.updateServerUrl;
        }

        public String get_id() {
            return this._id;
        }

        public void setAndroid(AndroidBean androidBean) {
            this.f183android = androidBean;
        }

        public void setCdnConfig(CdnConfigBean cdnConfigBean) {
            this.cdnConfig = cdnConfigBean;
        }

        public void setCodePushUrl(String str) {
            this.codePushUrl = str;
        }

        public void setComicAndroidInstallUrl(String str) {
            this.comicAndroidInstallUrl = str;
        }

        public void setComicIosInstallUrl(String str) {
            this.comicIosInstallUrl = str;
        }

        public void setDefaultSearchKeyword(List<DefaultSearchKeywordBean> list) {
            this.defaultSearchKeyword = list;
        }

        public void setGetJpMovieDataUrl(String str) {
            this.getJpMovieDataUrl = str;
        }

        public void setIos(IosBean iosBean) {
            this.ios = iosBean;
        }

        public void setPotato(String str) {
            this.potato = str;
        }

        public void setPushUrl(String str) {
            this.pushUrl = str;
        }

        public void setShareUrl(String str) {
            this.shareUrl = str;
        }

        public void setTips(List<String> list) {
            this.tips = list;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setUpdateServerUrl(String str) {
            this.updateServerUrl = str;
        }

        public void set_id(String str) {
            this._id = str;
        }
    }

    /* loaded from: classes.dex */
    public static class TokensBean {
        public LoginTokenBean loginToken;
        public TokenBean token;

        /* loaded from: classes.dex */
        public static class LoginTokenBean {
        }

        /* loaded from: classes.dex */
        public static class TokenBean {
            public String token;
            public String type;

            public String getToken() {
                return this.token;
            }

            public String getType() {
                return this.type;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setType(String str) {
                this.type = str;
            }
        }

        public LoginTokenBean getLoginToken() {
            return this.loginToken;
        }

        public TokenBean getToken() {
            return this.token;
        }

        public void setLoginToken(LoginTokenBean loginTokenBean) {
            this.loginToken = loginTokenBean;
        }

        public void setToken(TokenBean tokenBean) {
            this.token = tokenBean;
        }
    }

    /* loaded from: classes.dex */
    public static class UserBean {
        public String _id;
        public boolean ban;
        public boolean beforeRegFlag;
        public String code;
        public boolean commentBan;
        public String createTime;
        public DeviceBangBean deviceBang;
        public boolean invited;
        public LastLoginDeviceBean lastLoginDevice;
        public int level;
        public MobileBangBean mobileBang;
        public String platform;
        public String pushManId;
        public String regType;
        public String type;
        public String userCreateTime;
        public boolean vip;

        /* loaded from: classes.dex */
        public static class DeviceBangBean {
            public String fingerprint;
            public String regDeviceIp;

            public String getFingerprint() {
                return this.fingerprint;
            }

            public String getRegDeviceIp() {
                return this.regDeviceIp;
            }

            public void setFingerprint(String str) {
                this.fingerprint = str;
            }

            public void setRegDeviceIp(String str) {
                this.regDeviceIp = str;
            }
        }

        /* loaded from: classes.dex */
        public static class LastLoginDeviceBean {
            public String deviceId;
            public String deviceSystemName;

            public String getDeviceId() {
                return this.deviceId;
            }

            public String getDeviceSystemName() {
                return this.deviceSystemName;
            }

            public void setDeviceId(String str) {
                this.deviceId = str;
            }

            public void setDeviceSystemName(String str) {
                this.deviceSystemName = str;
            }
        }

        /* loaded from: classes.dex */
        public static class MobileBangBean {
            public String loginId;

            public String getLoginId() {
                return this.loginId;
            }

            public void setLoginId(String str) {
                this.loginId = str;
            }
        }

        public String getCode() {
            return this.code;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public DeviceBangBean getDeviceBang() {
            return this.deviceBang;
        }

        public LastLoginDeviceBean getLastLoginDevice() {
            return this.lastLoginDevice;
        }

        public int getLevel() {
            return this.level;
        }

        public MobileBangBean getMobileBang() {
            return this.mobileBang;
        }

        public String getPlatform() {
            return this.platform;
        }

        public String getPushManId() {
            return this.pushManId;
        }

        public String getRegType() {
            return this.regType;
        }

        public String getType() {
            return this.type;
        }

        public String getUserCreateTime() {
            return this.userCreateTime;
        }

        public String get_id() {
            return this._id;
        }

        public boolean isBan() {
            return this.ban;
        }

        public boolean isBeforeRegFlag() {
            return this.beforeRegFlag;
        }

        public boolean isCommentBan() {
            return this.commentBan;
        }

        public boolean isInvited() {
            return this.invited;
        }

        public boolean isVip() {
            return this.vip;
        }

        public void setBan(boolean z) {
            this.ban = z;
        }

        public void setBeforeRegFlag(boolean z) {
            this.beforeRegFlag = z;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setCommentBan(boolean z) {
            this.commentBan = z;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setDeviceBang(DeviceBangBean deviceBangBean) {
            this.deviceBang = deviceBangBean;
        }

        public void setInvited(boolean z) {
            this.invited = z;
        }

        public void setLastLoginDevice(LastLoginDeviceBean lastLoginDeviceBean) {
            this.lastLoginDevice = lastLoginDeviceBean;
        }

        public void setLevel(int i2) {
            this.level = i2;
        }

        public void setMobileBang(MobileBangBean mobileBangBean) {
            this.mobileBang = mobileBangBean;
        }

        public void setPlatform(String str) {
            this.platform = str;
        }

        public void setPushManId(String str) {
            this.pushManId = str;
        }

        public void setRegType(String str) {
            this.regType = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setUserCreateTime(String str) {
            this.userCreateTime = str;
        }

        public void setVip(boolean z) {
            this.vip = z;
        }

        public void set_id(String str) {
            this._id = str;
        }
    }

    public AppConfigBean getAppConfig() {
        return this.appConfig;
    }

    public TokensBean getTokens() {
        return this.tokens;
    }

    public UserBean getUser() {
        return this.user;
    }

    public void setAppConfig(AppConfigBean appConfigBean) {
        this.appConfig = appConfigBean;
    }

    public void setTokens(TokensBean tokensBean) {
        this.tokens = tokensBean;
    }

    public void setUser(UserBean userBean) {
        this.user = userBean;
    }
}
