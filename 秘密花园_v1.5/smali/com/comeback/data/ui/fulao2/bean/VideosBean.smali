.class public Lcom/comeback/data/ui/fulao2/bean/VideosBean;
.super Lg/a/g0;
.source "VideosBean.java"

# interfaces
.implements Lg/a/t0;


# instance fields
.field public actor:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public main_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public release_date:J

.field public second_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Ljava/lang/String;

.field public upload_date:J

.field public video_duration:I

.field public video_id:Ljava/lang/String;

.field public video_like:Z

.field public video_title:Ljava/lang/String;


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
.method public getActor()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$actor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$cover()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$cover()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$cover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMain_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->main_tag:Ljava/util/List;

    return-object v0
.end method

.method public getMain_tagString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->main_tag:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->main_tag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelease_date()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$release_date()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecond_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->second_tag:Ljava/util/List;

    return-object v0
.end method

.method public getSecond_tagString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->second_tag:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->second_tag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$thumb()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$thumb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$thumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$upload_date()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getUpload_date()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->O0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_duration()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_duration()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_duration()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DQ=="

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "Bw=="

    const/16 v5, 0x9

    if-lez v1, :cond_3

    if-le v1, v5, :cond_2

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "B1JZ"

    .line 11
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-lez v0, :cond_5

    if-le v0, v5, :cond_4

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v0, "B1I="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpload_date()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$upload_date()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideo_duration()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_duration()I

    move-result v0

    return v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideo_title()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVideo_like()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmGet$video_like()Z

    move-result v0

    return v0
.end method

.method public realmGet$actor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$release_date()J
    .locals 2

    iget-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->release_date:J

    return-wide v0
.end method

.method public realmGet$thumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$upload_date()J
    .locals 2

    iget-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->upload_date:J

    return-wide v0
.end method

.method public realmGet$video_duration()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_duration:I

    return v0
.end method

.method public realmGet$video_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$video_like()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_like:Z

    return v0
.end method

.method public realmGet$video_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$actor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->actor:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public realmSet$release_date(J)V
    .locals 0

    iput-wide p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->release_date:J

    return-void
.end method

.method public realmSet$thumb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public realmSet$upload_date(J)V
    .locals 0

    iput-wide p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->upload_date:J

    return-void
.end method

.method public realmSet$video_duration(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_duration:I

    return-void
.end method

.method public realmSet$video_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$video_like(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_like:Z

    return-void
.end method

.method public realmSet$video_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->video_title:Ljava/lang/String;

    return-void
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$actor(Ljava/lang/String;)V

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$cover(Ljava/lang/String;)V

    return-void
.end method

.method public setMain_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->main_tag:Ljava/util/List;

    return-void
.end method

.method public setRelease_date(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$release_date(J)V

    return-void
.end method

.method public setSecond_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->second_tag:Ljava/util/List;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$thumb(Ljava/lang/String;)V

    return-void
.end method

.method public setUpload_date(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$upload_date(J)V

    return-void
.end method

.method public setVideo_duration(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$video_duration(I)V

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$video_id(Ljava/lang/String;)V

    return-void
.end method

.method public setVideo_like(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$video_like(Z)V

    return-void
.end method

.method public setVideo_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->realmSet$video_title(Ljava/lang/String;)V

    return-void
.end method
