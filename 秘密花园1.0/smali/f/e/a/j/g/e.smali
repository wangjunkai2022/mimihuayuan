.class public Lf/e/a/j/g/e;
.super Lm/j;
.source "MovieDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/StarWork;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g/e;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/StarWork;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/StarWork;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/e/a/j/g/e;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/StarWork;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;

    .line 4
    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rlStar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->getActorDTO()Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    move-result-object v2

    iput-object v2, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    .line 6
    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivStarHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v2, v3}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getNameCn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarIntro:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getBriefIntroduction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarWork:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-virtual {v4}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getVideosCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "F4vgzI7OiNT64Q=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v2, Lcom/comeback/data/ui/cucumber/adapter/VideoList2Adapter;

    invoke-direct {v2, v0}, Lcom/comeback/data/ui/cucumber/adapter/VideoList2Adapter;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v3, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvStarWork:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v3, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvStarWork:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->getMovieList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lf/e/a/j/g/e;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rlStar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
