.class public Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;
.super Ljava/lang/Object;
.source "UserDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/UserDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public actorId:I

.field public attentionCnt:I

.field public attentionState:I

.field public bgImageUrl:Ljava/lang/String;

.field public fansCnt:I

.field public gender:I

.field public icon:Ljava/lang/String;

.field public isMcn:I

.field public isOfficial:I

.field public isSVIP:Z

.field public isUper:I

.field public isWanghong:I

.field public isZhenren:I

.field public isZhubo:I

.field public myInviteCode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nvshenTieziId:I

.field public nvshenVideoCover:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/cucumber/bean/UserDetail;

.field public upedCnt:I

.field public userDescs:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/bean/UserDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->this$0:Lcom/comeback/data/ui/cucumber/bean/UserDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->actorId:I

    return v0
.end method

.method public getAttentionCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->attentionCnt:I

    return v0
.end method

.method public getAttentionState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->attentionState:I

    return v0
.end method

.method public getBgImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->bgImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFansCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->fansCnt:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->gender:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isMcn:I

    return v0
.end method

.method public getIsOfficial()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isOfficial:I

    return v0
.end method

.method public getIsUper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isUper:I

    return v0
.end method

.method public getIsWanghong()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isWanghong:I

    return v0
.end method

.method public getIsZhenren()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isZhenren:I

    return v0
.end method

.method public getIsZhubo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isZhubo:I

    return v0
.end method

.method public getMyInviteCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->myInviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNvshenTieziId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->nvshenTieziId:I

    return v0
.end method

.method public getNvshenVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->nvshenVideoCover:Ljava/lang/String;

    return-object v0
.end method

.method public getUpedCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->upedCnt:I

    return v0
.end method

.method public getUserDescs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->userDescs:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isIsSVIP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isSVIP:Z

    return v0
.end method

.method public setActorId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->actorId:I

    return-void
.end method

.method public setAttentionCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->attentionCnt:I

    return-void
.end method

.method public setAttentionState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->attentionState:I

    return-void
.end method

.method public setBgImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->bgImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setFansCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->fansCnt:I

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->gender:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIsMcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isMcn:I

    return-void
.end method

.method public setIsOfficial(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isOfficial:I

    return-void
.end method

.method public setIsSVIP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isSVIP:Z

    return-void
.end method

.method public setIsUper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isUper:I

    return-void
.end method

.method public setIsWanghong(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isWanghong:I

    return-void
.end method

.method public setIsZhenren(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isZhenren:I

    return-void
.end method

.method public setIsZhubo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->isZhubo:I

    return-void
.end method

.method public setMyInviteCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->myInviteCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setNvshenTieziId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->nvshenTieziId:I

    return-void
.end method

.method public setNvshenVideoCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->nvshenVideoCover:Ljava/lang/String;

    return-void
.end method

.method public setUpedCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->upedCnt:I

    return-void
.end method

.method public setUserDescs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->userDescs:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->userId:Ljava/lang/String;

    return-void
.end method
