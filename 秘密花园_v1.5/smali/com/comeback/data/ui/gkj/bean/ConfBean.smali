.class public Lcom/comeback/data/ui/gkj/bean/ConfBean;
.super Lf/e/a/f/k;
.source "ConfBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public content:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->code:I

    return v0
.end method

.method public getContent()Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->content:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->code:I

    return-void
.end method

.method public setContent(Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->content:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean;->message:Ljava/lang/String;

    return-void
.end method
