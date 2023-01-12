package com.comeback.data.ui.ins.bean;

import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends k {
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
            public int closeComment;
            public int collectNum;
            public int collectNumFake;
            public int commentNum;
            public String content;
            public long createTimestamp;
            public List<FileListEntity> fileList;
            public int newScore;
            public int payNum;
            public double payTotalAmount;
            public double playTourAmount;
            public int playTourNum;
            public String postCommentList;
            public String postId;
            public List<PostTagListEntity> postTagList;
            public String provName;
            public int readingCount;
            public int readingCountFake;
            public String replyId;
            public int sharedLinksNum;
            public String stateCode;
            public int status;
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
                public int duration;
                public String fileId;
                public String lastReadUserHeadImgUrl;
                public String lastReadUserId;
                public String postTagUserList;
                public PostVideoFileEntity postVideoFile;
                public boolean read;
                public int readingCount;
                public int type;
                public String url;

                /* loaded from: classes.dex */
                public class PostVideoFileEntity {
                    public String category;
                    public String comefrom;
                    public long createTimestamp;
                    public String filename;
                    public String identifier;
                    public String name;
                    public String overwrite;
                    public PostparamEntity postparam;
                    public String rule;
                    public int status;
                    public long updateTimestamp;
                    public String upload_uid;
                    public String user;
                    public VideoEntity video;

                    /* loaded from: classes.dex */
                    public class PostparamEntity {
                        public String cover;
                        public String download_url;
                        public int duration;
                        public String id;
                        public String part_video;
                        public String play_url;
                        public String preview;
                        public String thumb_hor;
                        public String thumb_longview;
                        public List<?> thumb_series;
                        public String thumb_ver;
                        public String thumbnail;
                        public String webp;
                        public int webp_count;

                        public PostparamEntity() {
                        }

                        public String getCover() {
                            return this.cover;
                        }

                        public String getDownload_url() {
                            return this.download_url;
                        }

                        public int getDuration() {
                            return this.duration;
                        }

                        public String getId() {
                            return this.id;
                        }

                        public String getPart_video() {
                            return this.part_video;
                        }

                        public String getPlay_url() {
                            return this.play_url;
                        }

                        public String getPreview() {
                            return this.preview;
                        }

                        public String getThumb_hor() {
                            return this.thumb_hor;
                        }

                        public String getThumb_longview() {
                            return this.thumb_longview;
                        }

                        public List<?> getThumb_series() {
                            return this.thumb_series;
                        }

                        public String getThumb_ver() {
                            return this.thumb_ver;
                        }

                        public String getThumbnail() {
                            return this.thumbnail;
                        }

                        public String getWebp() {
                            return this.webp;
                        }

                        public int getWebp_count() {
                            return this.webp_count;
                        }

                        public void setCover(String str) {
                            this.cover = str;
                        }

                        public void setDownload_url(String str) {
                            this.download_url = str;
                        }

                        public void setDuration(int i2) {
                            this.duration = i2;
                        }

                        public void setId(String str) {
                            this.id = str;
                        }

                        public void setPart_video(String str) {
                            this.part_video = str;
                        }

                        public void setPlay_url(String str) {
                            this.play_url = str;
                        }

                        public void setPreview(String str) {
                            this.preview = str;
                        }

                        public void setThumb_hor(String str) {
                            this.thumb_hor = str;
                        }

                        public void setThumb_longview(String str) {
                            this.thumb_longview = str;
                        }

                        public void setThumb_series(List<?> list) {
                            this.thumb_series = list;
                        }

                        public void setThumb_ver(String str) {
                            this.thumb_ver = str;
                        }

                        public void setThumbnail(String str) {
                            this.thumbnail = str;
                        }

                        public void setWebp(String str) {
                            this.webp = str;
                        }

                        public void setWebp_count(int i2) {
                            this.webp_count = i2;
                        }
                    }

                    /* loaded from: classes.dex */
                    public class VideoEntity {
                        public String actor;
                        public String cat;
                        public String subcat;
                        public String title;
                        public String uploader;

                        public VideoEntity() {
                        }

                        public String getActor() {
                            return this.actor;
                        }

                        public String getCat() {
                            return this.cat;
                        }

                        public String getSubcat() {
                            return this.subcat;
                        }

                        public String getTitle() {
                            return this.title;
                        }

                        public String getUploader() {
                            return this.uploader;
                        }

                        public void setActor(String str) {
                            this.actor = str;
                        }

                        public void setCat(String str) {
                            this.cat = str;
                        }

                        public void setSubcat(String str) {
                            this.subcat = str;
                        }

                        public void setTitle(String str) {
                            this.title = str;
                        }

                        public void setUploader(String str) {
                            this.uploader = str;
                        }
                    }

                    public PostVideoFileEntity() {
                    }

                    public String getCategory() {
                        return this.category;
                    }

                    public String getComefrom() {
                        return this.comefrom;
                    }

                    public long getCreateTimestamp() {
                        return this.createTimestamp;
                    }

                    public String getFilename() {
                        return this.filename;
                    }

                    public String getIdentifier() {
                        return this.identifier;
                    }

                    public String getName() {
                        return this.name;
                    }

                    public String getOverwrite() {
                        return this.overwrite;
                    }

                    public PostparamEntity getPostparam() {
                        return this.postparam;
                    }

                    public String getRule() {
                        return this.rule;
                    }

                    public int getStatus() {
                        return this.status;
                    }

                    public long getUpdateTimestamp() {
                        return this.updateTimestamp;
                    }

                    public String getUpload_uid() {
                        return this.upload_uid;
                    }

                    public String getUser() {
                        return this.user;
                    }

                    public VideoEntity getVideo() {
                        return this.video;
                    }

                    public void setCategory(String str) {
                        this.category = str;
                    }

                    public void setComefrom(String str) {
                        this.comefrom = str;
                    }

                    public void setCreateTimestamp(long j2) {
                        this.createTimestamp = j2;
                    }

                    public void setFilename(String str) {
                        this.filename = str;
                    }

                    public void setIdentifier(String str) {
                        this.identifier = str;
                    }

                    public void setName(String str) {
                        this.name = str;
                    }

                    public void setOverwrite(String str) {
                        this.overwrite = str;
                    }

                    public void setPostparam(PostparamEntity postparamEntity) {
                        this.postparam = postparamEntity;
                    }

                    public void setRule(String str) {
                        this.rule = str;
                    }

                    public void setStatus(int i2) {
                        this.status = i2;
                    }

                    public void setUpdateTimestamp(long j2) {
                        this.updateTimestamp = j2;
                    }

                    public void setUpload_uid(String str) {
                        this.upload_uid = str;
                    }

                    public void setUser(String str) {
                        this.user = str;
                    }

                    public void setVideo(VideoEntity videoEntity) {
                        this.video = videoEntity;
                    }
                }

                public FileListEntity() {
                }

                public String getBlurredUrl() {
                    return this.blurredUrl;
                }

                public String getCoverUrl() {
                    return this.coverUrl;
                }

                public int getDuration() {
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

                public String getPostTagUserList() {
                    return this.postTagUserList;
                }

                public PostVideoFileEntity getPostVideoFile() {
                    return this.postVideoFile;
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

                public void setDuration(int i2) {
                    this.duration = i2;
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

                public void setPostTagUserList(String str) {
                    this.postTagUserList = str;
                }

                public void setPostVideoFile(PostVideoFileEntity postVideoFileEntity) {
                    this.postVideoFile = postVideoFileEntity;
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
            public class PostTagListEntity {
                public boolean follow;
                public String imgUrl;
                public int isHide;
                public int postNum;
                public int sort;
                public String styleType;
                public String tagCnName;
                public String tagEnName;
                public String tagId;
                public String tagJpName;
                public String tagSearchStat;
                public int tagType;

                public PostTagListEntity() {
                }

                public String getImgUrl() {
                    return this.imgUrl;
                }

                public int getIsHide() {
                    return this.isHide;
                }

                public int getPostNum() {
                    return this.postNum;
                }

                public int getSort() {
                    return this.sort;
                }

                public String getStyleType() {
                    return this.styleType;
                }

                public String getTagCnName() {
                    return this.tagCnName;
                }

                public String getTagEnName() {
                    return this.tagEnName;
                }

                public String getTagId() {
                    return this.tagId;
                }

                public String getTagJpName() {
                    return this.tagJpName;
                }

                public String getTagSearchStat() {
                    return this.tagSearchStat;
                }

                public int getTagType() {
                    return this.tagType;
                }

                public boolean isFollow() {
                    return this.follow;
                }

                public void setFollow(boolean z) {
                    this.follow = z;
                }

                public void setImgUrl(String str) {
                    this.imgUrl = str;
                }

                public void setIsHide(int i2) {
                    this.isHide = i2;
                }

                public void setPostNum(int i2) {
                    this.postNum = i2;
                }

                public void setSort(int i2) {
                    this.sort = i2;
                }

                public void setStyleType(String str) {
                    this.styleType = str;
                }

                public void setTagCnName(String str) {
                    this.tagCnName = str;
                }

                public void setTagEnName(String str) {
                    this.tagEnName = str;
                }

                public void setTagId(String str) {
                    this.tagId = str;
                }

                public void setTagJpName(String str) {
                    this.tagJpName = str;
                }

                public void setTagSearchStat(String str) {
                    this.tagSearchStat = str;
                }

                public void setTagType(int i2) {
                    this.tagType = i2;
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
                public List<UserFlagListEntity> userFlagList;
                public String userId;
                public UserPrivacyEntity userPrivacy;
                public String username;
                public String vipEndTime;
                public int vipLevel;
                public String vipStartTime;

                /* loaded from: classes.dex */
                public class UserFlagListEntity {
                    public String cnName;
                    public String enName;
                    public String id;
                    public String jpName;
                    public String type;

                    public UserFlagListEntity() {
                    }

                    public String getCnName() {
                        return this.cnName;
                    }

                    public String getEnName() {
                        return this.enName;
                    }

                    public String getId() {
                        return this.id;
                    }

                    public String getJpName() {
                        return this.jpName;
                    }

                    public String getType() {
                        return this.type;
                    }

                    public void setCnName(String str) {
                        this.cnName = str;
                    }

                    public void setEnName(String str) {
                        this.enName = str;
                    }

                    public void setId(String str) {
                        this.id = str;
                    }

                    public void setJpName(String str) {
                        this.jpName = str;
                    }

                    public void setType(String str) {
                        this.type = str;
                    }
                }

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
                    return this.headImgUrl;
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

                public List<UserFlagListEntity> getUserFlagList() {
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

                public void setUserFlagList(List<UserFlagListEntity> list) {
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

            public int getAuditStatus() {
                return this.auditStatus;
            }

            public String getCityCode() {
                return this.cityCode;
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

            public int getNewScore() {
                return this.newScore;
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

            public List<PostTagListEntity> getPostTagList() {
                return this.postTagList;
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

            public int getStatus() {
                return this.status;
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

            public void setCloseComment(int i2) {
                this.closeComment = i2;
            }

            public void setCollectNum(int i2) {
                this.collectNum = i2;
            }

            public void setCollectNumFake(int i2) {
                this.collectNumFake = i2;
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

            public void setNewScore(int i2) {
                this.newScore = i2;
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

            public void setPostTagList(List<PostTagListEntity> list) {
                this.postTagList = list;
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

            public void setStatus(int i2) {
                this.status = i2;
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
            Iterator<ResultListEntity> it = this.resultList.iterator();
            while (it.hasNext()) {
                if (it.next().vipFlag) {
                    it.remove();
                }
            }
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
