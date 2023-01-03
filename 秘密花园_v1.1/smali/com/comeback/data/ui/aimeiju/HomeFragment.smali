.class public Lcom/comeback/data/ui/aimeiju/HomeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HomeFragment.java"


# instance fields
.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/aimeiju/HomeFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    return-object p0
.end method

.method public static synthetic q(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->s()V

    return-void
.end method

.method public static r(Lcom/comeback/data/ui/aimeiju/HomeFragment;Lcom/comeback/data/ui/aimeiju/bean/ListBean;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/ListBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean;

    .line 2
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 4
    new-instance v1, Lf/a/a/a/l/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->D(I)V

    .line 6
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->C(I)V

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lf/a/a/a/l/g;->s:Z

    .line 8
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/aimeiju/adapter/MovieItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean;->getVod()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/aimeiju/adapter/MovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static t(Ljava/lang/String;)Lcom/comeback/data/ui/aimeiju/HomeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/aimeiju/HomeFragment;-><init>()V

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

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public l(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->d()V

    .line 2
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object p1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment;->j:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lf/e/a/j/a/f/e;->e(IILjava/lang/String;)Lm/e;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;-><init>(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->s()V

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment;->j:Ljava/lang/String;

    const-string v1, "Bw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object v0

    const-string v3, "Bg=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lf/e/a/j/a/f/e;->c(IILjava/lang/String;)Lm/e;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object v0

    iget-object v3, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment;->j:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lf/e/a/j/a/f/e;->g(IILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcom/comeback/data/ui/aimeiju/HomeFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/aimeiju/HomeFragment$b;-><init>(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
