.class public Lcom/comeback/data/ui/slf/ComicDetailActivity$a;
.super Lm/j;
.source "ComicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/ComicDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/ComicDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/ComicDetail;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ComicDetail;->getChapter()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/slf/ComicDetailActivity;->l(Lcom/comeback/data/ui/slf/ComicDetailActivity;Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    new-instance v1, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    new-instance v1, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iget-object v0, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 15
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    .line 17
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 18
    iget-object v0, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->h:Ljava/util/List;

    .line 19
    invoke-virtual {v1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    .line 21
    iget-object v0, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 22
    iget-object v1, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 23
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;->e:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    .line 24
    iget-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 25
    iput-object p1, v0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$a;

    .line 26
    iget-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 27
    iput-object p1, v0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$a;

    return-void
.end method
