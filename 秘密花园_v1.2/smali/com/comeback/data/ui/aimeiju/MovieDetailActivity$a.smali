.class public Lcom/comeback/data/ui/aimeiju/MovieDetailActivity$a;
.super Lm/j;
.source "MovieDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getHits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvDirector:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getDaoyan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvScore:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getPf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getAllInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->tvStar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getZhuyan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;->getData()Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->getZu()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;->getJi()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13
    iget-object v2, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->llChapter:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v2, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 15
    iget-object p1, v0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;

    .line 18
    new-instance v3, Lcom/comeback/data/bean/PlayListBean;

    invoke-direct {v3}, Lcom/comeback/data/bean/PlayListBean;-><init>()V

    .line 19
    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/comeback/data/bean/PlayListBean;->setName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity$JiEntity;->getPurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/comeback/data/bean/PlayListBean;->setUri(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->m(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "3+zUgeTl36HegKDZnNXCjbbNhsDam42W"

    .line 24
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
