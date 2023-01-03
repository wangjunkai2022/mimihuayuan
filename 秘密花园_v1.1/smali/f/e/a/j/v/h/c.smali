.class public Lf/e/a/j/v/h/c;
.super Ljava/lang/Object;
.source "NetHelper.java"


# static fields
.field public static volatile c:Lf/e/a/j/v/h/c; = null

.field public static d:Z = false


# instance fields
.field public final a:Lf/e/a/j/v/h/a;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XxYXFBhJFhwLD1MSGR8PDhkBDAk="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFgdGSANRVltXUhlaU15TSgEF"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lf/e/a/j/v/h/c;->b:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "ehsgBQgbXA=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0xa00000

    .line 6
    new-instance v4, Li/d;

    int-to-long v5, v1

    invoke-direct {v4, v0, v5, v6}, Li/d;-><init>(Ljava/io/File;J)V

    .line 7
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    new-instance v1, Lf/e/a/j/h0/b;

    invoke-direct {v1}, Lf/e/a/j/h0/b;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Li/b0$a;->b(Li/y;)Li/b0$a;

    new-instance v1, Lf/e/a/i/a;

    invoke-direct {v1}, Lf/e/a/i/a;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    new-instance v1, Lf/e/a/j/v/h/b;

    invoke-direct {v1}, Lf/e/a/j/v/h/b;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    const-wide/16 v5, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {v0, v5, v6, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 12
    iput-object v4, v0, Li/b0$a;->k:Li/d;

    .line 13
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 14
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    .line 15
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 16
    new-instance v0, Ll/h0$b;

    invoke-direct {v0}, Ll/h0$b;-><init>()V

    .line 17
    invoke-static {}, Ll/n0/a/a;->c()Ll/n0/a/a;

    move-result-object v4

    .line 18
    iget-object v5, v0, Ll/h0$b;->d:Ljava/util/List;

    const-string v6, "factory == null"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/l$a;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-boolean v4, Lf/e/a/j/v/h/c;->d:Z

    if-eqz v4, :cond_0

    iget-object v2, p0, Lf/e/a/j/v/h/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lf/e/a/j/v/h/c;->b:[Ljava/lang/String;

    aget-object v2, v3, v2

    .line 20
    :goto_0
    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->t(Ll/h0$b;Ljava/lang/String;Li/b0;)Ll/m0/a/j;

    move-result-object v1

    .line 21
    iget-object v2, v0, Ll/h0$b;->e:Ljava/util/List;

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/e$a;

    .line 22
    const-class v3, Lf/e/a/j/v/h/a;

    .line 23
    invoke-static {v2, v1, v0, v3}, Lf/b/a/a/a;->F(Ljava/util/List;Ll/e$a;Ll/h0$b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Lf/e/a/j/v/h/a;

    iput-object v0, p0, Lf/e/a/j/v/h/c;->a:Lf/e/a/j/v/h/a;

    return-void
.end method

.method public static declared-synchronized a()Lf/e/a/j/v/h/a;
    .locals 2

    const-class v0, Lf/e/a/j/v/h/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/e/a/j/v/h/c;->c:Lf/e/a/j/v/h/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/e/a/j/v/h/c;

    invoke-direct {v1}, Lf/e/a/j/v/h/c;-><init>()V

    sput-object v1, Lf/e/a/j/v/h/c;->c:Lf/e/a/j/v/h/c;

    .line 3
    :cond_0
    sget-object v1, Lf/e/a/j/v/h/c;->c:Lf/e/a/j/v/h/c;

    iget-object v1, v1, Lf/e/a/j/v/h/c;->a:Lf/e/a/j/v/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
