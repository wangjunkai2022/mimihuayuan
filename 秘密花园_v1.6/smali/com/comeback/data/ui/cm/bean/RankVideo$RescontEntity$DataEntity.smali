.class public Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;
.super Ljava/lang/Object;
.source "RankVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public authername:Ljava/lang/String;

.field public coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public coverpath:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public id:I

.field public is_vip:I

.field public pageviews:I

.field public playtimes:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;

.field public title:Ljava/lang/String;

.field public updated_at:Ljava/lang/String;

.field public videopath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->this$1:Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->authername:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getCoverpath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->id:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->is_vip:I

    return v0
.end method

.method public getPageviews()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->pageviews:I

    return v0
.end method

.method public getPlaytimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->playtimes:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getVideopath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->videopath:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->authername:Ljava/lang/String;

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setCoverpath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->id:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->is_vip:I

    return-void
.end method

.method public setPageviews(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->pageviews:I

    return-void
.end method

.method public setPlaytimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->playtimes:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setVideopath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;->videopath:Ljava/lang/String;

    return-void
.end method
