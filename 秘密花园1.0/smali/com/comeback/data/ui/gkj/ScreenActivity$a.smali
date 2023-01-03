.class public Lcom/comeback/data/ui/gkj/ScreenActivity$a;
.super Lm/j;
.source "ScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/ScreenActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/ScreenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/ScreenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/ScreenActivity$a;->e:Lcom/comeback/data/ui/gkj/ScreenActivity;

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
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ScreenBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ScreenActivity$a;->e:Lcom/comeback/data/ui/gkj/ScreenActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

    new-instance v2, Lf/e/a/j/m/f;

    invoke-direct {v2, v0}, Lf/e/a/j/m/f;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/gkj/adapter/TagAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/TagAdapter$a;)V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->d:Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->d:Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->getType()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    new-instance v2, Lf/e/a/j/m/m;

    invoke-direct {v2, v0}, Lf/e/a/j/m/m;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;)V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 9
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->getType()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->a(Ljava/util/List;)V

    .line 11
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList3:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    new-instance v2, Lf/e/a/j/m/c;

    invoke-direct {v2, v0}, Lf/e/a/j/m/c;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter$a;)V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->f:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    .line 13
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->f:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->getState()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 15
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList4:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    new-instance v2, Lf/e/a/j/m/h;

    invoke-direct {v2, v0}, Lf/e/a/j/m/h;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter$a;)V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->g:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    .line 17
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList4:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->g:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->getPay()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 19
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList5:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    new-instance v2, Lf/e/a/j/m/d;

    invoke-direct {v2, v0}, Lf/e/a/j/m/d;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter$a;)V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->h:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    .line 21
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList5:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->h:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->getSort()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 23
    iget-object p1, v0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
