.class public Lcom/comeback/data/ui/cm/adapter/HomeAdapter;
.super Lcom/comeback/data/base/BaseHeaderAdapter;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;,
        Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseHeaderAdapter<",
        "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseHeaderAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    return-void
.end method


# virtual methods
.method public f(I)Ljava/lang/Object;
    .locals 0

    const-string p1, "0NDdjev63o39g6/Z"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;
    .locals 3
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
            "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;

    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/cm/adapter/HomeAdapter;)V

    return-object p2
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;
    .locals 3

    .line 1
    new-instance p2, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;

    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$HeadHolder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/cm/adapter/HomeAdapter;)V

    return-object p2
.end method
