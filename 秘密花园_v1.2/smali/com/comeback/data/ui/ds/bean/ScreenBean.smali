.class public Lcom/comeback/data/ui/ds/bean/ScreenBean;
.super Lf/e/a/f/k;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;
    }
.end annotation


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public result:Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;

.field public succ:Z


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
    iget v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->result:Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;

    return-object v0
.end method

.method public isSucc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->succ:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->result:Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;

    return-void
.end method

.method public setSucc(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean;->succ:Z

    return-void
.end method
