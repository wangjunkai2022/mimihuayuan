package com.comeback.data.ui.ins.bean;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ImageList extends k {
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
            public String addrName;
            public int auditStatus;
            public String cityCode;
            public String cityName;
            public int closeComment;
            public int collectNum;
            public int collectNumFake;
            public String commentId;
            public int commentNum;
            public String content;
            public long createTimestamp;
            public List<FileListEntity> fileList;
            public String isCollect;
            public String isThumbup;
            public String lat;
            public String lng;
            public int newScore;
            public String payAmount;
            public int payNum;
            public double payTotalAmount;
            public double playTourAmount;
            public int playTourNum;
            public String postCommentList;
            public String postId;
            public String provCode;
            public String provName;
            public int readingCount;
            public int readingCountFake;
            public String replyId;
            public int sharedLinksNum;
            public String stateCode;
            public String stateName;
            public int status;
            public String subscriptionPrice;
            public int thumbupNum;
            public int thumbupNumFake;
            public String title;
            public int type;
            public long updateTimestamp;
            public String userId;
            public UserInfoEntity userInfo;
            public boolean vipFlag;
            public String visitsNum;
            public boolean whetherPay;
            public boolean whetherPreheating;
            public boolean whetherSubscription;

            /* loaded from: classes.dex */
            public class FileListEntity {
                public String blurredUrl;
                public String coverUrl;
                public String duration;
                public String fileId;
                public String lastReadUserHeadImgUrl;
                public String lastReadUserId;
                public boolean read;
                public int readingCount;
                public int type;
                public String url;

                public FileListEntity() {
                }

                public String getBlurredUrl() {
                    return this.blurredUrl;
                }

                public String getCoverUrl() {
                    return a.n(new StringBuilder(), this.coverUrl, "GRYbEA==");
                }

                public String getDuration() {
                    return this.duration;
                }

                public String getFileId() {
                    return this.fileId;
                }

                public String getLastReadUserHeadImgUrl() {
                    return this.lastReadUserHeadImgUrl;
                }

                public String getLastReadUserId() {
                    return this.lastReadUserId;
                }

                public int getReadingCount() {
                    return this.readingCount;
                }

                public int getType() {
                    return this.type;
                }

                public String getUrl() {
                    return this.url;
                }

                public boolean isRead() {
                    return this.read;
                }

                public void setBlurredUrl(String str) {
                    this.blurredUrl = str;
                }

                public void setCoverUrl(String str) {
                    this.coverUrl = str;
                }

                public void setDuration(String str) {
                    this.duration = str;
                }

                public void setFileId(String str) {
                    this.fileId = str;
                }

                public void setLastReadUserHeadImgUrl(String str) {
                    this.lastReadUserHeadImgUrl = str;
                }

                public void setLastReadUserId(String str) {
                    this.lastReadUserId = str;
                }

                public void setRead(boolean z) {
                    this.read = z;
                }

                public void setReadingCount(int i2) {
                    this.readingCount = i2;
                }

                public void setType(int i2) {
                    this.type = i2;
                }

                public void setUrl(String str) {
                    this.url = str;
                }
            }

            /* loaded from: classes.dex */
            public class UserInfoEntity {
                public boolean follow;
                public boolean hasUnreadSnap;
                public String headImgUrl;
                public String headImgUrlv;
                public String nickname;
                public String sign;
                public String subscriptionPrice;
                public List<?> userFlagList;
                public String userId;
                public UserPrivacyEntity userPrivacy;
                public String username;
                public String vipEndTime;
                public int vipLevel;
                public String vipStartTime;

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

                public UserInfoEntity() {
                }

                public String getHeadImgUrl() {
                    return a.n(new StringBuilder(), this.headImgUrl, "GRYbEA==");
                }

                public String getHeadImgUrlv() {
                    return this.headImgUrlv;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public String getSign() {
                    return this.sign;
                }

                public String getSubscriptionPrice() {
                    return this.subscriptionPrice;
                }

                public List<?> getUserFlagList() {
                    return this.userFlagList;
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

                public String getVipEndTime() {
                    return this.vipEndTime;
                }

                public int getVipLevel() {
                    return this.vipLevel;
                }

                public String getVipStartTime() {
                    return this.vipStartTime;
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

                public void setNickname(String str) {
                    this.nickname = str;
                }

                public void setSign(String str) {
                    this.sign = str;
                }

                public void setSubscriptionPrice(String str) {
                    this.subscriptionPrice = str;
                }

                public void setUserFlagList(List<?> list) {
                    this.userFlagList = list;
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

                public void setVipEndTime(String str) {
                    this.vipEndTime = str;
                }

                public void setVipLevel(int i2) {
                    this.vipLevel = i2;
                }

                public void setVipStartTime(String str) {
                    this.vipStartTime = str;
                }
            }

            public ResultListEntity() {
            }

            public String getAddrName() {
                return this.addrName;
            }

            public ArrayList<String> getAllFile() {
                ArrayList<String> arrayList = new ArrayList<>();
                for (FileListEntity fileListEntity : this.fileList) {
                    if (!TextUtils.isEmpty(fileListEntity.getCoverUrl())) {
                        arrayList.add(fileListEntity.getCoverUrl());
                    }
                }
                return arrayList;
            }

            public int getAuditStatus() {
                return this.auditStatus;
            }

            public String getCityCode() {
                return this.cityCode;
            }

            public String getCityName() {
                return this.cityName;
            }

            public int getCloseComment() {
                return this.closeComment;
            }

            public int getCollectNum() {
                return this.collectNum;
            }

            public int getCollectNumFake() {
                return this.collectNumFake;
            }

            public String getCommentId() {
                return this.commentId;
            }

            public int getCommentNum() {
                return this.commentNum;
            }

            public String getContent() {
                return this.content;
            }

            public long getCreateTimestamp() {
                return this.createTimestamp;
            }

            public List<FileListEntity> getFileList() {
                return this.fileList;
            }

            public String getIsCollect() {
                return this.isCollect;
            }

            public String getIsThumbup() {
                return this.isThumbup;
            }

            public String getLat() {
                return this.lat;
            }

            public String getLng() {
                return this.lng;
            }

            public int getNewScore() {
                return this.newScore;
            }

            public String getPayAmount() {
                return this.payAmount;
            }

            public int getPayNum() {
                return this.payNum;
            }

            public double getPayTotalAmount() {
                return this.payTotalAmount;
            }

            public double getPlayTourAmount() {
                return this.playTourAmount;
            }

            public int getPlayTourNum() {
                return this.playTourNum;
            }

            public String getPostCommentList() {
                return this.postCommentList;
            }

            public String getPostId() {
                return this.postId;
            }

            public String getProvCode() {
                return this.provCode;
            }

            public String getProvName() {
                return this.provName;
            }

            public int getReadingCount() {
                return this.readingCount;
            }

            public int getReadingCountFake() {
                return this.readingCountFake;
            }

            public String getReplyId() {
                return this.replyId;
            }

            public int getSharedLinksNum() {
                return this.sharedLinksNum;
            }

            public String getStateCode() {
                return this.stateCode;
            }

            public String getStateName() {
                return this.stateName;
            }

            public int getStatus() {
                return this.status;
            }

            public String getSubscriptionPrice() {
                return this.subscriptionPrice;
            }

            public int getThumbupNum() {
                return this.thumbupNum;
            }

            public int getThumbupNumFake() {
                return this.thumbupNumFake;
            }

            public String getTitle() {
                return this.title;
            }

            public int getType() {
                return this.type;
            }

            public long getUpdateTimestamp() {
                return this.updateTimestamp;
            }

            public String getUserId() {
                return this.userId;
            }

            public UserInfoEntity getUserInfo() {
                return this.userInfo;
            }

            public String getVisitsNum() {
                return this.visitsNum;
            }

            public boolean isVipFlag() {
                return this.vipFlag;
            }

            public boolean isWhetherPay() {
                return this.whetherPay;
            }

            public boolean isWhetherPreheating() {
                return this.whetherPreheating;
            }

            public boolean isWhetherSubscription() {
                return this.whetherSubscription;
            }

            public void setAddrName(String str) {
                this.addrName = str;
            }

            public void setAuditStatus(int i2) {
                this.auditStatus = i2;
            }

            public void setCityCode(String str) {
                this.cityCode = str;
            }

            public void setCityName(String str) {
                this.cityName = str;
            }

            public void setCloseComment(int i2) {
                this.closeComment = i2;
            }

            public void setCollectNum(int i2) {
                this.collectNum = i2;
            }

            public void setCollectNumFake(int i2) {
                this.collectNumFake = i2;
            }

            public void setCommentId(String str) {
                this.commentId = str;
            }

            public void setCommentNum(int i2) {
                this.commentNum = i2;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCreateTimestamp(long j2) {
                this.createTimestamp = j2;
            }

            public void setFileList(List<FileListEntity> list) {
                this.fileList = list;
            }

            public void setIsCollect(String str) {
                this.isCollect = str;
            }

            public void setIsThumbup(String str) {
                this.isThumbup = str;
            }

            public void setLat(String str) {
                this.lat = str;
            }

            public void setLng(String str) {
                this.lng = str;
            }

            public void setNewScore(int i2) {
                this.newScore = i2;
            }

            public void setPayAmount(String str) {
                this.payAmount = str;
            }

            public void setPayNum(int i2) {
                this.payNum = i2;
            }

            public void setPayTotalAmount(double d2) {
                this.payTotalAmount = d2;
            }

            public void setPlayTourAmount(double d2) {
                this.playTourAmount = d2;
            }

            public void setPlayTourNum(int i2) {
                this.playTourNum = i2;
            }

            public void setPostCommentList(String str) {
                this.postCommentList = str;
            }

            public void setPostId(String str) {
                this.postId = str;
            }

            public void setProvCode(String str) {
                this.provCode = str;
            }

            public void setProvName(String str) {
                this.provName = str;
            }

            public void setReadingCount(int i2) {
                this.readingCount = i2;
            }

            public void setReadingCountFake(int i2) {
                this.readingCountFake = i2;
            }

            public void setReplyId(String str) {
                this.replyId = str;
            }

            public void setSharedLinksNum(int i2) {
                this.sharedLinksNum = i2;
            }

            public void setStateCode(String str) {
                this.stateCode = str;
            }

            public void setStateName(String str) {
                this.stateName = str;
            }

            public void setStatus(int i2) {
                this.status = i2;
            }

            public void setSubscriptionPrice(String str) {
                this.subscriptionPrice = str;
            }

            public void setThumbupNum(int i2) {
                this.thumbupNum = i2;
            }

            public void setThumbupNumFake(int i2) {
                this.thumbupNumFake = i2;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setType(int i2) {
                this.type = i2;
            }

            public void setUpdateTimestamp(long j2) {
                this.updateTimestamp = j2;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setUserInfo(UserInfoEntity userInfoEntity) {
                this.userInfo = userInfoEntity;
            }

            public void setVipFlag(boolean z) {
                this.vipFlag = z;
            }

            public void setVisitsNum(String str) {
                this.visitsNum = str;
            }

            public void setWhetherPay(boolean z) {
                this.whetherPay = z;
            }

            public void setWhetherPreheating(boolean z) {
                this.whetherPreheating = z;
            }

            public void setWhetherSubscription(boolean z) {
                this.whetherSubscription = z;
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
