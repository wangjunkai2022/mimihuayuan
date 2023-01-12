.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranscodeSetEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;,
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;
    }
.end annotation


# instance fields
.field public AudioStreamSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public Bitrate:I

.field public Container:Ljava/lang/String;

.field public Definition:I

.field public Duration:D

.field public Height:I

.field public Md5:Ljava/lang/String;

.field public Size:I

.field public Url:Ljava/lang/String;

.field public VideoStreamSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public Width:I

.field public final synthetic this$2:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->this$2:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioStreamSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->AudioStreamSet:Ljava/util/List;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Bitrate:I

    return v0
.end method

.method public getContainer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public getDefinition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Definition:I

    return v0
.end method

.method public getDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Duration:D

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Height:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Size:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStreamSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->VideoStreamSet:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Width:I

    return v0
.end method

.method public setAudioStreamSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->AudioStreamSet:Ljava/util/List;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Bitrate:I

    return-void
.end method

.method public setContainer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Container:Ljava/lang/String;

    return-void
.end method

.method public setDefinition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Definition:I

    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Duration:D

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Height:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Md5:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Size:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Url:Ljava/lang/String;

    return-void
.end method

.method public setVideoStreamSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->VideoStreamSet:Ljava/util/List;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->Width:I

    return-void
.end method
