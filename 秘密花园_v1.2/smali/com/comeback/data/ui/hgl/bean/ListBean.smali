.class public Lcom/comeback/data/ui/hgl/bean/ListBean;
.super Lf/e/a/f/k;
.source "ListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;

.field public msg:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->data:Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->ret:I

    return v0
.end method

.method public setData(Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->data:Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean;->ret:I

    return-void
.end method
