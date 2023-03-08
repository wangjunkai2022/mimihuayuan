.class public Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;,
        Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;
    }
.end annotation


# instance fields
.field public addrName:Ljava/lang/String;

.field public auditStatus:I

.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public closeComment:I

.field public collectNum:I

.field public collectNumFake:I

.field public commentId:Ljava/lang/String;

.field public commentNum:I

.field public content:Ljava/lang/String;

.field public createTimestamp:J

.field public fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public isCollect:Ljava/lang/String;

.field public isThumbup:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public newScore:I

.field public payAmount:Ljava/lang/String;

.field public payNum:I

.field public payTotalAmount:D

.field public playTourAmount:D

.field public playTourNum:I

.field public postCommentList:Ljava/lang/String;

.field public postId:Ljava/lang/String;

.field public provCode:Ljava/lang/String;

.field public provName:Ljava/lang/String;

.field public readingCount:I

.field public readingCountFake:I

.field public replyId:Ljava/lang/String;

.field public sharedLinksNum:I

.field public stateCode:Ljava/lang/String;

.field public stateName:Ljava/lang/String;

.field public status:I

.field public subscriptionPrice:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

.field public thumbupNum:I

.field public thumbupNumFake:I

.field public title:Ljava/lang/String;

.field public type:I

.field public updateTimestamp:J

.field public userId:Ljava/lang/String;

.field public userInfo:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

.field public vipFlag:Z

.field public visitsNum:Ljava/lang/String;

.field public whetherPay:Z

.field public whetherPreheating:Z

.field public whetherSubscription:Z


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->this$1:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddrName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->addrName:Ljava/lang/String;

    return-object v0
.end method

.method public getAllFile()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;

    .line 5
    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAuditStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->auditStatus:I

    return v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->closeComment:I

    return v0
.end method

.method public getCollectNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->collectNum:I

    return v0
.end method

.method public getCollectNumFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->collectNumFake:I

    return v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->commentNum:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->createTimestamp:J

    return-wide v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getIsCollect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->isCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getIsThumbup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->isThumbup:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getNewScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->newScore:I

    return v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getPayNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payNum:I

    return v0
.end method

.method public getPayTotalAmount()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payTotalAmount:D

    return-wide v0
.end method

.method public getPlayTourAmount()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->playTourAmount:D

    return-wide v0
.end method

.method public getPlayTourNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->playTourNum:I

    return v0
.end method

.method public getPostCommentList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->postCommentList:Ljava/lang/String;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->provCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProvName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->provName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->readingCount:I

    return v0
.end method

.method public getReadingCountFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->readingCountFake:I

    return v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinksNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->sharedLinksNum:I

    return v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->stateName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->status:I

    return v0
.end method

.method public getSubscriptionPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->subscriptionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbupNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->thumbupNum:I

    return v0
.end method

.method public getThumbupNumFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->thumbupNumFake:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->type:I

    return v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->updateTimestamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->userInfo:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    return-object v0
.end method

.method public getVisitsNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->visitsNum:Ljava/lang/String;

    return-object v0
.end method

.method public isVipFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->vipFlag:Z

    return v0
.end method

.method public isWhetherPay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherPay:Z

    return v0
.end method

.method public isWhetherPreheating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherPreheating:Z

    return v0
.end method

.method public isWhetherSubscription()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherSubscription:Z

    return v0
.end method

.method public setAddrName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->addrName:Ljava/lang/String;

    return-void
.end method

.method public setAuditStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->auditStatus:I

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCloseComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->closeComment:I

    return-void
.end method

.method public setCollectNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->collectNum:I

    return-void
.end method

.method public setCollectNumFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->collectNumFake:I

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->commentNum:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->createTimestamp:J

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->fileList:Ljava/util/List;

    return-void
.end method

.method public setIsCollect(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->isCollect:Ljava/lang/String;

    return-void
.end method

.method public setIsThumbup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->isThumbup:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->lng:Ljava/lang/String;

    return-void
.end method

.method public setNewScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->newScore:I

    return-void
.end method

.method public setPayAmount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payAmount:Ljava/lang/String;

    return-void
.end method

.method public setPayNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payNum:I

    return-void
.end method

.method public setPayTotalAmount(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->payTotalAmount:D

    return-void
.end method

.method public setPlayTourAmount(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->playTourAmount:D

    return-void
.end method

.method public setPlayTourNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->playTourNum:I

    return-void
.end method

.method public setPostCommentList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->postCommentList:Ljava/lang/String;

    return-void
.end method

.method public setPostId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->postId:Ljava/lang/String;

    return-void
.end method

.method public setProvCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->provCode:Ljava/lang/String;

    return-void
.end method

.method public setProvName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->provName:Ljava/lang/String;

    return-void
.end method

.method public setReadingCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->readingCount:I

    return-void
.end method

.method public setReadingCountFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->readingCountFake:I

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setSharedLinksNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->sharedLinksNum:I

    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->stateCode:Ljava/lang/String;

    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->stateName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->status:I

    return-void
.end method

.method public setSubscriptionPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->subscriptionPrice:Ljava/lang/String;

    return-void
.end method

.method public setThumbupNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->thumbupNum:I

    return-void
.end method

.method public setThumbupNumFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->thumbupNumFake:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->type:I

    return-void
.end method

.method public setUpdateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->updateTimestamp:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->userInfo:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    return-void
.end method

.method public setVipFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->vipFlag:Z

    return-void
.end method

.method public setVisitsNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->visitsNum:Ljava/lang/String;

    return-void
.end method

.method public setWhetherPay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherPay:Z

    return-void
.end method

.method public setWhetherPreheating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherPreheating:Z

    return-void
.end method

.method public setWhetherSubscription(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->whetherSubscription:Z

    return-void
.end method
