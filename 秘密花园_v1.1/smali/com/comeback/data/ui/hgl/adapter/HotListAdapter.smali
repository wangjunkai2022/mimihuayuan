.class public Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "HotListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;",
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
            "Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c019c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;)V

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
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;->f(Landroid/view/ViewGroup;)Lcom/comeback/data/base/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method
