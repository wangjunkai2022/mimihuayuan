.class public Lcom/comeback/data/ui/ba/bean/ReadBean;
.super Lf/e/a/f/j;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;
    }
.end annotation


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public results:Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;


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
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->results:Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResults(Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ReadBean;->results:Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;

    return-void
.end method
