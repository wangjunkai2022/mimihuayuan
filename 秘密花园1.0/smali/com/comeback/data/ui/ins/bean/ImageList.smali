.class public Lcom/comeback/data/ui/ins/bean/ImageList;
.super Lf/e/a/f/j;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public data:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

.field public message:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->data:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->data:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->message:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList;->success:Z

    return-void
.end method
