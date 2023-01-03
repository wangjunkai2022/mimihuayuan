.class public Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "IsiyuLaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/comeback/data/ui/isiyu/MainActivity;->l(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0082

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/t/e/e;->a()Lf/e/a/j/t/e/b;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/t/e/b;->h()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity$a;-><init>(Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
