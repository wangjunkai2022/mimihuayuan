.class public Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;
.super Ljava/lang/Object;
.source "TiktopBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideosBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;
    }
.end annotation


# instance fields
.field public allowComment:Z

.field public allowDuet:Z

.field public challengeTitle:Ljava/lang/String;

.field public commentCount:I

.field public commentCountStr:Ljava/lang/String;

.field public commentDesc:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public coverGif:Ljava/lang/String;

.field public duetVideoId:Ljava/lang/String;

.field public duration:I

.field public entrance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public episodeTitle:Ljava/lang/String;

.field public firstFrameImg:Ljava/lang/String;

.field public height:I

.field public likeCount:I

.field public likeCountStr:Ljava/lang/String;

.field public liked:Z

.field public owner:Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;

.field public ownerId:Ljava/lang/String;

.field public personal:Z

.field public playCount:I

.field public rdata:Ljava/lang/String;

.field public shareCount:I

.field public shareCountStr:Ljava/lang/String;

.field public subjectId:Ljava/lang/String;

.field public sysTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public videoRate:D

.field public voiceCount:I

.field public vrsChecked:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallengeTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->challengeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentCount:I

    return v0
.end method

.method public getCommentCountStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverGif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->coverGif:Ljava/lang/String;

    return-object v0
.end method

.method public getDuetVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->duetVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->duration:I

    return v0
.end method

.method public getEntrance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->entrance:Ljava/util/List;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->episodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstFrameImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->firstFrameImg:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->height:I

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->likeCount:I

    return v0
.end method

.method public getLikeCountStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->likeCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->owner:Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->playCount:I

    return v0
.end method

.method public getRdata()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->rdata:Ljava/lang/String;

    return-object v0
.end method

.method public getShareCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->shareCount:I

    return v0
.end method

.method public getShareCountStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->shareCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSysTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->sysTag:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoRate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->videoRate:D

    return-wide v0
.end method

.method public getVoiceCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->voiceCount:I

    return v0
.end method

.method public getVrsChecked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->vrsChecked:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->width:I

    return v0
.end method

.method public isAllowComment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->allowComment:Z

    return v0
.end method

.method public isAllowDuet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->allowDuet:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->liked:Z

    return v0
.end method

.method public isPersonal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->personal:Z

    return v0
.end method

.method public setAllowComment(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->allowComment:Z

    return-void
.end method

.method public setAllowDuet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->allowDuet:Z

    return-void
.end method

.method public setChallengeTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->challengeTitle:Ljava/lang/String;

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentCount:I

    return-void
.end method

.method public setCommentCountStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentCountStr:Ljava/lang/String;

    return-void
.end method

.method public setCommentDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->commentDesc:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCoverGif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->coverGif:Ljava/lang/String;

    return-void
.end method

.method public setDuetVideoId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->duetVideoId:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->duration:I

    return-void
.end method

.method public setEntrance(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->entrance:Ljava/util/List;

    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->episodeTitle:Ljava/lang/String;

    return-void
.end method

.method public setFirstFrameImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->firstFrameImg:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->height:I

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->likeCount:I

    return-void
.end method

.method public setLikeCountStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->likeCountStr:Ljava/lang/String;

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->liked:Z

    return-void
.end method

.method public setOwner(Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->owner:Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->ownerId:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->personal:Z

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->playCount:I

    return-void
.end method

.method public setRdata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->rdata:Ljava/lang/String;

    return-void
.end method

.method public setShareCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->shareCount:I

    return-void
.end method

.method public setShareCountStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->shareCountStr:Ljava/lang/String;

    return-void
.end method

.method public setSubjectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public setSysTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->sysTag:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->vid:Ljava/lang/String;

    return-void
.end method

.method public setVideoRate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->videoRate:D

    return-void
.end method

.method public setVoiceCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->voiceCount:I

    return-void
.end method

.method public setVrsChecked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->vrsChecked:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;->width:I

    return-void
.end method
