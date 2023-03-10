.class public Lcom/comeback/data/ui/bale/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/bale/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/bale/PlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/d/e/b;->a()Lf/e/a/j/d/e/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/d/e/a;->a(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/bale/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/bale/PlayActivity$a;-><init>(Lcom/comeback/data/ui/bale/PlayActivity;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
