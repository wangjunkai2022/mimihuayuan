.class public Lcom/comeback/data/ui/bale/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/bale/bean/HotSearch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/bale/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/SearchActivity$b;->e:Lcom/comeback/data/ui/bale/SearchActivity;

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
    check-cast p1, Lcom/comeback/data/ui/bale/bean/HotSearch;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/bale/SearchActivity$b;->e:Lcom/comeback/data/ui/bale/SearchActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/bale/SearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter;

    new-instance v2, Lf/e/a/j/d/c;

    invoke-direct {v2, v0}, Lf/e/a/j/d/c;-><init>(Lcom/comeback/data/ui/bale/SearchActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$a;)V

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/bale/SearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/HotSearch;->getResult()Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean;->getAll()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
