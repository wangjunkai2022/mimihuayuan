.class public Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/bean/VideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;
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

.field public cover_url:Ljava/lang/String;

.field public release_date:J

.field public thumb:Ljava/lang/String;

.field public upload_date:J

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

.field public video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;


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
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->actor:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;->access$000(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;->access$000(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;->access$100(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;->access$100(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0u3JjOjO0Zzmgajs"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;->access$200(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 8
    :goto_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelease_date()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->release_date:J

    return-wide v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload_date()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->upload_date:J

    return-wide v0
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
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_category:Ljava/util/List;

    return-object v0
.end method

.method public getVideo_description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_description:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_duration:I

    return v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_number:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_publisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_publisher:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_tags:Ljava/util/List;

    return-object v0
.end method

.method public getVideo_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_urls()Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    return-object v0
.end method

.method public isVideo_like()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_like:Z

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
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->actor:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCover_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setRelease_date(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->release_date:J

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setUpload_date(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->upload_date:J

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
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_category:Ljava/util/List;

    return-void
.end method

.method public setVideo_description(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_description:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_duration:I

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_like(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_like:Z

    return-void
.end method

.method public setVideo_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_number:Ljava/lang/String;

    return-void
.end method

.method public setVideo_publisher(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_publisher:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_tags:Ljava/util/List;

    return-void
.end method

.method public setVideo_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_title:Ljava/lang/String;

    return-void
.end method

.method public setVideo_urls(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->video_urls:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean$VideoUrlsBean;

    return-void
.end method
