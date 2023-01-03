.class public Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HomeTypeFragment.java"


# instance fields
.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;Lcom/comeback/data/ui/gkj/bean/NavBean;)V
    .locals 8

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/NavBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getStyle()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v1, v2, :cond_2

    .line 4
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;Lf/a/a/a/a;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 6
    new-instance v1, Lf/a/a/a/l/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lf/a/a/a/l/g;-><init>(I)V

    .line 7
    invoke-virtual {v1, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 8
    invoke-virtual {v1, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 9
    iput-boolean v3, v1, Lf/a/a/a/l/g;->s:Z

    .line 10
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 11
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getArticleVOS()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 13
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getArticleVOS()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getStyle()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 15
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;Lf/a/a/a/a;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 17
    new-instance v1, Lf/a/a/a/l/g;

    invoke-direct {v1, v5}, Lf/a/a/a/l/g;-><init>(I)V

    .line 18
    invoke-virtual {v1, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 19
    invoke-virtual {v1, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 20
    iput-boolean v3, v1, Lf/a/a/a/l/g;->s:Z

    .line 21
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 22
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getArticleVOS()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto/16 :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 24
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NVideo3Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getArticleVOS()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/NVideo3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public static q(I)Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "WQMVLQ8="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;-><init>()V

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

    const-string v1, "WQMVLQ8="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;->j:I

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l(I)V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/m/p/e;->b()Lf/e/a/j/m/p/c;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;->j:I

    add-int/lit8 p1, p1, -0x1

    const/16 v2, 0xa

    invoke-interface {v0, v1, p1, v2}, Lf/e/a/j/m/p/c;->j(III)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment$a;-><init>(Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
