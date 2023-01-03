.class public Lcom/comeback/data/ui/ds/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ds/bean/ComicListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ds/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/SearchActivity$b;->e:Lcom/comeback/data/ui/ds/SearchActivity;

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
    check-cast p1, Lcom/comeback/data/ui/ds/bean/ComicListBean;

    .line 2
    new-instance v0, Lcom/comeback/data/ui/ds/adapter/RealTimeAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/ds/SearchActivity$b;->e:Lcom/comeback/data/ui/ds/SearchActivity;

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/ds/adapter/RealTimeAdapter;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/ds/SearchActivity$b;->e:Lcom/comeback/data/ui/ds/SearchActivity;

    iget-object v2, v1, Lcom/comeback/data/ui/ds/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/ds/SearchActivity$b;->e:Lcom/comeback/data/ui/ds/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/ds/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/ComicListBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
