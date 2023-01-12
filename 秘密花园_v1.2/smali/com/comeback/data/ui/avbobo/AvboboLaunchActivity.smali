.class public Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "AvboboLaunchActivity.java"


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
    const-class v0, Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0025

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/b/g/b;->c()Lf/e/a/j/b/g/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf/e/a/j/b/g/b;->d:Ljava/lang/String;

    const-string v1, "VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li/z;->c(Ljava/lang/String;)Li/z;

    move-result-object v1

    invoke-static {v0, v1}, Li/g0;->c(Ljava/lang/String;Li/z;)Li/g0;

    move-result-object v0

    .line 4
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/b/g/a;->h(Li/g0;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lf/e/a/j/b/c;

    invoke-direct {v1, p0}, Lf/e/a/j/b/c;-><init>(Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
