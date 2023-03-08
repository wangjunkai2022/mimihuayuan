.class public Lcom/comeback/data/ui/jav/bean/Download;
.super Lf/e/a/f/k;
.source "Download.java"


# instance fields
.field public detail:Ljava/lang/String;

.field public magnet:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/bean/Download;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getMagnet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/bean/Download;->magnet:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/bean/Download;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/bean/Download;->detail:Ljava/lang/String;

    return-void
.end method

.method public setMagnet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/bean/Download;->magnet:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/bean/Download;->updateTime:Ljava/lang/String;

    return-void
.end method
