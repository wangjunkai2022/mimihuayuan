.class public Lcom/comeback/data/ui/fruitPie/SearchActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/SearchActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/fruitPie/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/SearchActivity$a;->f:Lcom/comeback/data/ui/fruitPie/SearchActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/SearchActivity$a;->f:Lcom/comeback/data/ui/fruitPie/SearchActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/fruitPie/SearchActivity;->r(Lcom/comeback/data/ui/fruitPie/SearchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/SearchActivity$a;->f:Lcom/comeback/data/ui/fruitPie/SearchActivity;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/SearchActivity$a;->f:Lcom/comeback/data/ui/fruitPie/SearchActivity;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;->getData()Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->getTagString()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
