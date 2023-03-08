.class public Lcom/comeback/data/ui/slf/fragment/NovelFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "NovelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/fragment/NovelFragment;->l(I)V
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
.field public final synthetic f:Lcom/comeback/data/ui/slf/fragment/NovelFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/fragment/NovelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/fragment/NovelFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/NovelFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/HomeDataBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/NovelFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/NovelFragment;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/comeback/data/ui/slf/fragment/NovelFragment;->j:Z

    .line 4
    iget-object v2, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 6
    new-instance v2, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "RBYMFhI="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    iget-object v4, v0, Lcom/comeback/data/ui/slf/fragment/NovelFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v4, v0, Lcom/comeback/data/ui/slf/fragment/NovelFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getNewX()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    move-result-object v2

    .line 11
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 12
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/slf/adapter/Title2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getSubTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/comeback/data/ui/slf/adapter/Title2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v3, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 13
    new-instance v3, Lf/a/a/a/l/i;

    invoke-direct {v3}, Lf/a/a/a/l/i;-><init>()V

    .line 14
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v6, v2, v3}, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 15
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getRank()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    move-result-object p1

    .line 16
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 17
    iget-object v2, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    const/4 v3, 0x2

    new-instance v4, Lcom/comeback/data/ui/slf/adapter/Title2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/comeback/data/ui/slf/adapter/Title2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 18
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 19
    iget-object v2, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    const/4 v3, 0x3

    new-instance v4, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, v0, p1, v1}, Lcom/comeback/data/ui/slf/adapter/NovelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
