.class public Lcom/comeback/data/ui/ins/fragment/SearchFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "SearchFragment.java"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Z

.field public kmColorAccent:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public searchInput:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public thirdText:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public tvImage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvVideo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/ins/fragment/SearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/ins/fragment/SearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0113

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/r/d/a;

    invoke-direct {v1, p0}, Lf/e/a/j/r/d/a;-><init>(Lcom/comeback/data/ui/ins/fragment/SearchFragment;)V

    .line 2
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/r/d/b;

    invoke-direct {v1, p0}, Lf/e/a/j/r/d/b;-><init>(Lcom/comeback/data/ui/ins/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->h()Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/ins/adapter/ImageAdapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/ins/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    return-object v0
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k()Lf/j/a/a/f/i;

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lf/e/a/j/r/e/b;->a()Lf/e/a/j/r/e/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->o(I)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->u0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lf/e/a/j/r/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;-><init>(Lcom/comeback/data/ui/ins/fragment/SearchFragment;I)V

    .line 6
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 7
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 9
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lf/e/a/j/r/e/b;->a()Lf/e/a/j/r/e/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->o(I)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->u0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lf/e/a/j/r/e/a;->h(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/comeback/data/ui/ins/fragment/SearchFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment$b;-><init>(Lcom/comeback/data/ui/ins/fragment/SearchFragment;I)V

    .line 12
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 13
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 15
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    :goto_0
    return-void
.end method

.method public final o(I)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAsZAQ=="

    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x14

    const-string v2, "RA0REA=="

    .line 3
    invoke-static {v1, v0, p1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VhEA"

    const-string v2, "QxsTAQ=="

    .line 4
    invoke-static {v1, v0, p1, v2}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-boolean v1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "VA0NEA4dTQ=="

    invoke-static {v1, v0, p1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902c3

    if-eq p1, v0, :cond_2

    const v0, 0x7f090330

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->tvImage:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->thirdText:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->tvVideo:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->kmColorAccent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->j:Z

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->tvImage:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->kmColorAccent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->tvVideo:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->thirdText:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic p(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->l(I)V

    return-void
.end method

.method public synthetic q(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->l(I)V

    return-void
.end method
