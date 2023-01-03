.class public Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "ChapterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter$a;,
        Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/bean/PlayListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter$a;

.field public e:I


# virtual methods
.method public f(Landroid/view/ViewGroup;)Lcom/comeback/data/base/BaseViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/comeback/data/base/BaseViewHolder<",
            "Lcom/comeback/data/bean/PlayListBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c01df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/aimeiju/adapter/ChapterAdapter;->f(Landroid/view/ViewGroup;)Lcom/comeback/data/base/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method
