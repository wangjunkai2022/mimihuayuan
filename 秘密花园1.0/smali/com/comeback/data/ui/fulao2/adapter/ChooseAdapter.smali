.class public Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "ChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;,
        Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;",
        ">;"
    }
.end annotation


# static fields
.field public static e:I


# instance fields
.field public d:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->d:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    sput p1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    :cond_0
    return-void
.end method

.method public f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;

    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c017f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;)V

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
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->f(Landroid/view/ViewGroup;)Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;

    move-result-object p1

    return-object p1
.end method
