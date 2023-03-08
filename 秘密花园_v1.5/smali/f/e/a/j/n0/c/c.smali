.class public Lf/e/a/j/n0/c/c;
.super Ljava/lang/Object;
.source "LiveNetHelper.java"


# static fields
.field public static volatile b:Lf/e/a/j/n0/c/c;


# instance fields
.field public final a:Lf/e/a/j/n0/c/a;


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

    new-instance v1, Lf/e/a/j/n0/c/b;

    invoke-direct {v1}, Lf/e/a/j/n0/c/b;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    new-instance v1, Lf/e/a/j/n0/c/e;

    invoke-direct {v1}, Lf/e/a/j/n0/c/e;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    new-instance v1, Lf/e/a/i/a;

    invoke-direct {v1}, Lf/e/a/i/a;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    const-wide/16 v3, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {v0, v3, v4, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 12
    iput-object v2, v0, Li/b0$a;->k:Li/d;

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

    move-result-object v2

    .line 18
    iget-object v3, v0, Ll/h0$b;->d:Ljava/util/List;

    const-string v4, "factory == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/l$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "XxYXFBhJFhwSFl1JFR8UDl4EBgoMXVpd"

    .line 19
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ll/h0$b;->a(Ljava/lang/String;)Ll/h0$b;

    .line 21
    invoke-virtual {v0, v1}, Ll/h0$b;->c(Li/b0;)Ll/h0$b;

    .line 22
    invoke-static {}, Ll/m0/a/j;->b()Ll/m0/a/j;

    move-result-object v1

    .line 23
    iget-object v2, v0, Ll/h0$b;->e:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/e$a;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v0}, Ll/h0$b;->b()Ll/h0;

    move-result-object v0

    .line 25
    const-class v1, Lf/e/a/j/n0/c/a;

    invoke-virtual {v0, v1}, Ll/h0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/e/a/j/n0/c/a;

    iput-object v0, p0, Lf/e/a/j/n0/c/c;->a:Lf/e/a/j/n0/c/a;

    return-void
.end method
