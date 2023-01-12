package com.comeback.data.ui.test.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class TiktopBean extends k {
    public int code;
    public DataBean data;
    public String msg;
    public String seqid;

    /* loaded from: classes.dex */
    public static class DataBean {
        public int engine;
        public boolean more;
        public int pageNum;
        public List<VideosBean> videos;

        /* loaded from: classes.dex */
        public static class VideosBean {
            public boolean allowComment;
            public boolean allowDuet;
            public String challengeTitle;
            public int commentCount;
            public String commentCountStr;
            public String commentDesc;
            public String cover;
            public String coverGif;
            public String duetVideoId;
            public int duration;
            public List<?> entrance;
            public String episodeTitle;
            public String firstFrameImg;
            public int height;
            public int likeCount;
            public String likeCountStr;
            public boolean liked;
            public OwnerBean owner;
            public String ownerId;
            public boolean personal;
            public int playCount;
            public String rdata;
            public int shareCount;
            public String shareCountStr;
            public String subjectId;
            public List<?> sysTag;
            public String title;
            public String url;
            public String vid;
            public double videoRate;
            public int voiceCount;
            public int vrsChecked;
            public int width;

            /* loaded from: classes.dex */
            public static class OwnerBean {
                public String avatar;
                public boolean followed;
                public String nickname;
                public String uuid;

                public String getAvatar() {
                    return this.avatar;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public String getUuid() {
                    return this.uuid;
                }

                public boolean isFollowed() {
                    return this.followed;
                }

                public void setAvatar(String str) {
                    this.avatar = str;
                }

                public void setFollowed(boolean z) {
                    this.followed = z;
                }

                public void setNickname(String str) {
                    this.nickname = str;
                }

                public void setUuid(String str) {
                    this.uuid = str;
                }
            }

            public String getChallengeTitle() {
                return this.challengeTitle;
            }

            public int getCommentCount() {
                return this.commentCount;
            }

            public String getCommentCountStr() {
                return this.commentCountStr;
            }

            public String getCommentDesc() {
                return this.commentDesc;
            }

            public String getCover() {
                return this.cover;
            }

            public String getCoverGif() {
                return this.coverGif;
            }

            public String getDuetVideoId() {
                return this.duetVideoId;
            }

            public int getDuration() {
                return this.duration;
            }

            public List<?> getEntrance() {
                return this.entrance;
            }

            public String getEpisodeTitle() {
                return this.episodeTitle;
            }

            public String getFirstFrameImg() {
                return this.firstFrameImg;
            }

            public int getHeight() {
                return this.height;
            }

            public int getLikeCount() {
                return this.likeCount;
            }

            public String getLikeCountStr() {
                return this.likeCountStr;
            }

            public OwnerBean getOwner() {
                return this.owner;
            }

            public String getOwnerId() {
                return this.ownerId;
            }

            public int getPlayCount() {
                return this.playCount;
            }

            public String getRdata() {
                return this.rdata;
            }

            public int getShareCount() {
                return this.shareCount;
            }

            public String getShareCountStr() {
                return this.shareCountStr;
            }

            public String getSubjectId() {
                return this.subjectId;
            }

            public List<?> getSysTag() {
                return this.sysTag;
            }

            public String getTitle() {
                return this.title;
            }

            public String getUrl() {
                return this.url;
            }

            public String getVid() {
                return this.vid;
            }

            public double getVideoRate() {
                return this.videoRate;
            }

            public int getVoiceCount() {
                return this.voiceCount;
            }

            public int getVrsChecked() {
                return this.vrsChecked;
            }

            public int getWidth() {
                return this.width;
            }

            public boolean isAllowComment() {
                return this.allowComment;
            }

            public boolean isAllowDuet() {
                return this.allowDuet;
            }

            public boolean isLiked() {
                return this.liked;
            }

            public boolean isPersonal() {
                return this.personal;
            }

            public void setAllowComment(boolean z) {
                this.allowComment = z;
            }

            public void setAllowDuet(boolean z) {
                this.allowDuet = z;
            }

            public void setChallengeTitle(String str) {
                this.challengeTitle = str;
            }

            public void setCommentCount(int i2) {
                this.commentCount = i2;
            }

            public void setCommentCountStr(String str) {
                this.commentCountStr = str;
            }

            public void setCommentDesc(String str) {
                this.commentDesc = str;
            }

            public void setCover(String str) {
                this.cover = str;
            }

            public void setCoverGif(String str) {
                this.coverGif = str;
            }

            public void setDuetVideoId(String str) {
                this.duetVideoId = str;
            }

            public void setDuration(int i2) {
                this.duration = i2;
            }

            public void setEntrance(List<?> list) {
                this.entrance = list;
            }

            public void setEpisodeTitle(String str) {
                this.episodeTitle = str;
            }

            public void setFirstFrameImg(String str) {
                this.firstFrameImg = str;
            }

            public void setHeight(int i2) {
                this.height = i2;
            }

            public void setLikeCount(int i2) {
                this.likeCount = i2;
            }

            public void setLikeCountStr(String str) {
                this.likeCountStr = str;
            }

            public void setLiked(boolean z) {
                this.liked = z;
            }

            public void setOwner(OwnerBean ownerBean) {
                this.owner = ownerBean;
            }

            public void setOwnerId(String str) {
                this.ownerId = str;
            }

            public void setPersonal(boolean z) {
                this.personal = z;
            }

            public void setPlayCount(int i2) {
                this.playCount = i2;
            }

            public void setRdata(String str) {
                this.rdata = str;
            }

            public void setShareCount(int i2) {
                this.shareCount = i2;
            }

            public void setShareCountStr(String str) {
                this.shareCountStr = str;
            }

            public void setSubjectId(String str) {
                this.subjectId = str;
            }

            public void setSysTag(List<?> list) {
                this.sysTag = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }

            public void setVid(String str) {
                this.vid = str;
            }

            public void setVideoRate(double d2) {
                this.videoRate = d2;
            }

            public void setVoiceCount(int i2) {
                this.voiceCount = i2;
            }

            public void setVrsChecked(int i2) {
                this.vrsChecked = i2;
            }

            public void setWidth(int i2) {
                this.width = i2;
            }
        }

        public int getEngine() {
            return this.engine;
        }

        public int getPageNum() {
            return this.pageNum;
        }

        public List<VideosBean> getVideos() {
            return this.videos;
        }

        public boolean isMore() {
            return this.more;
        }

        public void setEngine(int i2) {
            this.engine = i2;
        }

        public void setMore(boolean z) {
            this.more = z;
        }

        public void setPageNum(int i2) {
            this.pageNum = i2;
        }

        public void setVideos(List<VideosBean> list) {
            this.videos = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getSeqid() {
        return this.seqid;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSeqid(String str) {
        this.seqid = str;
    }
}
