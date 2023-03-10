.class public Lcom/comeback/data/ui/km/CollectListActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "CollectListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/km/CollectListActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseRefreshActivity;->q(Z)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/ui/km/CollectListActivity;->m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/km/VideoListAdapter;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/km/VideoListAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 6
    iget-object v2, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v1

    invoke-static {v1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v1

    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v1, v2}, Lf/e/a/k/g;->e(Ljava/lang/Class;)Lg/a/j0;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_0
    invoke-virtual {v1}, Lg/a/u;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 11
    invoke-virtual {v1, v0}, Lg/a/u;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2, v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/km/VideoListAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/km/VideoListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    return-object v0
.end method

.method public p(I)V
    .locals 0

    return-void
.end method
