.class public Lcom/comeback/data/ui/cm/fragment/StarFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "StarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/cm/fragment/StarFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/e/f/b;->a()Lf/e/a/j/e/f/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/e/f/a;->g()Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/cm/fragment/StarFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cm/fragment/StarFragment$a;-><init>(Lcom/comeback/data/ui/cm/fragment/StarFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
