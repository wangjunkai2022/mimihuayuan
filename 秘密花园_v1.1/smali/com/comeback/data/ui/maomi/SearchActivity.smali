.class public Lcom/comeback/data/ui/maomi/SearchActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "SearchActivity.java"


# instance fields
.field public e:Lcom/comeback/data/ui/maomi/bean/HotWords;

.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Z

.field public rvHot:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;-><init>()V

    return-void
.end method

.method public static u(Lcom/comeback/data/ui/maomi/SearchActivity;Lcom/comeback/data/ui/maomi/bean/SearchResult;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lf/a/a/a/l/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v1, v2}, Lf/a/a/a/l/j;->q(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Lf/a/a/a/l/g;->D(I)V

    .line 4
    invoke-virtual {v0, v1}, Lf/a/a/a/l/g;->C(I)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SearchResult;->getData()Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static z(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/comeback/data/ui/maomi/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c009f

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/c0/d;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/d;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;)V

    .line 3
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/maomi/SearchActivity;->y(Z)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lf/e/a/j/c0/c;

    invoke-direct {v2, p0}, Lf/e/a/j/c0/c;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 9
    new-instance v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v1, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v2, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v2, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v2, v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    iput-object v2, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 12
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->e:Lcom/comeback/data/ui/maomi/bean/HotWords;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "QxsTAQ=="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "RwMEAQ=="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 18
    :goto_0
    invoke-static {}, Lf/e/a/j/c0/m/d;->a()Lf/e/a/j/c0/m/a;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/e/a/j/c0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/c0/m/a;->k(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 19
    new-instance v1, Lf/e/a/j/c0/h;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/h;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;)V

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/c0/b;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/b;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/maomi/SearchActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/SearchActivity$b;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/maomi/SearchActivity;->y(Z)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "XAcaEwQBXQ=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RwMEAQ=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {}, Lf/e/a/j/c0/m/d;->a()Lf/e/a/j/c0/m/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/c0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/c0/m/a;->n(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/maomi/SearchActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/SearchActivity$a;-><init>(Lcom/comeback/data/ui/maomi/SearchActivity;I)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic v(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/maomi/SearchActivity;->p(I)V

    return-void
.end method

.method public synthetic w(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/maomi/SearchActivity;->p(I)V

    return-void
.end method

.method public synthetic x(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->f:Ljava/lang/String;

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

.method public final y(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

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

    return-void
.end method
