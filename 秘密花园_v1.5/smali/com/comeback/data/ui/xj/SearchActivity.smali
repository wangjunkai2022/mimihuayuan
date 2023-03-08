.class public Lcom/comeback/data/ui/xj/SearchActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "SearchActivity.java"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lcom/comeback/data/ui/xj/bean/SearchResult;

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
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic u(Lcom/comeback/data/ui/xj/SearchActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/xj/SearchActivity;->x(Z)V

    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/xj/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00cb

    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "FFBVVlJBfw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;->e()V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/s0/b;

    invoke-direct {v1, p0}, Lf/e/a/j/s0/b;-><init>(Lcom/comeback/data/ui/xj/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/xj/SearchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xj/SearchActivity$a;-><init>(Lcom/comeback/data/ui/xj/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lf/e/a/j/s0/g/b;->a()Lf/e/a/j/s0/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/xj/SearchActivity;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lf/e/a/j/s0/g/a;->d(ILjava/lang/String;)Lm/e;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity;->f:Lcom/comeback/data/ui/xj/bean/SearchResult;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/comeback/data/ui/xj/SearchActivity$b;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/xj/SearchActivity$b;-><init>(Lcom/comeback/data/ui/xj/SearchActivity;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->d()V

    .line 7
    :cond_1
    new-instance p1, Lcom/comeback/data/ui/xj/SearchActivity$c;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/xj/SearchActivity$c;-><init>(Lcom/comeback/data/ui/xj/SearchActivity;)V

    .line 8
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic v(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/comeback/data/ui/xj/SearchActivity;->e:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/xj/SearchActivity;->x(Z)V

    .line 4
    iput p3, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    .line 5
    invoke-virtual {p0, p3}, Lcom/comeback/data/ui/xj/SearchActivity;->p(I)V

    :cond_0
    return p3

    :cond_1
    return p1
.end method

.method public synthetic w(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/xj/SearchActivity;->x(Z)V

    .line 3
    iput-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/xj/SearchActivity;->p(I)V

    return-void
.end method

.method public final x(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity;->tvNoResult:Landroid/view/View;

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
