.class public Lcom/comeback/data/ui/slf/VideoDetailActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "VideoDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/slf/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/slf/VideoDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object p1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/l0/h/a;->e(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/comeback/data/ui/slf/VideoDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/VideoDetailActivity$a;-><init>(Lcom/comeback/data/ui/slf/VideoDetailActivity;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
