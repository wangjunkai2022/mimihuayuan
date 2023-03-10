.class public Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "HomeCollectFragment.java"


# instance fields
.field public g:Z

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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->g:Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00fb

    return v0
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->e()V

    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    invoke-static {}, Lf/e/a/j/r/f/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->g:Z

    .line 2
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v0, v1}, Lf/e/a/k/g;->e(Ljava/lang/Class;)Lg/a/j0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->tvHint:Landroid/widget/TextView;

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

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v1, Lcom/comeback/data/ui/hm/adapter/ListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/comeback/data/ui/hm/adapter/ListAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_1
    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 11
    invoke-virtual {v0, v3}, Lg/a/u;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    .line 12
    invoke-virtual {v4}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->isHm()Z

    move-result v5

    iget-boolean v6, p0, Lcom/comeback/data/ui/hm/fragment/HomeCollectFragment;->g:Z

    if-ne v5, v6, :cond_1

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_2
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
