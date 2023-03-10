.class public Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$a;
.super Lm/j;
.source "ShortTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/nana/bean/TypeBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$a;->e:Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/nana/bean/TypeBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$a;->e:Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/nana/adapter/TypeAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RAoMFh8="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/comeback/data/ui/nana/adapter/TypeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/TypeBean;->getResponse()Lcom/comeback/data/ui/nana/bean/TypeBean$ResponseEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/TypeBean$ResponseEntity;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 7
    iget-object p1, v0, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
