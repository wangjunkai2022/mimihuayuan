.class public Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;
.super Ljava/lang/Object;
.source "LiveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveEntity"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public bluetoothStatus:I

.field public chargeType:I

.field public coverIdentityUrl:Ljava/lang/String;

.field public expGrade:I

.field public liveCount:I

.field public liveCoverUrl:Ljava/lang/String;

.field public liveId:Ljava/lang/String;

.field public liveStatus:Ljava/lang/String;

.field public liveType:I

.field public lowDefinitionPullStreamUrl:Ljava/lang/String;

.field public lowDefinitionPullStreamUrlH265:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public onlineUserCount:I

.field public onlineUserCountPeekValue:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public pkAccept:Ljava/lang/String;

.field public popularity:I

.field public pullStreamUrl:Ljava/lang/String;

.field public pullStreamUrlH265:Ljava/lang/String;

.field public sex:Ljava/lang/String;

.field public startTime:I

.field public tag:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

.field public ticketPrice:I

.field public topic:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public virtualCityNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->this$1:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->bluetoothStatus:I

    return v0
.end method

.method public getChargeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->chargeType:I

    return v0
.end method

.method public getCoverIdentityUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->coverIdentityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDefPullStreamUrlStr()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->getPullStreamUrlList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExpGrade()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->expGrade:I

    return v0
.end method

.method public getLiveCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCount:I

    return v0
.end method

.method public getLiveCoverUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCoverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCoverUrl:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFFFcFlccEVpJDBkFGFVMAAsGXA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveType:I

    return v0
.end method

.method public getLowDefinitionPullStreamUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->lowDefinitionPullStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLowDefinitionPullStreamUrlH265()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->lowDefinitionPullStreamUrlH265:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineUserCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->onlineUserCount:I

    return v0
.end method

.method public getOnlineUserCountPeekValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->onlineUserCountPeekValue:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPkAccept()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pkAccept:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->popularity:I

    return v0
.end method

.method public getPullStreamUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPullStreamUrlH265()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrlH265:Ljava/lang/String;

    return-object v0
.end method

.method public getPullStreamUrlList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrl:Ljava/lang/String;

    const-string v1, "Gw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->startTime:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->ticketPrice:I

    return v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualCityNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->virtualCityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->bluetoothStatus:I

    return-void
.end method

.method public setChargeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->chargeType:I

    return-void
.end method

.method public setCoverIdentityUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->coverIdentityUrl:Ljava/lang/String;

    return-void
.end method

.method public setExpGrade(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->expGrade:I

    return-void
.end method

.method public setLiveCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCount:I

    return-void
.end method

.method public setLiveCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveStatus:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->liveType:I

    return-void
.end method

.method public setLowDefinitionPullStreamUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->lowDefinitionPullStreamUrl:Ljava/lang/String;

    return-void
.end method

.method public setLowDefinitionPullStreamUrlH265(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->lowDefinitionPullStreamUrlH265:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOnlineUserCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->onlineUserCount:I

    return-void
.end method

.method public setOnlineUserCountPeekValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->onlineUserCountPeekValue:Ljava/lang/String;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->openId:Ljava/lang/String;

    return-void
.end method

.method public setPkAccept(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pkAccept:Ljava/lang/String;

    return-void
.end method

.method public setPopularity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->popularity:I

    return-void
.end method

.method public setPullStreamUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrl:Ljava/lang/String;

    return-void
.end method

.method public setPullStreamUrlH265(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->pullStreamUrlH265:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->sex:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->startTime:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTicketPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->ticketPrice:I

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->topic:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVirtualCityNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->virtualCityNumber:Ljava/lang/String;

    return-void
.end method
