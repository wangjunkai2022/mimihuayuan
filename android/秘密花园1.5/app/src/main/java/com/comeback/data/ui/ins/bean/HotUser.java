package com.comeback.data.ui.ins.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class HotUser extends k {
    public String code;
    public DataEntity data;
    public String message;
    public boolean success;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int firstIndex;
        public boolean hasNextPage;
        public boolean hasPrePage;
        public int lastIndex;
        public int limit;
        public int nextPage;
        public int nextPageNum;
        public int pageNum;
        public int pageSize;
        public int prePage;
        public int prePageNum;
        public List<ResultListEntity> resultList;
        public int skip;
        public int total;
        public int totalPageNum;

        /* loaded from: classes.dex */
        public class ResultListEntity {
            public boolean follow;
            public boolean hasUnreadSnap;
            public String headImgUrl;
            public String headImgUrlv;
            public String heat;
            public String igtvNum;
            public String sign;
            public String userId;
            public UserPrivacyEntity userPrivacy;
            public String username;
            public int vipLevel;

            /* loaded from: classes.dex */
            public class UserPrivacyEntity {
                public int dontRecommendFriends;
                public int locationHidePosts;
                public int onlyFollowComment;

                public UserPrivacyEntity() {
                }

                public int getDontRecommendFriends() {
                    return this.dontRecommendFriends;
                }

                public int getLocationHidePosts() {
                    return this.locationHidePosts;
                }

                public int getOnlyFollowComment() {
                    return this.onlyFollowComment;
                }

                public void setDontRecommendFriends(int i2) {
                    this.dontRecommendFriends = i2;
                }

                public void setLocationHidePosts(int i2) {
                    this.locationHidePosts = i2;
                }

                public void setOnlyFollowComment(int i2) {
                    this.onlyFollowComment = i2;
                }
            }

            public ResultListEntity() {
            }

            public String getHeadImgUrl() {
                return this.headImgUrl;
            }

            public String getHeadImgUrlv() {
                return this.headImgUrlv;
            }

            public String getHeat() {
                return this.heat;
            }

            public String getIgtvNum() {
                return this.igtvNum;
            }

            public String getSign() {
                return this.sign;
            }

            public String getUserId() {
                return this.userId;
            }

            public UserPrivacyEntity getUserPrivacy() {
                return this.userPrivacy;
            }

            public String getUsername() {
                return this.username;
            }

            public int getVipLevel() {
                return this.vipLevel;
            }

            public boolean isFollow() {
                return this.follow;
            }

            public boolean isHasUnreadSnap() {
                return this.hasUnreadSnap;
            }

            public void setFollow(boolean z) {
                this.follow = z;
            }

            public void setHasUnreadSnap(boolean z) {
                this.hasUnreadSnap = z;
            }

            public void setHeadImgUrl(String str) {
                this.headImgUrl = str;
            }

            public void setHeadImgUrlv(String str) {
                this.headImgUrlv = str;
            }

            public void setHeat(String str) {
                this.heat = str;
            }

            public void setIgtvNum(String str) {
                this.igtvNum = str;
            }

            public void setSign(String str) {
                this.sign = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setUserPrivacy(UserPrivacyEntity userPrivacyEntity) {
                this.userPrivacy = userPrivacyEntity;
            }

            public void setUsername(String str) {
                this.username = str;
            }

            public void setVipLevel(int i2) {
                this.vipLevel = i2;
            }
        }

        public DataEntity() {
        }

        public int getFirstIndex() {
            return this.firstIndex;
        }

        public int getLastIndex() {
            return this.lastIndex;
        }

        public int getLimit() {
            return this.limit;
        }

        public int getNextPage() {
            return this.nextPage;
        }

        public int getNextPageNum() {
            return this.nextPageNum;
        }

        public int getPageNum() {
            return this.pageNum;
        }

        public int getPageSize() {
            return this.pageSize;
        }

        public int getPrePage() {
            return this.prePage;
        }

        public int getPrePageNum() {
            return this.prePageNum;
        }

        public List<ResultListEntity> getResultList() {
            return this.resultList;
        }

        public int getSkip() {
            return this.skip;
        }

        public int getTotal() {
            return this.total;
        }

        public int getTotalPageNum() {
            return this.totalPageNum;
        }

        public boolean isHasNextPage() {
            return this.hasNextPage;
        }

        public boolean isHasPrePage() {
            return this.hasPrePage;
        }

        public void setFirstIndex(int i2) {
            this.firstIndex = i2;
        }

        public void setHasNextPage(boolean z) {
            this.hasNextPage = z;
        }

        public void setHasPrePage(boolean z) {
            this.hasPrePage = z;
        }

        public void setLastIndex(int i2) {
            this.lastIndex = i2;
        }

        public void setLimit(int i2) {
            this.limit = i2;
        }

        public void setNextPage(int i2) {
            this.nextPage = i2;
        }

        public void setNextPageNum(int i2) {
            this.nextPageNum = i2;
        }

        public void setPageNum(int i2) {
            this.pageNum = i2;
        }

        public void setPageSize(int i2) {
            this.pageSize = i2;
        }

        public void setPrePage(int i2) {
            this.prePage = i2;
        }

        public void setPrePageNum(int i2) {
            this.prePageNum = i2;
        }

        public void setResultList(List<ResultListEntity> list) {
            this.resultList = list;
        }

        public void setSkip(int i2) {
            this.skip = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }

        public void setTotalPageNum(int i2) {
            this.totalPageNum = i2;
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

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
