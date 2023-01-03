.class public Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "AMJLauncherActivity.java"


# instance fields
.field public b:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/a/f/e;->b()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lf/e/a/j/a/d;

    invoke-direct {v1, p0}, Lf/e/a/j/a/d;-><init>(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static m(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->m(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0023

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/h0/c;->a()Lf/e/a/j/h0/a;

    move-result-object v0

    const-string v1, "XxYXFBhJFhweDFUXCERWWU4NFh0OXVpcHkldCRwPG0VHChNLCgNJHBIIUBUXAwdEQQcRSwgbWF0UAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/h0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->b:Ll/d;

    .line 2
    new-instance v1, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;-><init>(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->b:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
