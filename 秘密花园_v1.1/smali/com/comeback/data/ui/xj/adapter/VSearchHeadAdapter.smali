.class public Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VSearchHeadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;,
        Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/a/a/a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
            ">;",
            "Lf/a/a/a/a;",
            "Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->a:Landroid/content/Context;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->c:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->c:Ljava/util/List;

    .line 6
    :goto_0
    iput-object p3, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->b:Lf/a/a/a/a;

    .line 7
    iput-object p4, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->d:Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->a:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p2, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->d:Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;

    invoke-direct {p2, v0, v1}, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;)V

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;->c:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0208

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$b;-><init>(Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;Landroid/view/View;)V

    return-object p2
.end method
