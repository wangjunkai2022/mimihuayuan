.class public Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;
.super Ljava/lang/Object;
.source "FruitLaunchActivity.java"

# interfaces
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1

    .line 1
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    if-le p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;

    .line 3
    iget-object p2, p2, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/f;

    .line 5
    invoke-interface {v0}, Li/f;->cancel()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;

    .line 7
    iget-boolean v0, p2, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p2, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->d:Z

    .line 9
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 10
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 11
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    const-string p2, "GBRSO1lcXVweB10JVwkLDlQJ"

    .line 12
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    sput-object p1, Lf/e/a/k/b;->u0:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/comeback/data/ui/fruitPie/FruitActivity;->l(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method
