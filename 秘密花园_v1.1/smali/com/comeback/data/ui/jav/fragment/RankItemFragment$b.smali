.class public Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;
.super Ljava/lang/Object;
.source "RankItemFragment.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->o(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;Z)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 5
    iget p1, p1, Li/h0;->e:I

    const/16 v1, 0x12c

    if-le p1, v1, :cond_0

    const-string p1, "BFJTRA4BS1wB"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 10
    iget-boolean p2, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 12
    iput-boolean v0, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    .line 13
    invoke-static {p1}, Lf/e/a/j/u/e/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 15
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 16
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 17
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 18
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    new-instance p2, Lcom/comeback/data/ui/jav/adapter/ActorAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/comeback/data/ui/jav/adapter/ActorAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 22
    iput-object p2, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 23
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 24
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 26
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 27
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 29
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 30
    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lf/e/a/j/u/e/a;->d(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoList;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/VideoList;->isVertical()Z

    move-result v0

    .line 33
    iput-boolean v0, p2, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    .line 34
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 35
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 36
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 37
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 38
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 41
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 43
    new-instance v1, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, v0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    invoke-direct {v1, v2, v3}, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 44
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 46
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 47
    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "aD08ARkBVkFJ"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->m(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;Z)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;->a:Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method
