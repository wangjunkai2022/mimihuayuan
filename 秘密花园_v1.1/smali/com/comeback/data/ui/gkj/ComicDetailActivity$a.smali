.class public Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;
.super Lm/j;
.source "ComicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/ComicDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

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
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->l(Lcom/comeback/data/ui/gkj/ComicDetailActivity;Lcom/comeback/data/ui/gkj/bean/ComicDetail;)V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->getData()Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->getChapters()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->h:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->g:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 8
    iget-object v3, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->h:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ge v1, v4, :cond_1

    .line 10
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 16
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 22
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    .line 24
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 25
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->h:Ljava/util/List;

    .line 26
    invoke-virtual {v1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    .line 28
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 29
    iget-object v1, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 30
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    .line 31
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 32
    iput-object p1, v0, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$a;

    .line 33
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 34
    iput-object p1, v0, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$a;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 35
    throw p1
.end method
