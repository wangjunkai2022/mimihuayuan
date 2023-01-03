.class public Lcom/comeback/data/ui/isiyu/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/isiyu/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/isiyu/bean/SearchTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/isiyu/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/isiyu/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

    new-instance v2, Lf/e/a/j/t/d;

    invoke-direct {v2, p0}, Lf/e/a/j/t/d;-><init>(Lcom/comeback/data/ui/isiyu/SearchActivity$b;)V

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$a;)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/isiyu/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/isiyu/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method
