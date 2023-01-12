.class public Lcom/comeback/data/ui/fulao2/SearchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList2:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/fulao2/SearchActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/comeback/data/ui/fulao2/bean/VideoList;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/fulao2/adapter/SearchHintAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fulao2/adapter/SearchHintAdapter;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-virtual {p2}, Lcom/comeback/data/ui/fulao2/bean/VideoList;->getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;->getVideos()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/fulao2/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0051

    return v0
.end method

.method public e()V
    .locals 8

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/l/b;

    invoke-direct {v1, p0}, Lf/e/a/j/l/b;-><init>(Lcom/comeback/data/ui/fulao2/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v0

    const-string v1, "QgwACx0WSw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lf/e/a/j/l/h/b;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v1

    const-string v2, "VA0VARk="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lf/e/a/j/l/h/b;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/comeback/data/ui/fulao2/SearchActivity$a;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/fulao2/SearchActivity$a;-><init>(Lcom/comeback/data/ui/fulao2/SearchActivity;)V

    .line 6
    new-instance v3, Lcom/comeback/data/ui/fulao2/SearchActivity$b;

    invoke-direct {v3, p0}, Lcom/comeback/data/ui/fulao2/SearchActivity$b;-><init>(Lcom/comeback/data/ui/fulao2/SearchActivity;)V

    .line 7
    invoke-virtual {p0, v0, v2}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 8
    invoke-virtual {p0, v1, v3}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic m(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/comeback/data/ui/fulao2/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
