.class public Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;
.super Ljava/lang/Object;
.source "ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MComicDataBean"
.end annotation


# instance fields
.field public banner_url:Ljava/lang/String;

.field public cover_url:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public dump_status:I

.field public dump_week:I

.field public global_type:Ljava/lang/String;

.field public hot:I

.field public id:I

.field public intro:Ljava/lang/String;

.field public is_new:I

.field public is_pay:I

.field public is_recommend:I

.field public resource_total:I

.field public score:D

.field public status:I

.field public title:Ljava/lang/String;

.field public updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDump_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->dump_status:I

    return v0
.end method

.method public getDump_week()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->dump_week:I

    return v0
.end method

.method public getGlobal_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->global_type:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->hot:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->id:I

    return v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->intro:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0ufS"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->resource_total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "383+"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_new:I

    return v0
.end method

.method public getIs_pay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_pay:I

    return v0
.end method

.method public getIs_recommend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_recommend:I

    return v0
.end method

.method public getResource_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->resource_total:I

    return v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->score:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "0url"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fnXgv3D0bTA"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->resource_total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "383+"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_new:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBanner_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->banner_url:Ljava/lang/String;

    return-void
.end method

.method public setCover_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDump_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->dump_status:I

    return-void
.end method

.method public setDump_week(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->dump_week:I

    return-void
.end method

.method public setGlobal_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->global_type:Ljava/lang/String;

    return-void
.end method

.method public setHot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->hot:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->id:I

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setIs_new(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_new:I

    return-void
.end method

.method public setIs_pay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_pay:I

    return-void
.end method

.method public setIs_recommend(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->is_recommend:I

    return-void
.end method

.method public setResource_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->resource_total:I

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->score:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->updated_at:Ljava/lang/String;

    return-void
.end method
