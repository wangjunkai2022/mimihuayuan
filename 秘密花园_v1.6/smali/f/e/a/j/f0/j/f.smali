.class public Lf/e/a/j/f0/j/f;
.super Ljava/lang/Object;
.source "NetHelper.java"


# static fields
.field public static volatile b:Lf/e/a/j/f0/j/f;


# instance fields
.field public final a:Lf/e/a/j/f0/j/c;


# direct methods
.method public constructor <init>()V
    .locals 8

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 6
    new-instance v1, Lf/e/a/j/f0/j/f$a;

    invoke-direct {v1, p0}, Lf/e/a/j/f0/j/f$a;-><init>(Lf/e/a/j/f0/j/f;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "ZDEv"

    .line 7
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v1, v0, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 9
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    new-instance v4, Li/b0$a;

    invoke-direct {v4}, Li/b0$a;-><init>()V

    new-instance v5, Lf/e/a/j/i0/b;

    invoke-direct {v5}, Lf/e/a/j/i0/b;-><init>()V

    .line 12
    invoke-virtual {v4, v5}, Li/b0$a;->b(Li/y;)Li/b0$a;

    new-instance v5, Lf/e/a/j/f0/j/e;

    invoke-direct {v5}, Lf/e/a/j/f0/j/e;-><init>()V

    .line 13
    invoke-virtual {v4, v5}, Li/b0$a;->a(Li/y;)Li/b0$a;

    new-instance v5, Lf/e/a/i/a;

    invoke-direct {v5}, Lf/e/a/i/a;-><init>()V

    .line 14
    invoke-virtual {v4, v5}, Li/b0$a;->a(Li/y;)Li/b0$a;

    sget-object v5, Lf/e/a/j/f0/j/a;->a:Lf/e/a/j/f0/j/a;

    .line 15
    iput-object v5, v4, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    const-wide/16 v5, 0xf

    .line 16
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-virtual {v4, v5, v6, v7}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 18
    iput-object v2, v4, Li/b0$a;->k:Li/d;

    .line 19
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 20
    iput-object v2, v4, Li/b0$a;->m:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 21
    aget-object v0, v0, v3

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v4, v1, v0}, Li/b0$a;->e(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/b0$a;

    .line 22
    :cond_0
    new-instance v0, Li/b0;

    invoke-direct {v0, v4}, Li/b0;-><init>(Li/b0$a;)V

    .line 23
    new-instance v1, Ll/h0$b;

    invoke-direct {v1}, Ll/h0$b;-><init>()V

    .line 24
    invoke-static {}, Ll/n0/a/a;->c()Ll/n0/a/a;

    move-result-object v2

    .line 25
    iget-object v3, v1, Ll/h0$b;->d:Ljava/util/List;

    const-string v4, "factory == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/l$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v2, Lf/e/a/j/f0/j/d;->e:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "XxYXFBhJFhwEEUNJGgsKD0JMAAsG"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lf/e/a/j/f0/j/d;->e:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->t(Ll/h0$b;Ljava/lang/String;Li/b0;)Ll/m0/a/j;

    move-result-object v0

    .line 28
    iget-object v2, v1, Ll/h0$b;->e:Ljava/util/List;

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/e$a;

    .line 29
    const-class v3, Lf/e/a/j/f0/j/c;

    .line 30
    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->F(Ljava/util/List;Ll/e$a;Ll/h0$b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Lf/e/a/j/f0/j/c;

    iput-object v0, p0, Lf/e/a/j/f0/j/f;->a:Lf/e/a/j/f0/j/c;

    return-void
.end method

.method public static declared-synchronized a()Lf/e/a/j/f0/j/c;
    .locals 2

    const-class v0, Lf/e/a/j/f0/j/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/e/a/j/f0/j/f;->b:Lf/e/a/j/f0/j/f;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/e/a/j/f0/j/f;

    invoke-direct {v1}, Lf/e/a/j/f0/j/f;-><init>()V

    sput-object v1, Lf/e/a/j/f0/j/f;->b:Lf/e/a/j/f0/j/f;

    .line 3
    :cond_0
    sget-object v1, Lf/e/a/j/f0/j/f;->b:Lf/e/a/j/f0/j/f;

    iget-object v1, v1, Lf/e/a/j/f0/j/f;->a:Lf/e/a/j/f0/j/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
