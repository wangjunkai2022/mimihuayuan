.class public Lcom/comeback/data/ui/isiyu/SearchActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "SearchActivity.java"


# instance fields
.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvRecommend:Landroidx/recyclerview/widget/RecyclerView;
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

.method public static synthetic r(Lcom/comeback/data/ui/isiyu/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/isiyu/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static w(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/isiyu/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0074

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/u/b;

    invoke-direct {v1, p0}, Lf/e/a/j/u/b;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V

    .line 2
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/u/c;

    invoke-direct {v1, p0}, Lf/e/a/j/u/c;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/ui/isiyu/SearchActivity;->m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v0, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 7
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/isiyu/SearchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/isiyu/SearchActivity$a;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/u/a;

    invoke-direct {v1, p0}, Lf/e/a/j/u/a;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 10
    invoke-static {}, Lf/e/a/j/u/e/e;->a()Lf/e/a/j/u/e/b;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/u/e/b;->g()Lm/e;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/comeback/data/ui/isiyu/SearchActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/isiyu/SearchActivity$b;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

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
    .locals 6

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lf/e/a/j/u/e/e;->a()Lf/e/a/j/u/e/b;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "RwMEAQ=="

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    const-string v5, "WwsODR8="

    invoke-static {v4, v2, v3, v5}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BlQ="

    .line 7
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "QwsXCA4="

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v1, v2}, Lf/e/a/j/u/e/b;->a(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/comeback/data/ui/isiyu/SearchActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/isiyu/SearchActivity$c;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity;I)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic t(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/isiyu/SearchActivity;->p(I)V

    return-void
.end method

.method public synthetic u(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/isiyu/SearchActivity;->p(I)V

    return-void
.end method

.method public synthetic v(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/isiyu/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
