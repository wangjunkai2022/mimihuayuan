.class public Lcom/comeback/data/ui/slf/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/SearchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/SearchActivity$b;->e:Lcom/comeback/data/ui/slf/SearchActivity;

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
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/SearchInfo;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$b;->e:Lcom/comeback/data/ui/slf/SearchActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/slf/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/slf/adapter/TagAdapter;

    new-instance v2, Lf/e/a/j/k0/d;

    invoke-direct {v2, v0}, Lf/e/a/j/k0/d;-><init>(Lcom/comeback/data/ui/slf/SearchActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/comeback/data/ui/slf/adapter/TagAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/slf/adapter/TagAdapter$a;)V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/slf/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/SearchInfo;->getKeywords()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/slf/SearchActivity;->w(Z)V

    return-void
.end method
