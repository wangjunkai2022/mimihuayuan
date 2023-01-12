.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranscodeInfoEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;
    }
.end annotation


# instance fields
.field public TranscodeSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;->this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranscodeSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;->TranscodeSet:Ljava/util/List;

    return-object v0
.end method

.method public setTranscodeSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;->TranscodeSet:Ljava/util/List;

    return-void
.end method
