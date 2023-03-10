.class public abstract Lcom/comeback/data/base/BaseVRefreshActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "BaseVRefreshActivity.java"


# instance fields
.field public d:Lcom/alibaba/android/vlayout/DelegateAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/f/f;

    invoke-direct {v1, p0}, Lf/e/a/f/f;-><init>(Lcom/comeback/data/base/BaseVRefreshActivity;)V

    .line 2
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/f/g;

    invoke-direct {v1, p0}, Lf/e/a/f/g;-><init>(Lcom/comeback/data/base/BaseVRefreshActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 7
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v1, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    iput-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 2
    iget-object v0, v0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->g()V

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic s(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity;->p(I)V

    return-void
.end method

.method public synthetic t(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity;->p(I)V

    return-void
.end method
