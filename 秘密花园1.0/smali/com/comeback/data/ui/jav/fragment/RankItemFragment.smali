.class public Lcom/comeback/data/ui/jav/fragment/RankItemFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "RankItemFragment.java"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const-string v0, "UwMKCBI="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static o(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static p(Ljava/lang/String;)Lcom/comeback/data/ui/jav/fragment/RankItemFragment;
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
    new-instance p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;-><init>()V

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

    iput-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c011b

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$a;-><init>(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->l:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lf/e/a/j/u/e/a;->a:Ljava/lang/String;

    const-string v1, "GBACCgAaV1QASQ=="

    invoke-static {p1, v0, v1}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "VgEXCxkA"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wg0VDQ4ABkNO"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->j:Ljava/lang/String;

    const-string v2, "ERZe"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 3
    invoke-static {}, Lf/e/a/j/h0/c;->a()Lf/e/a/j/h0/a;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->h0:Ljava/lang/String;

    sget-object v2, Lf/e/a/k/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lf/e/a/j/h0/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->m:Ll/d;

    .line 4
    new-instance v0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jav/fragment/RankItemFragment$b;-><init>(Lcom/comeback/data/ui/jav/fragment/RankItemFragment;)V

    invoke-interface {p1, v0}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/RankItemFragment;->m:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
