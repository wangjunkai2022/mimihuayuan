.class public Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HotSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/avbobo/bean/RankHotSearch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/RankHotSearch;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;->m(Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/RankHotSearch;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HotSearchFragment;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    .line 7
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-void
.end method
