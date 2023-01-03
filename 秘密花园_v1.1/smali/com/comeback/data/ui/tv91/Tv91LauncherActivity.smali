.class public Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "Tv91LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lc/a/a/b/g/h;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00be

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/n0/i/b;->a()Lf/e/a/j/n0/i/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/n0/i/a;->g()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;-><init>(Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
