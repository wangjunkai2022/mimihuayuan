.class public Lcom/comeback/data/ui/slf/SearchActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "SearchActivity.java"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public searchInput:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvNoResult:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/slf/SearchActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/SearchActivity;->w(Z)V

    return-void
.end method

.method public static synthetic s(Lcom/comeback/data/ui/slf/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic t(Lcom/comeback/data/ui/slf/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/slf/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QxsTAQ=="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QxsTAQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00bb

    return v0
.end method

.method public e()V
    .locals 3

    const-string v0, "FCQnUV5FDg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/k0/c;

    invoke-direct {v1, p0}, Lf/e/a/j/k0/c;-><init>(Lcom/comeback/data/ui/slf/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/slf/SearchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/SearchActivity$a;-><init>(Lcom/comeback/data/ui/slf/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lf/e/a/j/k0/h/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/slf/SearchActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/SearchActivity$b;-><init>(Lcom/comeback/data/ui/slf/SearchActivity;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v1, "Xg8CAw4="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/comeback/data/ui/slf/adapter/ImageAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v1, "VAMREAQcVw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/CartoonAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/adapter/CartoonAdapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v1, "QQsHAQQ="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/VideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v1, "VAMREAQcVw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v1, "QQsHAQQ="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    const-string v2, "Xg8CAw4="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "XAcaEwQBXUA="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/slf/SearchActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RwMEAQ=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->d(Ljava/lang/String;Ljava/lang/Number;)V

    .line 5
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/slf/SearchActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lf/e/a/j/k0/h/a;->d(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/slf/SearchActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/slf/SearchActivity$c;-><init>(Lcom/comeback/data/ui/slf/SearchActivity;I)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic u(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/SearchActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/SearchActivity;->w(Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic v(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/slf/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/comeback/data/ui/slf/SearchActivity;->d:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/SearchActivity;->w(Z)V

    .line 4
    iput p3, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    .line 5
    invoke-virtual {p0, p3}, Lcom/comeback/data/ui/slf/SearchActivity;->p(I)V

    :cond_0
    return p3

    :cond_1
    return p1
.end method

.method public final w(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/slf/SearchActivity;->tvNoResult:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method
