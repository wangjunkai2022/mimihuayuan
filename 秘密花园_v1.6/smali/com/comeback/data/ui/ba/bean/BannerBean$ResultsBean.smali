.class public Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;
.super Ljava/lang/Object;
.source "BannerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ba/bean/BannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultsBean"
.end annotation


# instance fields
.field public recommend_url:Ljava/lang/String;

.field public show_detail_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommend_url()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->recommend_url:Ljava/lang/String;

    sget-object v1, Lf/e/a/k/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->recommend_url:Ljava/lang/String;

    sget-object v1, Lf/e/a/k/b;->Z:Ljava/lang/String;

    sget-object v2, Lf/e/a/k/b;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->recommend_url:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->recommend_url:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_detail_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->show_detail_id:I

    return v0
.end method

.method public setRecommend_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->recommend_url:Ljava/lang/String;

    return-void
.end method

.method public setShow_detail_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->show_detail_id:I

    return-void
.end method
