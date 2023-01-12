.class public Lf/e/a/j/b/f/e;
.super Lm/j;
.source "HomeTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/avbobo/bean/ChannelId;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b/f/e;->e:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/e/a/j/b/f/e;->e:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->q(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/ChannelId;

    .line 2
    iget-object v0, p0, Lf/e/a/j/b/f/e;->e:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelId;->getData()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->getRecommend_view_query_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;->getView_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;->getChildren()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->getGroup_id()Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->k:Ljava/lang/String;

    .line 4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "CVxdWlVNUFdJ"

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lf/e/a/j/b/f/e;->e:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->k:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->r(I)V

    return-void
.end method
