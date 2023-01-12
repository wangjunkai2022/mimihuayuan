.class public Lcom/comeback/data/ui/cm/bean/ScreenBean;
.super Lf/e/a/f/k;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public rescont:Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;


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
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRescont()Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->rescont:Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRescont(Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean;->rescont:Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;

    return-void
.end method
