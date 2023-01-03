.class public Lf/e/a/j/g0/l/a;
.super Lm/j;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

.field public final synthetic g:Lcom/comeback/data/ui/nana/bean/MenuBean;

.field public final synthetic h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;ILcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lcom/comeback/data/ui/nana/bean/MenuBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    iput p2, p0, Lf/e/a/j/g0/l/a;->e:I

    iput-object p3, p0, Lf/e/a/j/g0/l/a;->f:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    iput-object p4, p0, Lf/e/a/j/g0/l/a;->g:Lcom/comeback/data/ui/nana/bean/MenuBean;

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
    check-cast p1, Lcom/comeback/data/ui/nana/bean/VideoListBean;

    .line 2
    iget v0, p0, Lf/e/a/j/g0/l/a;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->r(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object v0, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 7
    iget-object v0, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    .line 8
    iget-object v3, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    iput-boolean v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 10
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 11
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v1, v2}, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;-><init>(Landroid/content/Context;ZLf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    iget-object v2, p0, Lf/e/a/j/g0/l/a;->f:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    invoke-static {v0, v2, p1}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->s(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lcom/comeback/data/ui/nana/bean/VideoListBean;)V

    .line 13
    iget-object p1, p0, Lf/e/a/j/g0/l/a;->h:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    iget-object v0, p0, Lf/e/a/j/g0/l/a;->g:Lcom/comeback/data/ui/nana/bean/MenuBean;

    iget v2, p0, Lf/e/a/j/g0/l/a;->e:I

    add-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->q(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;Lcom/comeback/data/ui/nana/bean/MenuBean;I)V

    return-void
.end method
