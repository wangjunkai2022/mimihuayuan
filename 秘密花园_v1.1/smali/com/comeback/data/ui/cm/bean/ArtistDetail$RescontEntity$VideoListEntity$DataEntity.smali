.class public Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;
.super Ljava/lang/Object;
.source "ArtistDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public artist:I

.field public auther:Ljava/lang/String;

.field public auther_no:Ljava/lang/String;

.field public authername:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public coverpath:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public deleted_at:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public id:I

.field public introduction:Ljava/lang/String;

.field public is_vip:I

.field public pageviews:I

.field public playtimes:Ljava/lang/String;

.field public recommend:I

.field public short_video_path:Ljava/lang/String;

.field public sort_id:I

.field public status:I

.field public sync_status:I

.field public final synthetic this$2:Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

.field public title:Ljava/lang/String;

.field public ts_time:I

.field public updated_at:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public videopath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->this$2:Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->artist:I

    return v0
.end method

.method public getAuther()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->auther:Ljava/lang/String;

    return-object v0
.end method

.method public getAuther_no()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->auther_no:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->authername:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->cover:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->cover:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getCoverpath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverpath:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->deleted_at:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->id:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->is_vip:I

    return v0
.end method

.method public getPageviews()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->pageviews:I

    return v0
.end method

.method public getPlaytimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->playtimes:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->recommend:I

    return v0
.end method

.method public getShort_video_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->short_video_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSort_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->sort_id:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->status:I

    return v0
.end method

.method public getSync_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->sync_status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTs_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->ts_time:I

    return v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideopath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->videopath:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->artist:I

    return-void
.end method

.method public setAuther(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->auther:Ljava/lang/String;

    return-void
.end method

.method public setAuther_no(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->auther_no:Ljava/lang/String;

    return-void
.end method

.method public setAuthername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->authername:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setCoverpath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDeleted_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->deleted_at:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->id:I

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->is_vip:I

    return-void
.end method

.method public setPageviews(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->pageviews:I

    return-void
.end method

.method public setPlaytimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->playtimes:Ljava/lang/String;

    return-void
.end method

.method public setRecommend(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->recommend:I

    return-void
.end method

.method public setShort_video_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->short_video_path:Ljava/lang/String;

    return-void
.end method

.method public setSort_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->sort_id:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->status:I

    return-void
.end method

.method public setSync_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->sync_status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTs_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->ts_time:I

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVideopath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity$DataEntity;->videopath:Ljava/lang/String;

    return-void
.end method
