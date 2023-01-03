.class public Lcom/comeback/data/ui/gkj/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/ComicList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/SearchActivity$b;->e:Lcom/comeback/data/ui/gkj/SearchActivity;

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
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicList;

    .line 2
    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/RecommendAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/SearchActivity$b;->e:Lcom/comeback/data/ui/gkj/SearchActivity;

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/gkj/adapter/RecommendAdapter;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/SearchActivity$b;->e:Lcom/comeback/data/ui/gkj/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/gkj/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/SearchActivity$b;->e:Lcom/comeback/data/ui/gkj/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/gkj/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
