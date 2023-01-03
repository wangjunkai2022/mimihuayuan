.class public Lcom/comeback/data/ui/ins/fragment/HotUserFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HotUserFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic q(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    return-object p0
.end method


# virtual methods
.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->m()V

    .line 2
    invoke-static {}, Lf/e/a/j/r/e/b;->a()Lf/e/a/j/r/e/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->r(II)Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lf/e/a/k/b;->u0:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lf/e/a/j/r/e/a;->c(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;-><init>(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->s(I)V

    :goto_0
    return-void
.end method

.method public final r(II)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAsZAQ=="

    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RA0REA=="

    .line 3
    invoke-static {p2, v0, p1, v1}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "QgwHAQ0aV1YX"

    .line 4
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final s(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/r/e/b;->a()Lf/e/a/j/r/e/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->r(II)Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lf/e/a/k/b;->u0:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lf/e/a/j/r/e/a;->d(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$b;-><init>(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
