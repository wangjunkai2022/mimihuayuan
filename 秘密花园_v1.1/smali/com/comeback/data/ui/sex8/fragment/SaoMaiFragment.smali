.class public Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "SaoMaiFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/sex8/adapter/NovelListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/sex8/adapter/NovelListAdapter;-><init>(Landroid/content/Context;)V

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

    .line 3
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage(I)V

    const-string v2, "BlI="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage_size(Ljava/lang/String;)V

    const-string v2, "WQcU"

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setType(Ljava/lang/String;)V

    const-string v2, "RwMQFwIcV2weD1c="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setCategory(Ljava/lang/String;)V

    const-string v2, ""

    .line 7
    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setChild_category(Ljava/lang/String;)V

    const-string v2, "RQMHDQQsWF8RE1k4FAMQHw=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setV(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setIs_best(I)V

    .line 10
    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lf/e/a/j/j0/a/a;->d(Ljava/lang/String;J)Lm/e;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment$a;-><init>(Lcom/comeback/data/ui/sex8/fragment/SaoMaiFragment;I)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
