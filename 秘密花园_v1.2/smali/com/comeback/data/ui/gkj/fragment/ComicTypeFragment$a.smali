.class public Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ComicTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/gkj/bean/ViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ViewModel;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel;->getData()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;->p(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 7
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    return-void
.end method
