.class public Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xiami/bean/VideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$InfoBean;,
        Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$BannerBean;,
        Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;
    }
.end annotation


# instance fields
.field public addTime:Ljava/lang/String;

.field public banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public collected:Z

.field public info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$InfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public isPlay:Z

.field public videoAd:Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;

.field public videoClip:Ljava/lang/Object;

.field public videoId:I

.field public videoImage:Ljava/lang/String;

.field public videoTime:Ljava/lang/String;

.field public videoTitle:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public videoViews:Ljava/lang/String;

.field public videoVip:Ljava/lang/String;

.field public vipTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$InfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->info:Ljava/util/List;

    return-object v0
.end method

.method public getVideoAd()Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoAd:Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;

    return-object v0
.end method

.method public getVideoClip()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoClip:Ljava/lang/Object;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoId:I

    return v0
.end method

.method public getVideoImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoImage:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoViews()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoViews:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoVip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoVip:Ljava/lang/String;

    return-object v0
.end method

.method public getVipTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->vipTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->collected:Z

    return v0
.end method

.method public isIsPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->isPlay:Z

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->banner:Ljava/util/List;

    return-void
.end method

.method public setCollected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->collected:Z

    return-void
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$InfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->info:Ljava/util/List;

    return-void
.end method

.method public setIsPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->isPlay:Z

    return-void
.end method

.method public setVideoAd(Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoAd:Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean$VideoAdBean;

    return-void
.end method

.method public setVideoClip(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoClip:Ljava/lang/Object;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoId:I

    return-void
.end method

.method public setVideoImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoImage:Ljava/lang/String;

    return-void
.end method

.method public setVideoTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoTime:Ljava/lang/String;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoViews(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoViews:Ljava/lang/String;

    return-void
.end method

.method public setVideoVip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->videoVip:Ljava/lang/String;

    return-void
.end method

.method public setVipTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->vipTitle:Ljava/lang/String;

    return-void
.end method
