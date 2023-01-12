.class public Lcom/comeback/data/ui/ba/fragment/RecommendFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "RecommendFragment.java"


# instance fields
.field public banner:Lcom/youth/banner/Banner;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/comeback/data/ui/ba/bean/ComicListBean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;

.field public radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f6

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/c/g/a;->e()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/ba/fragment/RecommendFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment$a;-><init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    const-string v0, "Qw0MCg=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/c/g/a;->d(Ljava/lang/String;)Lm/e;

    move-result-object v1

    .line 6
    new-instance v2, Lf/e/a/j/c/f/c;

    invoke-direct {v2, p0, v0}, Lf/e/a/j/c/f/c;-><init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->h:Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/c/f/b;

    invoke-direct {v1, p0}, Lf/e/a/j/c/f/b;-><init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic h(Lcom/comeback/data/ui/ba/bean/BannerBean;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BannerBean;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;

    .line 2
    new-instance p2, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-direct {p2}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->getShow_detail_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->setShow_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BannerBean$ResultsBean;->getRecommend_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->setSmall_picture(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/comeback/data/ui/ba/ComicReadActivity;->q(Landroid/content/Context;Lcom/comeback/data/ui/ba/bean/BaComicsBean;)V

    return-void
.end method

.method public synthetic i(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0901cd

    if-eq p2, p1, :cond_2

    const p1, 0x7f0901d1

    if-eq p2, p1, :cond_1

    const p1, 0x7f0901d6

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "WQcU"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "VA0OFAcWTVY="

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Qw0MCg=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->k(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->h:Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->h:Lcom/comeback/data/ui/ba/adapter/RealTimeAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ba/bean/ComicListBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ComicListBean;->getResults()Lcom/comeback/data/ui/ba/bean/ComicListBean$ResultsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ComicListBean$ResultsBean;->getComics()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/ba/bean/ComicListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/c/g/a;->d(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    new-instance v1, Lf/e/a/j/c/f/c;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/c/f/c;-><init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    :goto_0
    return-void
.end method
