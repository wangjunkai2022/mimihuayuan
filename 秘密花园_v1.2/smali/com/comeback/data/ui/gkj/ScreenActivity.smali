.class public Lcom/comeback/data/ui/gkj/ScreenActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ScreenActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

.field public e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

.field public f:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

.field public g:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

.field public h:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

.field public rvList1:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList2:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList3:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList4:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList5:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/gkj/ScreenActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/gkj/ScreenActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/gkj/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic t(Lcom/comeback/data/ui/gkj/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c005f

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/n/e;

    invoke-direct {v1, p0}, Lf/e/a/j/n/e;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    .line 3
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/n/g;

    invoke-direct {v1, p0}, Lf/e/a/j/n/g;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/ui/gkj/ScreenActivity;->m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 8
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-static {}, Lf/e/a/j/n/p/e;->b()Lf/e/a/j/n/p/c;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lf/e/a/j/n/p/c;->f(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/comeback/data/ui/gkj/ScreenActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gkj/ScreenActivity$a;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 8

    .line 1
    invoke-static {}, Lf/e/a/j/n/p/e;->b()Lf/e/a/j/n/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->d:Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

    .line 2
    iget-object v2, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 3
    iget v1, v1, Lcom/comeback/data/ui/gkj/adapter/TagAdapter;->d:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 5
    iget-object v3, v2, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 6
    iget v2, v2, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;->getId()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->f:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->g:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {v4}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->h:Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;

    invoke-virtual {v5}, Lcom/comeback/data/ui/gkj/adapter/Tag3Adapter;->f()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "UA4MBgofZkcKFlE="

    .line 9
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QxsTATQaXQ=="

    .line 10
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RBYCEA4="

    .line 11
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XhE8FAoK"

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RA0REA=="

    .line 13
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WwsODR8="

    .line 14
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlA="

    const-string v3, "RwMEAQ=="

    invoke-static {v2, v6, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v0, v6}, Lf/e/a/j/n/p/c;->a(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/comeback/data/ui/gkj/ScreenActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/gkj/ScreenActivity$b;-><init>(Lcom/comeback/data/ui/gkj/ScreenActivity;I)V

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->d:Lcom/comeback/data/ui/gkj/adapter/TagAdapter;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ScreenActivity;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->a(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic v(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic w(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic x(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic y(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/gkj/ScreenActivity;->p(I)V

    return-void
.end method

.method public synthetic z(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/gkj/ScreenActivity;->p(I)V

    return-void
.end method
