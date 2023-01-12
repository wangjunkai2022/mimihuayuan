.class public Lcom/comeback/data/ui/sex8/bean/LouFengDetail;
.super Lf/e/a/f/k;
.source "LouFengDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;

.field public is_collect:I

.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->data:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;

    return-object v0
.end method

.method public getIs_collect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->is_collect:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->status:I

    return v0
.end method

.method public setData(Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->data:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;

    return-void
.end method

.method public setIs_collect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->is_collect:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->status:I

    return-void
.end method
