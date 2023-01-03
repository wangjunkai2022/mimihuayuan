.class public Lcom/comeback/data/ui/slf/fragment/RankFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "RankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/fragment/RankFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/slf/bean/SLFItemBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/slf/fragment/RankFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/fragment/RankFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->g:Lcom/comeback/data/ui/slf/fragment/RankFragment;

    iput p2, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->g:Lcom/comeback/data/ui/slf/fragment/RankFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/fragment/RankFragment;->m(Lcom/comeback/data/ui/slf/fragment/RankFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->g:Lcom/comeback/data/ui/slf/fragment/RankFragment;

    .line 6
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 7
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/RankFragment$a;->g:Lcom/comeback/data/ui/slf/fragment/RankFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/fragment/RankFragment;->n(Lcom/comeback/data/ui/slf/fragment/RankFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
