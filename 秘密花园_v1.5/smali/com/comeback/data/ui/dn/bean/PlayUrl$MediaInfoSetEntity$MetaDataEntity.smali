.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetaDataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$VideoStreamSetEntity;,
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$AudioStreamSetEntity;
    }
.end annotation


# instance fields
.field public AudioDuration:D

.field public AudioStreamSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$AudioStreamSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public Bitrate:I

.field public Container:Ljava/lang/String;

.field public Duration:D

.field public Height:I

.field public Rotate:I

.field public Size:I

.field public VideoDuration:D

.field public VideoStreamSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$VideoStreamSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public Width:I

.field public final synthetic this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->AudioDuration:D

    return-wide v0
.end method

.method public getAudioStreamSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$AudioStreamSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->AudioStreamSet:Ljava/util/List;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Bitrate:I

    return v0
.end method

.method public getContainer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Duration:D

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Height:I

    return v0
.end method

.method public getRotate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Rotate:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Size:I

    return v0
.end method

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->VideoDuration:D

    return-wide v0
.end method

.method public getVideoStreamSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$VideoStreamSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->VideoStreamSet:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Width:I

    return v0
.end method

.method public setAudioDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->AudioDuration:D

    return-void
.end method

.method public setAudioStreamSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$AudioStreamSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->AudioStreamSet:Ljava/util/List;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Bitrate:I

    return-void
.end method

.method public setContainer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Container:Ljava/lang/String;

    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Duration:D

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Height:I

    return-void
.end method

.method public setRotate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Rotate:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Size:I

    return-void
.end method

.method public setVideoDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->VideoDuration:D

    return-void
.end method

.method public setVideoStreamSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity$VideoStreamSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->VideoStreamSet:Ljava/util/List;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$MetaDataEntity;->Width:I

    return-void
.end method
