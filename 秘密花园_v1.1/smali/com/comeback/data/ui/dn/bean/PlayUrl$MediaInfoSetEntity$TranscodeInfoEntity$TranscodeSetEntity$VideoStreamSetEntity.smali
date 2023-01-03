.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoStreamSetEntity"
.end annotation


# instance fields
.field public Bitrate:I

.field public Codec:Ljava/lang/String;

.field public Fps:I

.field public Height:I

.field public Width:I

.field public final synthetic this$3:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->this$3:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Codec:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Width:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Bitrate:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Codec:Ljava/lang/String;

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Fps:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$VideoStreamSetEntity;->Width:I

    return-void
.end method
