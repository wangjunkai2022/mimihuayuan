.class public Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;
.super Ljava/lang/Object;
.source "BannerBean.java"

# interfaces
.implements Lf/e/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/aimeiju/bean/BannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public ad:I

.field public cid:Ljava/lang/String;

.field public cion:Ljava/lang/String;

.field public fid:Ljava/lang/String;

.field public hits:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public pic2:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->ad:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->cion:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pic2:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->hits:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pic2:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public isAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->ad:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->ad:I

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->cion:Ljava/lang/String;

    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->fid:Ljava/lang/String;

    return-void
.end method

.method public setHits(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->hits:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pf:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPic2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->pic2:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BannerBean$DataBean;->vip:Ljava/lang/String;

    return-void
.end method
