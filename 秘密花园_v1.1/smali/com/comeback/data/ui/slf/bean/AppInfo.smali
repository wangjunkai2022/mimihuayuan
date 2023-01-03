.class public Lcom/comeback/data/ui/slf/bean/AppInfo;
.super Lf/e/a/f/j;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;,
        Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;
    }
.end annotation


# instance fields
.field public ads:Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;

.field public apiDomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public autoSkip:Ljava/lang/String;

.field public canUse:Ljava/lang/String;

.field public colseMessage:Ljava/lang/String;

.field public contectEmail:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public feedbackLink:Ljava/lang/String;

.field public isNeed:Ljava/lang/String;

.field public tipsContent:Ljava/lang/String;

.field public tipsKey:Ljava/lang/String;

.field public tipsTitle:Ljava/lang/String;

.field public token:Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getAds()Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->ads:Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;

    return-object v0
.end method

.method public getApiDomain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->apiDomain:Ljava/util/List;

    return-object v0
.end method

.method public getAutoSkip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->autoSkip:Ljava/lang/String;

    return-object v0
.end method

.method public getCanUse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->canUse:Ljava/lang/String;

    return-object v0
.end method

.method public getColseMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->colseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getContectEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->contectEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->feedbackLink:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->isNeed:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->token:Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAds(Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->ads:Lcom/comeback/data/ui/slf/bean/AppInfo$AdsBean;

    return-void
.end method

.method public setApiDomain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->apiDomain:Ljava/util/List;

    return-void
.end method

.method public setAutoSkip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->autoSkip:Ljava/lang/String;

    return-void
.end method

.method public setCanUse(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->canUse:Ljava/lang/String;

    return-void
.end method

.method public setColseMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->colseMessage:Ljava/lang/String;

    return-void
.end method

.method public setContectEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->contectEmail:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setFeedbackLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->feedbackLink:Ljava/lang/String;

    return-void
.end method

.method public setIsNeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->isNeed:Ljava/lang/String;

    return-void
.end method

.method public setTipsContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsContent:Ljava/lang/String;

    return-void
.end method

.method public setTipsKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsKey:Ljava/lang/String;

    return-void
.end method

.method public setTipsTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->tipsTitle:Ljava/lang/String;

    return-void
.end method

.method public setToken(Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->token:Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/AppInfo;->version:Ljava/lang/String;

    return-void
.end method
