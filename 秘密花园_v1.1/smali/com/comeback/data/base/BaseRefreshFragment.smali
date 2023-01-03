.class public abstract Lcom/comeback/data/base/BaseRefreshFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "BaseRefreshFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/base/BaseRefreshFragment$a;
    }
.end annotation


# instance fields
.field public g:I

.field public h:Lcom/comeback/data/base/BaseAbstractAdapter;

.field public mRvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
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
    iput v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00cf

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/f/d;

    invoke-direct {v1, p0}, Lf/e/a/f/d;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    .line 2
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/f/e;

    invoke-direct {v1, p0}, Lf/e/a/f/e;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->h()Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public abstract h()Lcom/comeback/data/base/BaseAbstractAdapter;
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic j(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment;->l(I)V

    return-void
.end method

.method public synthetic k(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment;->l(I)V

    return-void
.end method

.method public abstract l(I)V
.end method
