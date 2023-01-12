.class public Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;
.super Ljava/lang/Object;
.source "StreamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatermarkEntity"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;->this$2:Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/StreamBean$DataEntity$StreamEntity$WatermarkEntity;->type:I

    return-void
.end method
