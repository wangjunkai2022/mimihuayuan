.class public Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "HomeTypeFragment.java"


# instance fields
.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic o(Lcom/comeback/data/ui/md/bean/MdApiBean;)Lm/e;
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/d0/d/e;->b()Lf/e/a/j/d0/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/md/bean/MdApiBean;->getData()Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;->getFile_name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lf/e/a/j/d0/d/b;->b(Ljava/lang/String;)Lm/e;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "VAoCCgUWVQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VAoCCgUWVQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;->i:Ljava/lang/String;

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

    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAoCCgUWVQ=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "WwsQEDQBVkQ="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BVI="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QxsTAQ=="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lf/e/a/j/d0/d/e;->b()Lf/e/a/j/d0/d/b;

    move-result-object v1

    invoke-static {v0}, Lf/e/a/j/d0/d/d;->a(Ljava/util/TreeMap;)Ljava/util/Map;

    invoke-interface {v1, v0}, Lf/e/a/j/d0/d/b;->d(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/md/fragment/HomeTypeFragment$a;-><init>(Lcom/comeback/data/ui/md/fragment/HomeTypeFragment;I)V

    .line 9
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 10
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    sget-object v0, Lf/e/a/j/d0/c/a;->a:Lf/e/a/j/d0/c/a;

    .line 11
    invoke-virtual {p1, v0}, Lm/e;->a(Lm/n/c;)Lm/e;

    move-result-object p1

    .line 12
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 14
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    return-void
.end method
