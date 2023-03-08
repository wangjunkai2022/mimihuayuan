.class public Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;
.super Lm/j;
.source "ChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/iqiyi/bean/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

    iget-object v1, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

    iget-object v1, v1, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method
