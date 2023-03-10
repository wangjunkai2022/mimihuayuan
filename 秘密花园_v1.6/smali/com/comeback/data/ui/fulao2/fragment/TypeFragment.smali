.class public Lcom/comeback/data/ui/fulao2/fragment/TypeFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "TypeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/fulao2/fragment/TypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/l/h/b;->i(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/fulao2/fragment/TypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fulao2/fragment/TypeFragment$a;-><init>(Lcom/comeback/data/ui/fulao2/fragment/TypeFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
