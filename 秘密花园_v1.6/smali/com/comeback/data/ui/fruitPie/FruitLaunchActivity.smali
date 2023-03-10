.class public Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "FruitLaunchActivity.java"


# static fields
.field public static f:[Ljava/lang/String;


# instance fields
.field public b:Li/b0;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Li/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XxYXFBhJFhwSFl1JGwgBDlJSTQcEHg=="

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxpTT14CDVVMAAsG"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxpeTQ9aUlVMAAsG"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxpSQQ4CX1NMAAsG"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxpUHV8HCVVMAAsG"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity$a;-><init>(Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->e:Li/g;

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c007a

    return v0
.end method

.method public e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 5
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 7
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->b:Li/b0;

    .line 9
    sget-object v0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    sget-object v4, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->f:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 11
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GBRSO1lcXVweB10JVwkLDlQJ"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 14
    aget-object v3, v1, v2

    .line 15
    new-instance v4, Li/e0$a;

    invoke-direct {v4}, Li/e0$a;-><init>()V

    .line 16
    invoke-virtual {v4, v3}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v3, "VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Li/z;->c(Ljava/lang/String;)Li/z;

    move-result-object v3

    const-string v5, ""

    invoke-static {v5, v3}, Li/g0;->c(Ljava/lang/String;Li/z;)Li/g0;

    move-result-object v3

    invoke-virtual {v4, v3}, Li/e0$a;->f(Li/g0;)Li/e0$a;

    .line 18
    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->b:Li/b0;

    invoke-virtual {v4, v3}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v4, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->e:Li/g;

    check-cast v3, Li/d0;

    invoke-virtual {v3, v4}, Li/d0;->W(Li/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/FruitLaunchActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 4
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method
