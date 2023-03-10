.class public Lcom/comeback/data/ui/xj/SearchActivity$c;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
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
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/xj/bean/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/xj/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity$c;->f:Lcom/comeback/data/ui/xj/SearchActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/SearchResult;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity$c;->f:Lcom/comeback/data/ui/xj/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/comeback/data/ui/xj/SearchActivity;->u(Lcom/comeback/data/ui/xj/SearchActivity;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity$c;->f:Lcom/comeback/data/ui/xj/SearchActivity;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult;->getData()Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->getHotrows()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult;->getData()Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->getHotrows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    .line 5
    invoke-static {v1, v2, v2}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v1

    .line 6
    iput-boolean v3, v1, Lf/a/a/a/l/g;->s:Z

    .line 7
    iget-object v2, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult;->getData()Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->getHotrows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v1}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_2

    .line 8
    :cond_1
    :goto_0
    iget p1, v0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    if-ne p1, v3, :cond_2

    .line 9
    iget-object p1, v0, Lcom/comeback/data/ui/xj/SearchActivity;->tvNoResult:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->getItemCount()I

    move-result p1

    .line 11
    iget-object v0, v0, Lcom/comeback/data/ui/xj/SearchActivity;->tvNoResult:Landroid/view/View;

    if-gt p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
