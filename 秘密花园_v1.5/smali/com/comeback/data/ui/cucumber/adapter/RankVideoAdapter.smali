.class public Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "RankVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$HeadHolder;,
        Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/ui/cucumber/bean/Video;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$HeadHolder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c017b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$HeadHolder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c017a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/RankVideoAdapter;)V

    :goto_0
    return-object p2
.end method
