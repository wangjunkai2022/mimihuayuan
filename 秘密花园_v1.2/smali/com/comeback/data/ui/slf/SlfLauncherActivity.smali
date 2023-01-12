.class public Lcom/comeback/data/ui/slf/SlfLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "SlfLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/slf/SlfLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00bc

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "UwcVDQgWb1YBFV0IFg=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BkxV"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UwcVDQgWcFc="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/l0/h/a;->f(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;-><init>(Lcom/comeback/data/ui/slf/SlfLauncherActivity;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
