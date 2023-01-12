.class public Lcom/comeback/data/ui/isiyu/MoviePlayActivity$b;
.super Lm/j;
.source "MoviePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/isiyu/bean/SpecialDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/isiyu/MoviePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$b;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

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
    check-cast p1, Lcom/comeback/data/ui/isiyu/bean/SpecialDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$b;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$b;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/isiyu/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$b;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/SpecialDetail;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
