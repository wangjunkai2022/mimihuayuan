.class public Lcom/comeback/data/ui/main/bean/CollectVideo;
.super Lg/a/g0;
.source "CollectVideo.java"

# interfaces
.implements Lg/a/b1;


# instance fields
.field public addTime:J

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmGet$addTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$addTime()J
    .locals 2

    iget-wide v0, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->addTime:J

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$addTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->addTime:J

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/CollectVideo;->url:Ljava/lang/String;

    return-void
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmSet$addTime(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method
