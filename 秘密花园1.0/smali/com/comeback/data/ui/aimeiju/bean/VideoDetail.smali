.class public Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;
.super Lf/e/a/f/j;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->data:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->data:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    return-void
.end method
