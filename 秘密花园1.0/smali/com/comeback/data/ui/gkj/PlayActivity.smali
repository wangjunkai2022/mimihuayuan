.class public Lcom/comeback/data/ui/gkj/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/gkj/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->c(Landroid/content/Intent;)V

    const-string v0, "RQcQCx4BWlY6Ag=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/PlayActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/m/p/e;->b()Lf/e/a/j/m/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/PlayActivity;->d:Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "VA0ODQgsUFc="

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "VA0ODQgsS1YACUEVGw88AlM="

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "UA4MBgofZkcKFlE="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VgwKCQ4="

    const-string v3, "XgwHARM="

    invoke-static {v1, v2, p1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bg=="

    const-string v3, "WwsODR8="

    .line 6
    invoke-static {v1, v2, p1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "BlJTVFs="

    const-string v4, "RwMEAQ=="

    .line 7
    invoke-static {v3, v2, p1, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v2}, Lf/e/a/j/m/p/c;->m(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/comeback/data/ui/gkj/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gkj/PlayActivity$a;-><init>(Lcom/comeback/data/ui/gkj/PlayActivity;)V

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
