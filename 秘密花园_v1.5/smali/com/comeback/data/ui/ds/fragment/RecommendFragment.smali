.class public Lcom/comeback/data/ui/ds/fragment/RecommendFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "RecommendFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/ds/fragment/RecommendFragment;Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 4
    sget-object v0, Lcom/comeback/data/ui/ds/DsActivity;->d:Ljava/lang/String;

    const-string v1, "Bg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/comeback/data/ui/ds/adapter/HeadAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 7
    :cond_0
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;-><init>(Landroid/content/Context;ILf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 9
    new-instance v0, Lf/a/a/a/l/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lf/a/a/a/l/g;-><init>(I)V

    .line 10
    iput-boolean v4, v0, Lf/a/a/a/l/g;->s:Z

    .line 11
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getJphc()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v0}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;-><init>(Landroid/content/Context;ILf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    new-instance v0, Lf/a/a/a/l/g;

    invoke-direct {v0, v1}, Lf/a/a/a/l/g;-><init>(I)V

    .line 15
    iput-boolean v4, v0, Lf/a/a/a/l/g;->s:Z

    .line 16
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getTop()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object v6

    invoke-virtual {v6}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 17
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v1, v0}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;-><init>(Landroid/content/Context;ILf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 19
    new-instance v0, Lf/a/a/a/l/g;

    invoke-direct {v0, v1}, Lf/a/a/a/l/g;-><init>(I)V

    .line 20
    iput-boolean v4, v0, Lf/a/a/a/l/g;->s:Z

    .line 21
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getRmtj()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 22
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v0}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;-><init>(Landroid/content/Context;ILf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 24
    new-instance v0, Lf/a/a/a/l/i;

    invoke-direct {v0}, Lf/a/a/a/l/i;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/ds/adapter/ComicHAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getCnxh()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/ds/adapter/ComicHAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method


# virtual methods
.method public l(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/i/j/b;->a()Lf/e/a/j/i/j/a;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "WBAHARk="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QQsGE0AXXEAQ"

    const-string v3, "RBYCFh8="

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bw=="

    const-string v3, "WwsODR8="

    .line 4
    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BA=="

    const-string v3, "QxsTAQ=="

    .line 5
    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/comeback/data/ui/ds/DsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v0}, Lf/e/a/j/i/j/a;->d(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/ds/fragment/RecommendFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ds/fragment/RecommendFragment$a;-><init>(Lcom/comeback/data/ui/ds/fragment/RecommendFragment;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
