.class public Lcom/comeback/data/ui/aimeiju/SearchActivity$a;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/aimeiju/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/aimeiju/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;->e:Lcom/comeback/data/ui/aimeiju/SearchActivity;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;->e:Lcom/comeback/data/ui/aimeiju/SearchActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/aimeiju/SearchActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;->e:Lcom/comeback/data/ui/aimeiju/SearchActivity;

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;->e:Lcom/comeback/data/ui/aimeiju/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/aimeiju/SearchActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/VideoList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;->e:Lcom/comeback/data/ui/aimeiju/SearchActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/aimeiju/SearchActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
