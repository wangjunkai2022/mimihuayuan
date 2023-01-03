.class public Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/VideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;
    }
.end annotation


# instance fields
.field public actor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Ljava/lang/String;

.field public release_date:I

.field public thumb:Ljava/lang/String;

.field public upload_date:I

.field public video_category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public video_description:Ljava/lang/String;

.field public video_duration:I

.field public video_id:Ljava/lang/String;

.field public video_like:Z

.field public video_number:Ljava/lang/String;

.field public video_publisher:Ljava/lang/String;

.field public video_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public video_title:Ljava/lang/String;

.field public video_urls:Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;

.field public video_views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->actor:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->getVideo_urls()Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$480()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "A1pTNA=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$240()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BVZTNA=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3sDnjMz7"

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getPlayUrl()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->getVideo_urls()Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$480()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/j/g0/m/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$480()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$240()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/j/g0/m/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->get_$240()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/j/g0/m/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getRelease_date()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->release_date:I

    return v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload_date()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->upload_date:I

    return v0
.end method

.method public getVideo_category()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_category:Ljava/util/List;

    return-object v0
.end method

.method public getVideo_description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_description:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_duration:I

    return v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_number:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_publisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_tags()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_tags:Ljava/util/List;

    return-object v0
.end method

.method public getVideo_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_urls()Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    return-object v0
.end method

.method public getVideo_views()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_views:Ljava/util/List;

    return-object v0
.end method

.method public isVideo_like()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_like:Z

    return v0
.end method

.method public setActor(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->actor:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setRelease_date(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->release_date:I

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setUpload_date(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->upload_date:I

    return-void
.end method

.method public setVideo_category(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_category:Ljava/util/List;

    return-void
.end method

.method public setVideo_description(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_description:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_duration:I

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_like(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_like:Z

    return-void
.end method

.method public setVideo_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_number:Ljava/lang/String;

    return-void
.end method

.method public setVideo_publisher(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_publisher:Ljava/lang/String;

    return-void
.end method

.method public setVideo_tags(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_tags:Ljava/util/List;

    return-void
.end method

.method public setVideo_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_title:Ljava/lang/String;

    return-void
.end method

.method public setVideo_urls(Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    return-void
.end method

.method public setVideo_views(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoInfo$ResponseBean;->video_views:Ljava/util/List;

    return-void
.end method
