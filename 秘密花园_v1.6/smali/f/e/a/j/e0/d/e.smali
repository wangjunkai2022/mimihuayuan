.class public Lf/e/a/j/e0/d/e;
.super Ljava/lang/Object;
.source "NetHelper.java"


# static fields
.field public static volatile b:Lf/e/a/j/e0/d/e;

.field public static c:Ljava/lang/String;


# instance fields
.field public final a:Lf/e/a/j/e0/d/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf/e/a/k/b;->p0:Ljava/lang/String;

    sput-object v0, Lf/e/a/j/e0/d/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ehsgBQgbXA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0xa00000

    .line 5
    new-instance v2, Li/d;

    int-to-long v3, v1

    invoke-direct {v2, v0, v3, v4}, Li/d;-><init>(Ljava/io/File;J)V

    .line 6
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    new-instance v1, Lf/e/a/j/i0/b;

    invoke-direct {v1}, Lf/e/a/j/i0/b;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Li/b0$a;->b(Li/y;)Li/b0$a;

    new-instance v1, Lf/e/a/j/e0/d/c;

    invoke-direct {v1}, Lf/e/a/j/e0/d/c;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    const-wide/16 v3, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {v0, v3, v4, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 10
    iput-object v2, v0, Li/b0$a;->k:Li/d;

    .line 11
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 12
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    .line 13
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 14
    new-instance v0, Ll/h0$b;

    invoke-direct {v0}, Ll/h0$b;-><init>()V

    .line 15
    invoke-static {}, Ll/n0/a/a;->c()Ll/n0/a/a;

    move-result-object v2

    .line 16
    iget-object v3, v0, Ll/h0$b;->d:Ljava/util/List;

    const-string v4, "factory == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/l$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v2, Lf/e/a/j/e0/d/e;->c:Ljava/lang/String;

    .line 18
    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->t(Ll/h0$b;Ljava/lang/String;Li/b0;)Ll/m0/a/j;

    move-result-object v1

    .line 19
    iget-object v2, v0, Ll/h0$b;->e:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/e$a;

    .line 20
    const-class v3, Lf/e/a/j/e0/d/b;

    .line 21
    invoke-static {v2, v1, v0, v3}, Lf/b/a/a/a;->F(Ljava/util/List;Ll/e$a;Ll/h0$b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lf/e/a/j/e0/d/b;

    iput-object v0, p0, Lf/e/a/j/e0/d/e;->a:Lf/e/a/j/e0/d/b;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lf/e/a/j/e0/d/e;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lf/e/a/j/e0/d/e;->b:Lf/e/a/j/e0/d/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Lf/e/a/j/e0/d/b;
    .locals 2

    const-class v0, Lf/e/a/j/e0/d/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/e/a/j/e0/d/e;->b:Lf/e/a/j/e0/d/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/e/a/j/e0/d/e;

    invoke-direct {v1}, Lf/e/a/j/e0/d/e;-><init>()V

    sput-object v1, Lf/e/a/j/e0/d/e;->b:Lf/e/a/j/e0/d/e;

    .line 3
    :cond_0
    sget-object v1, Lf/e/a/j/e0/d/e;->b:Lf/e/a/j/e0/d/e;

    iget-object v1, v1, Lf/e/a/j/e0/d/e;->a:Lf/e/a/j/e0/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
