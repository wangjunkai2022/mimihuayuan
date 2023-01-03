.class public Lcom/comeback/data/ui/isiyu/bean/Video;
.super Lf/e/a/f/j;
.source "Video.java"


# instance fields
.field public coins:I

.field public cover_url:Ljava/lang/String;

.field public duration:I

.field public id:Ljava/lang/String;

.field public is_vip:I

.field public online_time:Ljava/lang/String;

.field public play_count:I

.field public play_url_m3u8:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public view_time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->coins:I

    return v0
.end method

.method public getCover_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->duration:I

    return v0
.end method

.method public getDurationS()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->duration:I

    div-int/lit8 v1, v0, 0x3c

    .line 2
    rem-int/lit8 v0, v0, 0x3c

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "DQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-string v1, "Bw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->is_vip:I

    return v0
.end method

.method public getOnline_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->online_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->play_count:I

    return v0
.end method

.method public getPlay_url_m3u8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->play_url_m3u8:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAndDuration()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fnXgv3D36TFj6PTl9b5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->online_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F0JDTA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/isiyu/bean/Video;->getDurationS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Hg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->view_time:I

    return v0
.end method

.method public setCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->coins:I

    return-void
.end method

.method public setCover_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->is_vip:I

    return-void
.end method

.method public setOnline_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->online_time:Ljava/lang/String;

    return-void
.end method

.method public setPlay_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->play_count:I

    return-void
.end method

.method public setPlay_url_m3u8(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->play_url_m3u8:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->title:Ljava/lang/String;

    return-void
.end method

.method public setView_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/Video;->view_time:I

    return-void
.end method
