.class public Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "VideoRankItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;->m(Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;

    .line 4
    iget-object v2, v0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iput-boolean v1, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 6
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/VideoList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
