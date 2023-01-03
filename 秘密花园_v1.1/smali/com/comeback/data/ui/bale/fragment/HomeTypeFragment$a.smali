.class public Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/bale/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;->p(Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/VideoList;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

    .line 7
    new-instance v3, Lf/a/a/a/l/c;

    invoke-direct {v3}, Lf/a/a/a/l/c;-><init>()V

    .line 8
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/comeback/data/ui/bale/fragment/HomeTypeFragment;->k:I

    invoke-direct {v5, v6, v2, v7, v3}, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;ILf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 9
    new-instance v3, Lf/a/a/a/l/g;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v4, 0xf

    .line 10
    invoke-virtual {v3, v4, v1, v4, v1}, Lf/a/a/a/l/j;->q(IIII)V

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, v3, Lf/a/a/a/l/g;->s:Z

    .line 12
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
