.class public Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListEntity"
.end annotation


# instance fields
.field public blurredUrl:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public lastReadUserHeadImgUrl:Ljava/lang/String;

.field public lastReadUserId:Ljava/lang/String;

.field public read:Z

.field public readingCount:I

.field public final synthetic this$2:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->this$2:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurredUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->blurredUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->coverUrl:Ljava/lang/String;

    const-string v2, "GRYbEA=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReadUserHeadImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->lastReadUserHeadImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReadUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->lastReadUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->readingCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->read:Z

    return v0
.end method

.method public setBlurredUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->blurredUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->duration:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setLastReadUserHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->lastReadUserHeadImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastReadUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->lastReadUserId:Ljava/lang/String;

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->read:Z

    return-void
.end method

.method public setReadingCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->readingCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->url:Ljava/lang/String;

    return-void
.end method
