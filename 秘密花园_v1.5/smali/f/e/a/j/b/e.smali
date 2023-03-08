.class public Lf/e/a/j/b/e;
.super Lm/j;
.source "MoviePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/avbobo/bean/MovieList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b/e;->e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/MovieList;

    .line 2
    iget-object v0, p0, Lf/e/a/j/b/e;->e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/MovieList;->getData()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/avbobo/adapter/GuessLikeAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/avbobo/adapter/GuessLikeAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method
