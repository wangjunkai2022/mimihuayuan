.class public Lcom/comeback/data/ui/fengliu/bean/MMList2;
.super Lf/e/a/f/j;
.source "MMList2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;

.field public msg:Ljava/lang/String;


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
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->data:Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->data:Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2;->msg:Ljava/lang/String;

    return-void
.end method
