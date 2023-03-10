.class public Lf/e/a/j/b/g/d;
.super Ljava/lang/Object;
.source "NetHelper.java"


# static fields
.field public static volatile b:Lf/e/a/j/b/g/d;


# instance fields
.field public final a:Lf/e/a/j/b/g/a;


# direct methods
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

    .line 5
    new-instance v1, Li/d;

    const/high16 v2, 0xa00000

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Li/d;-><init>(Ljava/io/File;J)V

    .line 6
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    new-instance v2, Lf/e/a/j/i0/b;

    invoke-direct {v2}, Lf/e/a/j/i0/b;-><init>()V

    .line 7
    invoke-virtual {v0, v2}, Li/b0$a;->b(Li/y;)Li/b0$a;

    new-instance v2, Lf/e/a/j/b/g/c;

    invoke-direct {v2}, Lf/e/a/j/b/g/c;-><init>()V

    .line 8
    invoke-virtual {v0, v2}, Li/b0$a;->a(Li/y;)Li/b0$a;

    new-instance v2, Lf/e/a/i/a;

    invoke-direct {v2}, Lf/e/a/i/a;-><init>()V

    .line 9
    invoke-virtual {v0, v2}, Li/b0$a;->a(Li/y;)Li/b0$a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    .line 10
    invoke-virtual {v0, v3, v4, v2}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 11
    iput-object v1, v0, Li/b0$a;->k:Li/d;

    .line 12
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 13
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    .line 14
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 15
    new-instance v0, Ll/h0$b;

    invoke-direct {v0}, Ll/h0$b;-><init>()V

    .line 16
    invoke-static {}, Ll/n0/a/a;->c()Ll/n0/a/a;

    move-result-object v2

    .line 17
    iget-object v3, v0, Ll/h0$b;->d:Ljava/util/List;

    const-string v4, "factory == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/l$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, Lf/e/a/j/b/g/b;->c()Lf/e/a/j/b/g/b;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lf/e/a/j/b/g/b;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->t(Ll/h0$b;Ljava/lang/String;Li/b0;)Ll/m0/a/j;

    move-result-object v1

    .line 21
    iget-object v2, v0, Ll/h0$b;->e:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/e$a;

    .line 22
    const-class v3, Lf/e/a/j/b/g/a;

    .line 23
    invoke-static {v2, v1, v0, v3}, Lf/b/a/a/a;->F(Ljava/util/List;Ll/e$a;Ll/h0$b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Lf/e/a/j/b/g/a;

    iput-object v0, p0, Lf/e/a/j/b/g/d;->a:Lf/e/a/j/b/g/a;

    return-void
.end method

.method public static declared-synchronized a()Lf/e/a/j/b/g/a;
    .locals 2

    const-class v0, Lf/e/a/j/b/g/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/e/a/j/b/g/d;->b:Lf/e/a/j/b/g/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/e/a/j/b/g/d;

    invoke-direct {v1}, Lf/e/a/j/b/g/d;-><init>()V

    sput-object v1, Lf/e/a/j/b/g/d;->b:Lf/e/a/j/b/g/d;

    .line 3
    :cond_0
    sget-object v1, Lf/e/a/j/b/g/d;->b:Lf/e/a/j/b/g/d;

    iget-object v1, v1, Lf/e/a/j/b/g/d;->a:Lf/e/a/j/b/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
