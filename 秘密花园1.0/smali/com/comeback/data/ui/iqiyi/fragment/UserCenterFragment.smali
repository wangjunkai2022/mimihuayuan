.class public Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "UserCenterFragment.java"


# instance fields
.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static o(Ljava/lang/String;Z)Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XhE0CxkY"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "XgY="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XhE0CxkY"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->i:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/iqiyi/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/iqiyi/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

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
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/s/e/d;->a()Lf/e/a/j/s/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Lf/e/a/j/s/e/b;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/s/e/a;->f(Ljava/lang/String;)Lm/e;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lf/e/a/j/s/e/d;->a()Lf/e/a/j/s/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Lf/e/a/j/s/e/b;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/s/e/a;->h(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment$a;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;I)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
