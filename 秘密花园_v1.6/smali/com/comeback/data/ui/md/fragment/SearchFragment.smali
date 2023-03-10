.class public Lcom/comeback/data/ui/md/fragment/SearchFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "SearchFragment.java"


# instance fields
.field public i:Ljava/lang/String;

.field public searchInput:Landroid/widget/EditText;
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

.method public static synthetic m(Lcom/comeback/data/ui/md/fragment/SearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/md/fragment/SearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c012b

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/md/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/md/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

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
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "WwsQEDQBVkQ="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVI="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RwMEAQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/md/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAcaEwQBXQ=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/md/fragment/SearchFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lf/e/a/j/e0/d/e;->b()Lf/e/a/j/e0/d/b;

    move-result-object v1

    invoke-static {v0}, Lf/e/a/j/e0/d/d;->a(Ljava/util/TreeMap;)Ljava/util/Map;

    invoke-interface {v1, v0}, Lf/e/a/j/e0/d/b;->a(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/md/fragment/SearchFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/md/fragment/SearchFragment$a;-><init>(Lcom/comeback/data/ui/md/fragment/SearchFragment;I)V

    .line 8
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 9
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 11
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k()Lf/j/a/a/f/i;

    return-void
.end method
