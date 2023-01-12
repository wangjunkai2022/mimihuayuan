.class public Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "Tag2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;,
        Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c01a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;)V

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
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;

    move-result-object p1

    return-object p1
.end method
