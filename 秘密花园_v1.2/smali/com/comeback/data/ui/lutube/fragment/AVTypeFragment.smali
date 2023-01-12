.class public Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "AVTypeFragment.java"


# instance fields
.field public g:Lcom/comeback/data/ui/lutube/adapter/VideoTypeAdapter;

.field public h:Z

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static h(Z)Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XhEiEg=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;-><init>()V

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

    const-string v1, "XhEiEg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->h:Z

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c014d

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/b0/k/d;->a()Lf/e/a/j/b0/k/b;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/b0/k/b;->l(Ljava/lang/String;)Lm/e;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lf/e/a/j/b0/k/d;->a()Lf/e/a/j/b0/k/b;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/b0/k/b;->c(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment$a;-><init>(Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/lutube/adapter/VideoTypeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->h:Z

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/lutube/adapter/VideoTypeAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->g:Lcom/comeback/data/ui/lutube/adapter/VideoTypeAdapter;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/lutube/fragment/AVTypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
