.class public Lcom/comeback/data/ui/lutube/fragment/ActorFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ActorFragment.java"


# instance fields
.field public i:[Ljava/lang/String;

.field public j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field public tab1:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab2:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "dg=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "dQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "dA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "cw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "cQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "cA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->i:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment$a;-><init>(Lcom/comeback/data/ui/lutube/fragment/ActorFragment;)V

    iput-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/lutube/fragment/ActorFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/lutube/fragment/ActorFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic o(Lcom/comeback/data/ui/lutube/fragment/ActorFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0125

    return v0
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "09jZgtvn36/zj5//"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0Ovkjez836/zj5//"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0evjgvf63o7agKnI"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "dg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "dQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "dA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cIbYwY/Lsw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 13
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/lutube/adapter/ActorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/lutube/adapter/ActorAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 6

    .line 1
    invoke-static {}, Lf/e/a/j/b0/k/d;->a()Lf/e/a/j/b0/k/b;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    const-string v4, "WBAHARk="

    .line 5
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    const-string v2, "QQsGExg="

    goto :goto_0

    :cond_0
    const-string v2, "QQEMEQUH"

    :goto_0
    const-string v5, "VBcT"

    invoke-static {v2, v1, v4, v5}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lcom/comeback/data/ui/lutube/fragment/ActorFragment;->i:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RwMEAQ=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qw0IAQU="

    invoke-static {p1, v1, v2, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v3, Lf/e/a/k/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v1}, Lf/e/a/j/b0/k/b;->i(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/comeback/data/ui/lutube/fragment/ActorFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/lutube/fragment/ActorFragment$b;-><init>(Lcom/comeback/data/ui/lutube/fragment/ActorFragment;I)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public final p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
