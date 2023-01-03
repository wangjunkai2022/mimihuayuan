.class public Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostparamEntity"
.end annotation


# instance fields
.field public cover:Ljava/lang/String;

.field public download_url:Ljava/lang/String;

.field public duration:I

.field public id:Ljava/lang/String;

.field public part_video:Ljava/lang/String;

.field public play_url:Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public final synthetic this$4:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;

.field public thumb_hor:Ljava/lang/String;

.field public thumb_longview:Ljava/lang/String;

.field public thumb_series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public thumb_ver:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public webp:Ljava/lang/String;

.field public webp_count:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->this$4:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPart_video()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->part_video:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->play_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_hor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_hor:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_longview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_longview:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_series()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_series:Ljava/util/List;

    return-object v0
.end method

.method public getThumb_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getWebp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->webp:Ljava/lang/String;

    return-object v0
.end method

.method public getWebp_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->webp_count:I

    return v0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDownload_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->download_url:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setPart_video(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->part_video:Ljava/lang/String;

    return-void
.end method

.method public setPlay_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->play_url:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->preview:Ljava/lang/String;

    return-void
.end method

.method public setThumb_hor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_hor:Ljava/lang/String;

    return-void
.end method

.method public setThumb_longview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_longview:Ljava/lang/String;

    return-void
.end method

.method public setThumb_series(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_series:Ljava/util/List;

    return-void
.end method

.method public setThumb_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumb_ver:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setWebp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->webp:Ljava/lang/String;

    return-void
.end method

.method public setWebp_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->webp_count:I

    return-void
.end method
