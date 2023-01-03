.class public Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostVideoFileEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;,
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public comefrom:Ljava/lang/String;

.field public createTimestamp:J

.field public filename:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public overwrite:Ljava/lang/String;

.field public postparam:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;

.field public rule:Ljava/lang/String;

.field public status:I

.field public final synthetic this$3:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

.field public updateTimestamp:J

.field public upload_uid:Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public video:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->this$3:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getComefrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->comefrom:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->createTimestamp:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->overwrite:Ljava/lang/String;

    return-object v0
.end method

.method public getPostparam()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->postparam:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->rule:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->status:I

    return v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->updateTimestamp:J

    return-wide v0
.end method

.method public getUpload_uid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->upload_uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->video:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->category:Ljava/lang/String;

    return-void
.end method

.method public setComefrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->comefrom:Ljava/lang/String;

    return-void
.end method

.method public setCreateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->createTimestamp:J

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->filename:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->overwrite:Ljava/lang/String;

    return-void
.end method

.method public setPostparam(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->postparam:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;

    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->rule:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->status:I

    return-void
.end method

.method public setUpdateTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->updateTimestamp:J

    return-void
.end method

.method public setUpload_uid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->upload_uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->user:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->video:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$VideoEntity;

    return-void
.end method
