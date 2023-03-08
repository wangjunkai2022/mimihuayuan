.class public Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;
.super Ljava/lang/Object;
.source "HomeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideosBean"
.end annotation


# instance fields
.field public cate_id:I

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rate:D

.field public video_id:Ljava/lang/String;

.field public video_name:Ljava/lang/String;

.field public ximage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCate_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->cate_id:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->video_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->id:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->video_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->name:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->video_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 3
    iget-wide v1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->rate:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXimage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->ximage:Ljava/lang/String;

    return-object v0
.end method

.method public setCate_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->cate_id:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->rate:D

    return-void
.end method

.method public setXimage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->ximage:Ljava/lang/String;

    return-void
.end method
