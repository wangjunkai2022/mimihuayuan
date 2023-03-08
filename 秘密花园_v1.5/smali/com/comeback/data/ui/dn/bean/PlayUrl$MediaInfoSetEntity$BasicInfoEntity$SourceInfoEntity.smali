.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceInfoEntity"
.end annotation


# instance fields
.field public SourceContext:Ljava/lang/String;

.field public SourceType:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;->this$2:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourceContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;->SourceContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;->SourceType:Ljava/lang/String;

    return-object v0
.end method

.method public setSourceContext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;->SourceContext:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;->SourceType:Ljava/lang/String;

    return-void
.end method
