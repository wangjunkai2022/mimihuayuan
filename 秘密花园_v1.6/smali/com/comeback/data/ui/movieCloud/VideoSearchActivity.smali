.class public Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "VideoSearchActivity.java"


# instance fields
.field public e:Lcom/comeback/data/ui/movieCloud/bean/XXList;

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

.method public static A(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static u(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;Lcom/comeback/data/ui/movieCloud/bean/XXList;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lf/a/a/a/l/i;

    invoke-direct {v0}, Lf/a/a/a/l/i;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXList;->getData()Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean;->getVodrows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static v(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;Lcom/comeback/data/ui/movieCloud/bean/AMJList;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lf/a/a/a/l/i;

    invoke-direct {v0}, Lf/a/a/a/l/i;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/AMJList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00a7

    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/g0/d;

    invoke-direct {v1, p0}, Lf/e/a/j/g0/d;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V

    .line 3
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->z(Z)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/g0/e;

    invoke-direct {v1, p0}, Lf/e/a/j/g0/e;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 9
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v1, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    iput-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-static {}, Lf/e/a/j/g0/h/b;->a()Lf/e/a/j/g0/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/g0/h/a;->a()Lm/e;

    move-result-object v0

    .line 14
    new-instance v1, Lf/e/a/j/g0/f;

    invoke-direct {v1, p0}, Lf/e/a/j/g0/f;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/g0/c;

    invoke-direct {v1, p0}, Lf/e/a/j/g0/c;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$c;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$c;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->z(Z)V

    .line 3
    invoke-static {}, Lf/e/a/j/g0/h/b;->a()Lf/e/a/j/g0/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->f:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lf/e/a/j/g0/h/a;->b(ILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;I)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 6
    invoke-static {}, Lf/e/a/j/g0/h/b;->a()Lf/e/a/j/g0/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->f:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-interface {v0, v2, p1, v1}, Lf/e/a/j/g0/h/a;->d(IILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$b;-><init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;I)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic w(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->p(I)V

    return-void
.end method

.method public synthetic x(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->p(I)V

    return-void
.end method

.method public synthetic y(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->f:Ljava/lang/String;

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

.method public final z(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

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
