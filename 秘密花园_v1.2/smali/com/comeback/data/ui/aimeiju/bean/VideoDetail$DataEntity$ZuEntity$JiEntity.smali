.class public Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JiEntity"
.end annotation


# instance fields
.field public ext:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public purl:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->this$2:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->purl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->purl:Ljava/lang/String;

    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->purl:Ljava/lang/String;

    return-void
.end method
