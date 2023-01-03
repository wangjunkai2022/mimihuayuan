.class public Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;
.super Ljava/lang/Object;
.source "VideoListBean.java"

# interfaces
.implements Lf/e/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideosEntity"
.end annotation


# instance fields
.field public cover:Ljava/lang/String;

.field public main_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public second_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;

.field public thumb:Ljava/lang/String;

.field public video_duration:I

.field public video_id:Ljava/lang/String;

.field public video_like:Z

.field public video_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->this$1:Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/j/g0/m/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMain_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->main_tag:Ljava/util/List;

    return-object v0
.end method

.method public getSecond_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->second_tag:Ljava/util/List;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_duration:I

    return v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_title:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo_like()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_like:Z

    return v0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->cover:Ljava/lang/String;

    return-void
.end method

.method public setMain_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->main_tag:Ljava/util/List;

    return-void
.end method

.method public setSecond_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->second_tag:Ljava/util/List;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_duration:I

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_like(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_like:Z

    return-void
.end method

.method public setVideo_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->video_title:Ljava/lang/String;

    return-void
.end method
