.class public Lcom/comeback/data/ui/bale/SearchResultActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "SearchResultActivity.java"


# instance fields
.field public d:Ljava/lang/String;

.field public tvTitle:Landroid/widget/TextView;
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

.method public static synthetic r(Lcom/comeback/data/ui/bale/SearchResultActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/bale/SearchResultActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/bale/SearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QwMEFw=="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QwMEFw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/bale/SearchResultActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c002f

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const-string v0, "FFNVVVNBCg=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/bale/SearchResultActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/bale/SearchResultActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/bale/adapter/Video2Adapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/bale/adapter/Video2Adapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/d/e/b;->a()Lf/e/a/j/d/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/bale/SearchResultActivity;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lf/e/a/j/d/e/a;->i(ILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/bale/SearchResultActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/bale/SearchResultActivity$a;-><init>(Lcom/comeback/data/ui/bale/SearchResultActivity;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
