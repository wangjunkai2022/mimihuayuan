.class public Lcom/comeback/data/ui/slf/fragment/CartoonFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "CartoonFragment.java"


# instance fields
.field public j:Z

.field public k:Z

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


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c013b

    return v0
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/l0/h/a;->h(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$a;-><init>(Lcom/comeback/data/ui/slf/fragment/CartoonFragment;)V

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
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object p1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/l0/h/a;->q(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$b;-><init>(Lcom/comeback/data/ui/slf/fragment/CartoonFragment;)V

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

    const v0, 0x7f0900fe

    if-eq p1, v0, :cond_1

    const v0, 0x7f09030b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "VAMREAQcVw=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/slf/SearchActivity;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/slf/HistoryActivity;->p(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
