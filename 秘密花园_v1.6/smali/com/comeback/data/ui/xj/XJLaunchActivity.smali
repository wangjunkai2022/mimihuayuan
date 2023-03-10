.class public Lcom/comeback/data/ui/xj/XJLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "XJLaunchActivity.java"


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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TwsCCgwLUFIdAVUXCBlNCFgP"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UBcMAx4cWEMDFRoEFwc="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TwgQFAoDSUBdBVsK"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "WwMECwoDSUBdBVsK"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "RwsTDQoDSUBdBVsK"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Xg0QSgkLXkYEA1pJGwUO"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/xj/XJLaunchActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xj/XJLaunchActivity$a;-><init>(Lcom/comeback/data/ui/xj/XJLaunchActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->e:Li/g;

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/xj/XJLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00c8

    return v0
.end method

.method public e()V
    .locals 4

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
    new-instance v2, Li/b0;

    invoke-direct {v2, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 8
    iput-object v2, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->b:Li/b0;

    .line 9
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v2, "byg8LCQgbQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf/e/a/k/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 11
    invoke-virtual {p0, v1}, Lcom/comeback/data/ui/xj/XJLaunchActivity;->m([Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/xj/XJLaunchActivity;->l()V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 13

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1
    sget-object v3, Lcom/comeback/data/ui/xj/XJLaunchActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "Xg0Q"

    .line 2
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XxYXFFFcFg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 4
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XxYXFBhJFhw="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    .line 5
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const-string v7, ""

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_3

    const-string v9, "VAoCFg=="

    .line 6
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WRcO"

    .line 7
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    .line 8
    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    rem-int/2addr v12, v11

    if-nez v12, :cond_1

    move-object v10, v9

    .line 9
    :cond_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-static {v7}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x1a

    .line 11
    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x61

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v7}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0xa

    .line 14
    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GQ=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_3
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, v1}, Lcom/comeback/data/ui/xj/XJLaunchActivity;->m([Ljava/lang/String;)V

    return-void
.end method

.method public final varargs m([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    new-instance v3, Li/e0$a;

    invoke-direct {v3}, Li/e0$a;-><init>()V

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "GAUGECwfVlESCnAGDAs="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v2, "dA0NCg4QTVocCA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "VA4MFw4="

    invoke-static {v4, v3, v2}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->b:Li/b0;

    invoke-virtual {v3, v2}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->e:Li/g;

    check-cast v2, Li/d0;

    invoke-virtual {v2, v3}, Li/d0;->W(Li/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/XJLaunchActivity;->c:Ljava/util/ArrayList;

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
