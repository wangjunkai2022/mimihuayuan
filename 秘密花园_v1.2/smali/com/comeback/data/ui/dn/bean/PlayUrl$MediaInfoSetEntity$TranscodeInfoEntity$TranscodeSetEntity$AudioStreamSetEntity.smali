.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioStreamSetEntity"
.end annotation


# instance fields
.field public Bitrate:I

.field public Codec:Ljava/lang/String;

.field public SamplingRate:I

.field public final synthetic this$3:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->this$3:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->Bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->Codec:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->SamplingRate:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->Bitrate:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->Codec:Ljava/lang/String;

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity$AudioStreamSetEntity;->SamplingRate:I

    return-void
.end method
