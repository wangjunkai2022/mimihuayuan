.class public Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ActorWorkFragment.java"


# instance fields
.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static o(II)Lcom/comeback/data/base/BaseFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "QxsTAQ=="

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance p0, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QxsTAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;->j:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;->i:I

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/adapter/VideoList5Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/cucumber/adapter/VideoList5Adapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;->i:I

    const-string v3, "RwMEASUc"

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RhcGFhInQEMW"

    .line 3
    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;->j:I

    const-string v3, "RwMEATgaQ1Y="

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlA="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/g/h/a;->e(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ActorWorkFragment;I)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
