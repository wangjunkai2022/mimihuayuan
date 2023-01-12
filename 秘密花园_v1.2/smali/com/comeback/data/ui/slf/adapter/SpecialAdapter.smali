.class public Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "SpecialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/ui/slf/bean/Special;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c020a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;)V

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
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;->f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;

    move-result-object p1

    return-object p1
.end method
