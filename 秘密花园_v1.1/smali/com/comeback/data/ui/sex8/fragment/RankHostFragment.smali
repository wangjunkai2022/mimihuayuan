.class public Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "RankHostFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/sex8/adapter/AuthorListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/sex8/adapter/AuthorListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/j0/a/b;->a()Lf/e/a/j/j0/a/a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/sex8/bean/YXParams;

    invoke-direct {v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;-><init>()V

    const-string v2, "BlI="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage_size(Ljava/lang/String;)V

    const-string v2, "RQMNDwMcSkcsCl0UDA=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setV(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage(I)V

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lf/e/a/j/j0/a/a;->e(Ljava/lang/String;J)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/sex8/fragment/RankHostFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/sex8/fragment/RankHostFragment$a;-><init>(Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;I)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
