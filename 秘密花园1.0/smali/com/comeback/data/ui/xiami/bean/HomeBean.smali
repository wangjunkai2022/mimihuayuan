.class public Lcom/comeback/data/ui/xiami/bean/HomeBean;
.super Lf/e/a/f/j;
.source "HomeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;

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
    iget v0, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->data:Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->data:Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/HomeBean;->msg:Ljava/lang/String;

    return-void
.end method
