.class public Lcom/comeback/data/ui/slf/fragment/ImageFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ImageFragment.java"


# instance fields
.field public i:Z

.field public rvCategories:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/slf/fragment/ImageFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0131

    return v0
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/slf/adapter/ImageAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lcom/comeback/data/ui/slf/fragment/ImageFragment$c;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/fragment/ImageFragment$c;-><init>(Lcom/comeback/data/ui/slf/fragment/ImageFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/slf/fragment/ImageFragment;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/k0/h/a;->r(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/slf/fragment/ImageFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/fragment/ImageFragment$a;-><init>(Lcom/comeback/data/ui/slf/fragment/ImageFragment;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 5
    :cond_0
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lf/i/b/r;->d(Ljava/lang/String;Ljava/lang/Number;)V

    .line 7
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object p1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/k0/h/a;->i(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/slf/fragment/ImageFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/fragment/ImageFragment$b;-><init>(Lcom/comeback/data/ui/slf/fragment/ImageFragment;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090301

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Xg8CAw4="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/slf/SearchActivity;->x(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
