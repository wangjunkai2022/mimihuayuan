.class public Lcom/comeback/data/ui/md/fragment/ChanelFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ChanelFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/md/fragment/ChanelFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/md/adapter/ChanelAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/md/adapter/ChanelAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/e0/d/e;->b()Lf/e/a/j/e0/d/b;

    move-result-object p1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lf/e/a/j/e0/d/d;->a(Ljava/util/TreeMap;)Ljava/util/Map;

    invoke-interface {p1, v0}, Lf/e/a/j/e0/d/b;->c(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/md/fragment/ChanelFragment$a;-><init>(Lcom/comeback/data/ui/md/fragment/ChanelFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
