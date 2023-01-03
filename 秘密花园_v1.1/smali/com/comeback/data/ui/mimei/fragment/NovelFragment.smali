.class public Lcom/comeback/data/ui/mimei/fragment/NovelFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "NovelFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/mimei/fragment/NovelFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/e0/j/f;->a()Lf/e/a/j/e0/j/c;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/e0/j/c;->e()Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;-><init>(Lcom/comeback/data/ui/mimei/fragment/NovelFragment;)V

    .line 3
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
            "Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;",
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

    const/4 v0, 0x2

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

    new-instance v1, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
