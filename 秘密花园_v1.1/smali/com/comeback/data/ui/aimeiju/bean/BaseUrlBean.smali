.class public Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;
.super Lf/e/a/f/j;
.source "BaseUrlBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;


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
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;->data:Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;->data:Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;

    return-void
.end method
