.class public Lcom/comeback/data/ui/senlin/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/senlin/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/j0/f/b;->a()Lf/e/a/j/j0/f/a;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VgE="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwcXBQIf"

    const-string v3, "XgYQ"

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1, v0}, Lf/e/a/j/j0/f/a;->a(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/comeback/data/ui/senlin/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/senlin/PlayActivity$a;-><init>(Lcom/comeback/data/ui/senlin/PlayActivity;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
