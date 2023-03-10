.class public Lcom/comeback/data/ui/slf/fragment/CartoonFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "CartoonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/fragment/CartoonFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/slf/bean/HomeDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/slf/fragment/CartoonFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/fragment/CartoonFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/CartoonFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/HomeDataBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/CartoonFragment;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment;->j:Z

    .line 4
    iget-object v2, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 6
    new-instance v2, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "VAMREAQcVw=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    iget-object v4, v0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v4, v0, Lcom/comeback/data/ui/slf/fragment/CartoonFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getNewX()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getSpecial()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    move-result-object p1

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    new-instance v6, Lf/a/a/a/l/c;

    invoke-direct {v6}, Lf/a/a/a/l/c;-><init>()V

    .line 14
    iget-object v7, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v8, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6}, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v7, v3, v8}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 15
    new-instance v3, Lf/a/a/a/l/g;

    invoke-direct {v3, v4}, Lf/a/a/a/l/g;-><init>(I)V

    .line 16
    invoke-virtual {v3, v5}, Lf/a/a/a/l/g;->D(I)V

    .line 17
    invoke-virtual {v3, v5}, Lf/a/a/a/l/g;->C(I)V

    .line 18
    iput-boolean v1, v3, Lf/a/a/a/l/g;->s:Z

    .line 19
    iget-object v6, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v7, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v8, v2, v3}, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v6, v1, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 22
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 23
    new-instance v3, Lf/a/a/a/l/g;

    invoke-direct {v3, v2}, Lf/a/a/a/l/g;-><init>(I)V

    .line 24
    invoke-virtual {v3, v5}, Lf/a/a/a/l/g;->D(I)V

    .line 25
    invoke-virtual {v3, v5}, Lf/a/a/a/l/g;->C(I)V

    .line 26
    iput-boolean v1, v3, Lf/a/a/a/l/g;->s:Z

    .line 27
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v0, p1, v3}, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_1
    return-void
.end method
