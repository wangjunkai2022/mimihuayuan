.class public Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;,
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$PostTagListEntity;,
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;
    }
.end annotation


# instance fields
.field public addrName:Ljava/lang/String;

.field public auditStatus:I

.field public cityCode:Ljava/lang/String;

.field public closeComment:I

.field public collectNum:I

.field public collectNumFake:I

.field public commentNum:I

.field public content:Ljava/lang/String;

.field public createTimestamp:J

.field public fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public newScore:I

.field public payNum:I

.field public payTotalAmount:D

.field public playTourAmount:D

.field public playTourNum:I

.field public postCommentList:Ljava/lang/String;

.field public postId:Ljava/lang/String;

.field public postTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$PostTagListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public provName:Ljava/lang/String;

.field public readingCount:I

.field public readingCountFake:I

.field public replyId:Ljava/lang/String;

.field public sharedLinksNum:I

.field public stateCode:Ljava/lang/String;

.field public status:I

.field public final synthetic this$1:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;

.field public thumbupNum:I

.field public thumbupNumFake:I

.field public title:Ljava/lang/String;

.field public type:I

.field public updateTimestamp:J

.field public userId:Ljava/lang/String;

.field public userInfo:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

.field public vipFlag:Z

.field public visitsNum:Ljava/lang/String;

.field public whetherPay:Z

.field public whetherPreheating:Z

.field public whetherSubscription:Z


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->this$1:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->vipFlag:Z

    return p0
.end method


# virtual methods
.method public getAddrName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->addrName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuditStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->auditStatus:I

    return v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->closeComment:I

    return v0
.end method

.method public getCollectNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->collectNum:I

    return v0
.end method

.method public getCollectNumFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->collectNumFake:I

    return v0
.end method

.method public getCommentNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->commentNum:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->createTimestamp:J

    return-wide v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getNewScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->newScore:I

    return v0
.end method

.method public getPayNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->payNum:I

    return v0
.end method

.method public getPayTotalAmount()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->payTotalAmount:D

    return-wide v0
.end method

.method public getPlayTourAmount()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->playTourAmount:D

    return-wide v0
.end method

.method public getPlayTourNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->playTourNum:I

    return v0
.end method

.method public getPostCommentList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postCommentList:Ljava/lang/String;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$PostTagListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postTagList:Ljava/util/List;

    return-object v0
.end method

.method public getProvName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->provName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->readingCount:I

    return v0
.end method

.method public getReadingCountFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->readingCountFake:I

    return v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinksNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->sharedLinksNum:I

    return v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->status:I

    return v0
.end method

.method public getThumbupNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->thumbupNum:I

    return v0
.end method

.method public getThumbupNumFake()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->thumbupNumFake:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->type:I

    return v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->updateTimestamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->userInfo:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    return-object v0
.end method

.method public getVisitsNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->visitsNum:Ljava/lang/String;

    return-object v0
.end method

.method public isVipFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->vipFlag:Z

    return v0
.end method

.method public isWhetherPay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherPay:Z

    return v0
.end method

.method public isWhetherPreheating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherPreheating:Z

    return v0
.end method

.method public isWhetherSubscription()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherSubscription:Z

    return v0
.end method

.method public setAddrName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->addrName:Ljava/lang/String;

    return-void
.end method

.method public setAuditStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->auditStatus:I

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCloseComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->closeComment:I

    return-void
.end method

.method public setCollectNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->collectNum:I

    return-void
.end method

.method public setCollectNumFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->collectNumFake:I

    return-void
.end method

.method public setCommentNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->commentNum:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->createTimestamp:J

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->fileList:Ljava/util/List;

    return-void
.end method

.method public setNewScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->newScore:I

    return-void
.end method

.method public setPayNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->payNum:I

    return-void
.end method

.method public setPayTotalAmount(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->payTotalAmount:D

    return-void
.end method

.method public setPlayTourAmount(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->playTourAmount:D

    return-void
.end method

.method public setPlayTourNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->playTourNum:I

    return-void
.end method

.method public setPostCommentList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postCommentList:Ljava/lang/String;

    return-void
.end method

.method public setPostId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postId:Ljava/lang/String;

    return-void
.end method

.method public setPostTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$PostTagListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->postTagList:Ljava/util/List;

    return-void
.end method

.method public setProvName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->provName:Ljava/lang/String;

    return-void
.end method

.method public setReadingCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->readingCount:I

    return-void
.end method

.method public setReadingCountFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->readingCountFake:I

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setSharedLinksNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->sharedLinksNum:I

    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->stateCode:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->status:I

    return-void
.end method

.method public setThumbupNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->thumbupNum:I

    return-void
.end method

.method public setThumbupNumFake(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->thumbupNumFake:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->type:I

    return-void
.end method

.method public setUpdateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->updateTimestamp:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->userInfo:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    return-void
.end method

.method public setVipFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->vipFlag:Z

    return-void
.end method

.method public setVisitsNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->visitsNum:Ljava/lang/String;

    return-void
.end method

.method public setWhetherPay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherPay:Z

    return-void
.end method

.method public setWhetherPreheating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherPreheating:Z

    return-void
.end method

.method public setWhetherSubscription(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->whetherSubscription:Z

    return-void
.end method
