.class public Lcom/comeback/data/ui/xj/SearchActivity$b;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/SearchActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xj/bean/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xj/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity$b;->e:Lcom/comeback/data/ui/xj/SearchActivity;

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
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/SearchResult;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity$b;->e:Lcom/comeback/data/ui/xj/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comeback/data/ui/xj/SearchActivity;->u(Lcom/comeback/data/ui/xj/SearchActivity;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity$b;->e:Lcom/comeback/data/ui/xj/SearchActivity;

    .line 4
    iput-object p1, v0, Lcom/comeback/data/ui/xj/SearchActivity;->f:Lcom/comeback/data/ui/xj/bean/SearchResult;

    .line 5
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 6
    iget-object v3, v0, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 7
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 8
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v4, v0, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v4, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v4, v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    .line 11
    iget-object v2, v0, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    new-instance v2, Lf/a/a/a/l/l;

    invoke-direct {v2}, Lf/a/a/a/l/l;-><init>()V

    .line 13
    new-instance v3, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult;->getData()Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->getHotwords()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lf/e/a/j/r0/c;

    invoke-direct {v6, v0}, Lf/e/a/j/r0/c;-><init>(Lcom/comeback/data/ui/xj/SearchActivity;)V

    invoke-direct {v3, v0, v5, v2, v6}, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;)V

    invoke-virtual {v4, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    new-instance v2, Lf/a/a/a/l/g;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v3, 0x5

    .line 15
    invoke-virtual {v2, v3}, Lf/a/a/a/l/g;->D(I)V

    .line 16
    invoke-virtual {v2, v3}, Lf/a/a/a/l/g;->C(I)V

    .line 17
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 18
    new-instance v1, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult;->getData()Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->getHotrows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v0, p1, v2}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v4, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
