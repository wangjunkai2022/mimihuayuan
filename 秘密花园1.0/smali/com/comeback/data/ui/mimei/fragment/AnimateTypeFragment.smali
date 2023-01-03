.class public Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "AnimateTypeFragment.java"


# instance fields
.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static r(I)Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "QxsTAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;-><init>()V

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

    const-string v1, "QxsTAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->j:I

    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->j:I

    if-eqz v0, :cond_0

    const-string v0, "QxsTAQ=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Lf/e/a/j/e0/j/f;->a()Lf/e/a/j/e0/j/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/e0/j/c;->b(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;-><init>(Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiAnimateItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 4
    new-instance p1, Lf/a/a/a/l/g;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v0, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 6
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->D(I)V

    .line 7
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->C(I)V

    .line 8
    iput-boolean v1, p1, Lf/a/a/a/l/g;->s:Z

    .line 9
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
