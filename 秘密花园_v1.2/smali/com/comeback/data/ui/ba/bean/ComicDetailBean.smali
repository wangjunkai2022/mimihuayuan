.class public Lcom/comeback/data/ui/ba/bean/ComicDetailBean;
.super Lf/e/a/f/k;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;
    }
.end annotation


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public results:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;


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
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->results:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    return-object v0
.end method

.method public getSelf()Lcom/comeback/data/ui/ba/bean/ComicDetailBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->getResults()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->getComic_episodes()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResults(Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->results:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    return-void
.end method
