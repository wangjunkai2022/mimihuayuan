.class public Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "ColumnFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;Lcom/comeback/data/ui/cucumber/bean/Column;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/g/h/a;->i()Lm/e;

    move-result-object v0

    .line 6
    new-instance v3, Lf/e/a/j/g/g/f;

    invoke-direct {v3, p0}, Lf/e/a/j/g/g/f;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)V

    .line 7
    invoke-virtual {p0, v0, v3}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Column;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getSubclass()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 13
    iget-object v5, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/cucumber/adapter/Title2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getModName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4}, Lcom/comeback/data/ui/cucumber/adapter/Title2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    iget-object v4, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 15
    new-instance v6, Lf/a/a/a/l/i;

    invoke-direct {v6}, Lf/a/a/a/l/i;-><init>()V

    .line 16
    new-instance v7, Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter;

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getSubclass()Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v5, v3, v6}, Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    .line 17
    invoke-virtual {v4, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getSubclass()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 20
    iget-object v5, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3, v4}, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 21
    iget-object v4, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 22
    new-instance v6, Lf/a/a/a/l/g;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v7, 0xc

    .line 23
    invoke-virtual {v6, v7}, Lf/a/a/a/l/g;->C(I)V

    .line 24
    invoke-virtual {v6, v2}, Lf/a/a/a/l/g;->D(I)V

    .line 25
    iput-boolean v1, v6, Lf/a/a/a/l/g;->s:Z

    .line 26
    new-instance v7, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getSubclass()Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v5, v3, v6}, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    .line 27
    invoke-virtual {v4, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic q(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0100

    return v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/g/h/a;->m()Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
