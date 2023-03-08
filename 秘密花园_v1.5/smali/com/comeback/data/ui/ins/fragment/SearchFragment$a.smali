.class public Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ins/fragment/SearchFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/ins/bean/ImageList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/fragment/SearchFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;

    iput p2, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/ImageList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->h()Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;

    .line 6
    iget-object v1, v0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 8
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;

    .line 10
    iget-object v1, v0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/SearchFragment$a;->g:Lcom/comeback/data/ui/ins/fragment/SearchFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/ins/fragment/SearchFragment;->m(Lcom/comeback/data/ui/ins/fragment/SearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList;->getData()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->getResultList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
