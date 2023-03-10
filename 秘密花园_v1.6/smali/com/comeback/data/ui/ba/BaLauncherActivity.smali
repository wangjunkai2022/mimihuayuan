.class public Lcom/comeback/data/ui/ba/BaLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "BaLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/ba/BaLauncherActivity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/comeback/data/ui/ba/BaActivity;->m(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/ba/BaLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0028

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lf/e/a/j/c/g/a;->g(I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/ba/BaLauncherActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/ba/BaLauncherActivity$a;-><init>(Lcom/comeback/data/ui/ba/BaLauncherActivity;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
