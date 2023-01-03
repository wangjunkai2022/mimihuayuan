.class public Lcom/comeback/data/ui/km/VideoFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "VideoFragment.java"


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/km/VideoFragment;Lcom/comeback/data/ui/km/bean/KMVideoList;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/KMVideoList;->getData()Lcom/comeback/data/ui/km/bean/KMVideoList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/KMVideoList$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public static n(Z)Lcom/comeback/data/ui/km/VideoFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XhErCx8="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/km/VideoFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/km/VideoFragment;-><init>()V

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

    const-string v1, "XhErCx8="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/km/VideoFragment;->i:Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/comeback/data/widget/RecycleGridDivider;

    invoke-direct {v1}, Lcom/comeback/data/widget/RecycleGridDivider;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/km/VideoListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/km/VideoListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    return-object v0
.end method

.method public l(I)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "RwcRNAoUXA=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "RwMEAQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/j/w/g/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/comeback/data/ui/km/VideoFragment;->i:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lf/e/a/j/w/g/d;->a()Lf/e/a/j/w/g/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/w/g/a;->b(Ljava/util/Map;)Lm/e;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lf/e/a/j/w/g/d;->a()Lf/e/a/j/w/g/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/w/g/a;->a(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 8
    :goto_1
    new-instance v0, Lcom/comeback/data/ui/km/VideoFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/km/VideoFragment$a;-><init>(Lcom/comeback/data/ui/km/VideoFragment;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
