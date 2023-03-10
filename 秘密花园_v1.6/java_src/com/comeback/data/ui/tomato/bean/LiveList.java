package com.comeback.data.ui.tomato.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class LiveList extends k {
    public List<DataListEntity> dataList;
    public int pageNumber;
    public int pageSize;
    public int totalPageCount;
    public int totalRowsCount;

    /* loaded from: classes.dex */
    public class DataListEntity {
        public LiveEntity live;
        public int type;

        /* loaded from: classes.dex */
        public class LiveEntity {
            public String appId;
            public String avatar;
            public int bluetoothStatus;
            public int chargeType;
            public String coverIdentityUrl;
            public int expGrade;
            public int liveCount;
            public String liveCoverUrl;
            public String liveId;
            public String liveStatus;
            public int liveType;
            public String lowDefinitionPullStreamUrl;
            public String lowDefinitionPullStreamUrlH265;
            public String nickname;
            public int onlineUserCount;
            public String onlineUserCountPeekValue;
            public String openId;
            public String pkAccept;
            public int popularity;
            public String pullStreamUrl;
            public String pullStreamUrlH265;
            public String sex;
            public int startTime;
            public String tag;
            public int ticketPrice;
            public String topic;
            public String userId;
            public String virtualCityNumber;

            public LiveEntity() {
            }

            public String getAppId() {
                return this.appId;
            }

            public String getAvatar() {
                return this.avatar;
            }

            public int getBluetoothStatus() {
                return this.bluetoothStatus;
            }

            public int getChargeType() {
                return this.chargeType;
            }

            public String getCoverIdentityUrl() {
                return this.coverIdentityUrl;
            }

            public String getDefPullStreamUrlStr() {
                List<String> pullStreamUrlList = getPullStreamUrlList();
                return pullStreamUrlList.isEmpty() ? "" : pullStreamUrlList.get(0);
            }

            public int getExpGrade() {
                return this.expGrade;
            }

            public int getLiveCount() {
                return this.liveCount;
            }

            public String getLiveCoverUrl() {
                if (!TextUtils.isEmpty(this.liveCoverUrl) && !this.liveCoverUrl.startsWith(e.a("XxYXFA=="))) {
                    return e.a("XxYXFFFcFlccEVpJDBkFGFVMAAsGXA==") + this.liveCoverUrl;
                }
                return this.liveCoverUrl;
            }

            public String getLiveId() {
                return this.liveId;
            }

            public String getLiveStatus() {
                return this.liveStatus;
            }

            public int getLiveType() {
                return this.liveType;
            }

            public String getLowDefinitionPullStreamUrl() {
                return this.lowDefinitionPullStreamUrl;
            }

            public String getLowDefinitionPullStreamUrlH265() {
                return this.lowDefinitionPullStreamUrlH265;
            }

            public String getNickname() {
                return this.nickname;
            }

            public int getOnlineUserCount() {
                return this.onlineUserCount;
            }

            public String getOnlineUserCountPeekValue() {
                return this.onlineUserCountPeekValue;
            }

            public String getOpenId() {
                return this.openId;
            }

            public String getPkAccept() {
                return this.pkAccept;
            }

            public int getPopularity() {
                return this.popularity;
            }

            public String getPullStreamUrl() {
                return this.pullStreamUrl;
            }

            public String getPullStreamUrlH265() {
                return this.pullStreamUrlH265;
            }

            public List<String> getPullStreamUrlList() {
                if (TextUtils.isEmpty(this.pullStreamUrl)) {
                    return new ArrayList();
                }
                return Arrays.asList(this.pullStreamUrl.split(e.a("Gw==")));
            }

            public String getSex() {
                return this.sex;
            }

            public int getStartTime() {
                return this.startTime;
            }

            public String getTag() {
                return this.tag;
            }

            public int getTicketPrice() {
                return this.ticketPrice;
            }

            public String getTopic() {
                return this.topic;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getVirtualCityNumber() {
                return this.virtualCityNumber;
            }

            public void setAppId(String str) {
                this.appId = str;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setBluetoothStatus(int i2) {
                this.bluetoothStatus = i2;
            }

            public void setChargeType(int i2) {
                this.chargeType = i2;
            }

            public void setCoverIdentityUrl(String str) {
                this.coverIdentityUrl = str;
            }

            public void setExpGrade(int i2) {
                this.expGrade = i2;
            }

            public void setLiveCount(int i2) {
                this.liveCount = i2;
            }

            public void setLiveCoverUrl(String str) {
                this.liveCoverUrl = str;
            }

            public void setLiveId(String str) {
                this.liveId = str;
            }

            public void setLiveStatus(String str) {
                this.liveStatus = str;
            }

            public void setLiveType(int i2) {
                this.liveType = i2;
            }

            public void setLowDefinitionPullStreamUrl(String str) {
                this.lowDefinitionPullStreamUrl = str;
            }

            public void setLowDefinitionPullStreamUrlH265(String str) {
                this.lowDefinitionPullStreamUrlH265 = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setOnlineUserCount(int i2) {
                this.onlineUserCount = i2;
            }

            public void setOnlineUserCountPeekValue(String str) {
                this.onlineUserCountPeekValue = str;
            }

            public void setOpenId(String str) {
                this.openId = str;
            }

            public void setPkAccept(String str) {
                this.pkAccept = str;
            }

            public void setPopularity(int i2) {
                this.popularity = i2;
            }

            public void setPullStreamUrl(String str) {
                this.pullStreamUrl = str;
            }

            public void setPullStreamUrlH265(String str) {
                this.pullStreamUrlH265 = str;
            }

            public void setSex(String str) {
                this.sex = str;
            }

            public void setStartTime(int i2) {
                this.startTime = i2;
            }

            public void setTag(String str) {
                this.tag = str;
            }

            public void setTicketPrice(int i2) {
                this.ticketPrice = i2;
            }

            public void setTopic(String str) {
                this.topic = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setVirtualCityNumber(String str) {
                this.virtualCityNumber = str;
            }
        }

        public DataListEntity() {
        }

        public LiveEntity getLive() {
            return this.live;
        }

        public int getType() {
            return this.type;
        }

        public void setLive(LiveEntity liveEntity) {
            this.live = liveEntity;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    public List<DataListEntity> getDataList() {
        Iterator<DataListEntity> it = this.dataList.iterator();
        while (it.hasNext()) {
            DataListEntity next = it.next();
            if (next.type != 1 || next.live == null || TextUtils.isEmpty(next.live.getPullStreamUrlH265())) {
                it.remove();
            }
        }
        return this.dataList;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getTotalPageCount() {
        return this.totalPageCount;
    }

    public int getTotalRowsCount() {
        return this.totalRowsCount;
    }

    public void setDataList(List<DataListEntity> list) {
        this.dataList = list;
    }

    public void setPageNumber(int i2) {
        this.pageNumber = i2;
    }

    public void setPageSize(int i2) {
        this.pageSize = i2;
    }

    public void setTotalPageCount(int i2) {
        this.totalPageCount = i2;
    }

    public void setTotalRowsCount(int i2) {
        this.totalRowsCount = i2;
    }
}
