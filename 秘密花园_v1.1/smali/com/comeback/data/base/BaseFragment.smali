.class public abstract Lcom/comeback/data/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public a:Lm/s/a;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/view/View;

.field public f:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lm/s/a;

    invoke-direct {v0}, Lm/s/a;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->b:Z

    .line 5
    iput-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract b()I
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/base/BaseFragment;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->e()V

    :cond_0
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g(Lm/e;Lm/j;)V
    .locals 2

    .line 1
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    .line 2
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lm/e;->c(Lm/j;)Lm/k;

    .line 5
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {p1, p2}, Lm/s/a;->b(Lm/k;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->a()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/comeback/data/base/BaseFragment;->e:Landroid/view/View;

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->b()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/base/BaseFragment;->e:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->e:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->b(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/base/BaseFragment;->f:Lbutterknife/Unbinder;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/base/BaseFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseFragment;->f:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/base/BaseFragment;->a:Lm/s/a;

    invoke-virtual {v0}, Lm/s/a;->d()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->f()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/comeback/data/base/BaseFragment;->c:Z

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->d()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/comeback/data/base/BaseFragment;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->d()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/comeback/data/base/BaseFragment;->d:Z

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseFragment;->c()V

    return-void
.end method
