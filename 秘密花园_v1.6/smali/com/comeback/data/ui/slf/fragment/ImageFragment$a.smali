.class public Lcom/comeback/data/ui/slf/fragment/ImageFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/fragment/ImageFragment;->l(I)V
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
.field public final synthetic f:Lcom/comeback/data/ui/slf/fragment/ImageFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/fragment/ImageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/fragment/ImageFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/ImageFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/HomeDataBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/ImageFragment$a;->f:Lcom/comeback/data/ui/slf/fragment/ImageFragment;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/comeback/data/ui/slf/fragment/ImageFragment;->i:Z

    .line 4
    iget-object v1, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 6
    new-instance v1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Xg8CAw4="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lcom/comeback/data/ui/slf/fragment/ImageFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/slf/fragment/ImageFragment;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
