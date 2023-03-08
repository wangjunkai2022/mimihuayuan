.class public Lcom/comeback/data/net/glide/OkHttpAppGlideModule;
.super Lf/d/a/q/a;
.source "OkHttpAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/q/a;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    :try_start_0
    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    .line 1
    new-instance p2, Lf/e/a/i/c/e;

    invoke-direct {p2}, Lf/e/a/i/c/e;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ZDEv"

    .line 2
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p2, v1, p1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    .line 5
    new-instance v1, Li/b0$a;

    invoke-direct {v1}, Li/b0$a;-><init>()V

    .line 6
    aget-object p1, p1, v0

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, p2, p1}, Li/b0$a;->e(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/b0$a;

    .line 7
    new-instance p1, Lf/e/a/i/c/f;

    invoke-direct {p1}, Lf/e/a/i/c/f;-><init>()V

    .line 8
    iput-object p1, v1, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3, p1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    .line 11
    new-instance p1, Li/b0;

    invoke-direct {p1, v1}, Li/b0;-><init>(Li/b0$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const-class p2, Lf/d/a/o/o/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/d/a/n/a/c$a;

    invoke-direct {v1, p1}, Lf/d/a/n/a/c$a;-><init>(Li/f$a;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 13
    const-class p2, Lf/e/a/j/t/e/e/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/t/e/e/d;

    invoke-direct {v1, p1}, Lf/e/a/j/t/e/e/d;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 14
    const-class p2, Lf/e/a/j/n/p/f/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/n/p/f/c;

    invoke-direct {v1, p1}, Lf/e/a/j/n/p/f/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 15
    const-class p2, Lf/e/a/j/l/h/g/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/l/h/g/c;

    invoke-direct {v1, p1}, Lf/e/a/j/l/h/g/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 16
    const-class p2, Lf/e/a/j/l0/h/e/b;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/l0/h/e/d;

    invoke-direct {v1, p1}, Lf/e/a/j/l0/h/e/d;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 17
    const-class p2, Lf/e/a/j/u/e/f/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/u/e/f/c;

    invoke-direct {v1, p1}, Lf/e/a/j/u/e/f/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 18
    const-class p2, Lf/e/a/j/b/g/e/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/b/g/e/c;

    invoke-direct {v1, p1}, Lf/e/a/j/b/g/e/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 19
    const-class p2, Lf/e/a/j/f0/j/g/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/f0/j/g/c;

    invoke-direct {v1, p1}, Lf/e/a/j/f0/j/g/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 20
    const-class p2, Lf/e/a/j/j/m/f/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/j/m/f/c;

    invoke-direct {v1, p1}, Lf/e/a/j/j/m/f/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 21
    const-class p2, Lf/e/a/i/b/a/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/i/b/a/c;

    invoke-direct {v1, p1}, Lf/e/a/i/b/a/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 22
    const-class p2, Lf/e/a/j/h0/m/f/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/h0/m/f/c;

    invoke-direct {v1, p1}, Lf/e/a/j/h0/m/f/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 23
    const-class p2, Lf/e/a/j/n0/c/f/b;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/n0/c/f/d;

    invoke-direct {v1, p1}, Lf/e/a/j/n0/c/f/d;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    .line 24
    const-class p2, Lf/e/a/j/e0/d/f/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/e/a/j/e0/d/f/c;

    invoke-direct {v1, p1}, Lf/e/a/j/e0/d/f/c;-><init>(Li/b0;)V

    invoke-virtual {p3, p2, v0, v1}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    return-void

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
