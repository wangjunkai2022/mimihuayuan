.class public Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;
.super Ljava/lang/Object;
.source "StreamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;
    }
.end annotation


# instance fields
.field public pull_url:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity;

.field public watermark:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;->this$1:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPull_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;->pull_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;->watermark:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;

    return-object v0
.end method

.method public setPull_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;->pull_url:Ljava/lang/String;

    return-void
.end method

.method public setWatermark(Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;->watermark:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;

    return-void
.end method
