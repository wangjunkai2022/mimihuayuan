.class public Lcom/comeback/data/ui/xj/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HomeFragment.java"


# instance fields
.field public j:Lcom/comeback/data/ui/xj/bean/HomeData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c013a

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->j:Lcom/comeback/data/ui/xj/bean/HomeData;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k()Lf/j/a/a/f/i;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lf/e/a/j/r0/f/b;->a()Lf/e/a/j/r0/f/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/r0/f/a;->j()Lm/e;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/comeback/data/ui/xj/fragment/HomeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xj/fragment/HomeFragment$a;-><init>(Lcom/comeback/data/ui/xj/fragment/HomeFragment;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic p(Lf/e/a/g/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->x(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/xj/adapter/VTitle2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, v0}, Lcom/comeback/data/ui/xj/adapter/VTitle2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 5
    new-instance p2, Lf/a/a/a/l/g;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p2, v0}, Lf/a/a/a/l/g;->D(I)V

    .line 7
    invoke-virtual {p2, v0}, Lf/a/a/a/l/g;->C(I)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p2, Lf/a/a/a/l/g;->s:Z

    .line 9
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
