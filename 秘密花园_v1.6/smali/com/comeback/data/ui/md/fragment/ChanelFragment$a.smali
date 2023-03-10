.class public Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ChanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/md/fragment/ChanelFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/md/bean/ChanelList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/md/fragment/ChanelFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/md/fragment/ChanelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;->f:Lcom/comeback/data/ui/md/fragment/ChanelFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/md/bean/ChanelList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;->f:Lcom/comeback/data/ui/md/fragment/ChanelFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/md/fragment/ChanelFragment;->m(Lcom/comeback/data/ui/md/fragment/ChanelFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/md/bean/ChanelList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;->f:Lcom/comeback/data/ui/md/fragment/ChanelFragment;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;->f:Lcom/comeback/data/ui/md/fragment/ChanelFragment;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    return-void
.end method
