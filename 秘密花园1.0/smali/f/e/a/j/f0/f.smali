.class public Lf/e/a/j/f0/f;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "VideoSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/movieCloud/bean/XXList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/f0/f;->f:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/XXList;

    .line 2
    iget-object v0, p0, Lf/e/a/j/f0/f;->f:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->e:Lcom/comeback/data/ui/movieCloud/bean/XXList;

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 6
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 7
    new-instance v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v3, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v3, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v3, v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    .line 10
    iget-object v1, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->rvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    new-instance v1, Lf/a/a/a/l/l;

    invoke-direct {v1}, Lf/a/a/a/l/l;-><init>()V

    .line 12
    new-instance v2, Lcom/comeback/data/ui/movieCloud/adapter/TitleAdapter;

    const-string v4, "0OHOjfzb36PvgYDF"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4, v1}, Lcom/comeback/data/ui/movieCloud/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v3, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 13
    new-instance v1, Lf/a/a/a/l/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v2, 0x5

    .line 14
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->D(I)V

    .line 15
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->C(I)V

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v1, Lf/a/a/a/l/g;->s:Z

    .line 17
    new-instance v2, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXList;->getData()Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean;->getHotrows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v0, p1, v1}, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v3, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
