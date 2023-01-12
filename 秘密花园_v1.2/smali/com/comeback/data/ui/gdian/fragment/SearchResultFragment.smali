.class public Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "SearchResultFragment.java"


# instance fields
.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic o(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic p(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic q(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic r(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static s(ILjava/lang/String;)Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "QxsTAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "XAca"

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XAca"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QxsTAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->j:I

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->j:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/gdian/adapter/NovelAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/gdian/adapter/NovelAdapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

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

    return-object v0
.end method

.method public l(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->j:I

    const-string v1, "WwMXARgH"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lf/e/a/j/m/e/e;->a()Lf/e/a/j/m/e/b;

    move-result-object v0

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v3, p1, v2}, Lf/e/a/j/m/e/b;->d(Ljava/lang/String;IILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lf/e/a/j/m/d/a;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/m/d/a;-><init>(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;I)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lf/e/a/j/m/e/e;->a()Lf/e/a/j/m/e/b;

    move-result-object v0

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v3, p1, v2}, Lf/e/a/j/m/e/b;->h(Ljava/lang/String;IILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lf/e/a/j/m/d/b;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/m/d/b;-><init>(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;I)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lf/e/a/j/m/e/e;->a()Lf/e/a/j/m/e/b;

    move-result-object v2

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;->i:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x14

    move v6, p1

    invoke-interface/range {v2 .. v7}, Lf/e/a/j/m/e/b;->c(ILjava/lang/String;IILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lf/e/a/j/m/d/c;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/m/d/c;-><init>(Lcom/comeback/data/ui/gdian/fragment/SearchResultFragment;I)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    :goto_0
    return-void
.end method
