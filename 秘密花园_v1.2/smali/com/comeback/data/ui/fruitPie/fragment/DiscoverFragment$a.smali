.class public Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment$a;
.super Lm/j;
.source "DiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment$a;->e:Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment$a;->e:Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;->getData()Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->getRecommend()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;->rvNew:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v0, v0, Lcom/comeback/data/ui/fruitPie/fragment/DiscoverFragment;->rvNew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;->getData()Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->getNewHot()Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
