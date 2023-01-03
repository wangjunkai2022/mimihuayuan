.class public Lcom/comeback/data/ui/slf/fragment/NovelFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "NovelFragment.java"


# instance fields
.field public j:Z

.field public rvCategories:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/slf/fragment/NovelFragment;Ljava/util/ArrayList;)V
    .locals 6

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    .line 2
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/slf/adapter/Title3Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/comeback/data/ui/slf/adapter/Title3Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 4
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0131

    return v0
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/slf/fragment/NovelFragment;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lf/e/a/j/k0/h/a;->k(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/slf/fragment/NovelFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/fragment/NovelFragment$a;-><init>(Lcom/comeback/data/ui/slf/fragment/NovelFragment;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 5
    :cond_0
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lf/i/b/r;->d(Ljava/lang/String;Ljava/lang/Number;)V

    .line 7
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object p1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/k0/h/a;->j(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/slf/fragment/NovelFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/fragment/NovelFragment$b;-><init>(Lcom/comeback/data/ui/slf/fragment/NovelFragment;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090301

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "RBYMFhI="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/slf/SearchActivity;->x(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
