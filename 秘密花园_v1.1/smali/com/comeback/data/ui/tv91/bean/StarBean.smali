.class public Lcom/comeback/data/ui/tv91/bean/StarBean;
.super Lf/e/a/f/j;
.source "StarBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;
    }
.end annotation


# instance fields
.field public Code:Ljava/lang/String;

.field public Message:Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;

.field public Result:I


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
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Message:Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Result:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Message:Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean;->Result:I

    return-void
.end method
