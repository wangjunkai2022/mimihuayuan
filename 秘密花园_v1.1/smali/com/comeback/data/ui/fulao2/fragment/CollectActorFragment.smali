.class public Lcom/comeback/data/ui/fulao2/fragment/CollectActorFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "CollectActorFragment.java"


# instance fields
.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f6

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/fragment/CollectActorFragment;->e()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {v0, v1}, Lf/e/a/k/g;->e(Ljava/lang/Class;)Lg/a/j0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/CollectActorFragment;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/CollectActorFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v2, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v1, Lcom/comeback/data/ui/fulao2/adapter/ActorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/comeback/data/ui/fulao2/adapter/ActorAdapter;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/fragment/CollectActorFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 10
    invoke-virtual {v0, v3}, Lg/a/u;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
