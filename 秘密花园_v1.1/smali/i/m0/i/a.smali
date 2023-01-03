.class public final Li/m0/i/a;
.super Li/m0/i/f;
.source "AndroidPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/i/a$a;,
        Li/m0/i/a$c;,
        Li/m0/i/a$b;
    }
.end annotation


# static fields
.field public static final f:Z

.field public static final g:Li/m0/i/a$b;


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m0/i/g/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li/m0/i/g/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/m0/i/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/m0/i/a$b;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/m0/i/a;->g:Li/m0/i/a$b;

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected Android API level 21+ but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-boolean v0, Li/m0/i/a;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Li/m0/i/f;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Li/m0/i/g/e;

    const-string v2, "com.android.org.conscrypt"

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".OpenSSLSocketImpl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".OpenSSLSocketFactoryImpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SSLParametersImpl"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 5
    new-instance v6, Li/m0/i/g/f;

    const-string v7, "paramsClass"

    invoke-static {v2, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4, v5, v2}, Li/m0/i/g/f;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v4, 0x5

    const-string v5, "unable to load android socket classes"

    .line 6
    invoke-static {v4, v5, v2}, Lc/a/a/b/g/h;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_0
    const/4 v2, 0x0

    aput-object v6, v1, v2

    .line 7
    sget-object v4, Li/m0/i/b;->f:Li/m0/i/b$a;

    .line 8
    sget-boolean v4, Li/m0/i/b;->e:Z

    if-eqz v4, :cond_0

    .line 9
    sget-object v4, Li/m0/i/g/c;->a:Li/m0/i/g/c;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    .line 10
    new-instance v6, Li/m0/i/g/d;

    const-string v7, "com.google.android.gms.org.conscrypt"

    invoke-direct {v6, v7}, Li/m0/i/g/d;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v4

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    .line 12
    aget-object v7, v1, v6

    if-eqz v7, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 13
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Li/m0/i/g/e;

    .line 15
    invoke-interface {v6}, Li/m0/i/g/e;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_4
    iput-object v0, p0, Li/m0/i/a;->d:Ljava/util/List;

    :try_start_1
    const-string v0, "dalvik.system.CloseGuard"

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    new-array v4, v2, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "open"

    new-array v5, v5, [Ljava/lang/Class;

    .line 19
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "warnIfOpen"

    new-array v2, v2, [Ljava/lang/Class;

    .line 20
    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-object v0, v3

    move-object v4, v0

    .line 21
    :goto_4
    new-instance v1, Li/m0/i/g/b;

    invoke-direct {v1, v3, v4, v0}, Li/m0/i/g/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 22
    iput-object v1, p0, Li/m0/i/a;->e:Li/m0/i/g/b;

    return-void

    :cond_5
    const-string v0, "packageName"

    .line 23
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public b(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/c;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "checkServerTrusted"

    :try_start_0
    const-string v2, "android.net.http.X509TrustManagerExtensions"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Ljavax/net/ssl/X509TrustManager;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 4
    const-class v7, [Ljava/security/cert/X509Certificate;

    aput-object v7, v5, v6

    aput-object v0, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    .line 5
    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    new-instance v2, Li/m0/i/a$a;

    const-string v3, "extensions"

    invoke-static {v4, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v0}, Li/m0/i/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v2, Li/m0/k/a;

    invoke-virtual {p0, p1}, Li/m0/i/f;->c(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/e;

    move-result-object p1

    invoke-direct {v2, p1}, Li/m0/k/a;-><init>(Li/m0/k/e;)V

    :goto_0
    return-object v2
.end method

.method public c(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/e;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 2
    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "method"

    .line 4
    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    new-instance v1, Li/m0/i/a$c;

    invoke-direct {v1, p1, v0}, Li/m0/i/a$c;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-super {p0, p1}, Li/m0/i/f;->c(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/e;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Li/c0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1
    iget-object v1, p0, Li/m0/i/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Li/m0/i/g/e;

    invoke-interface {v3, p1}, Li/m0/i/g/e;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    check-cast v0, Li/m0/i/g/e;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p1, p2, p3}, Li/m0/i/g/e;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "protocols"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    throw p1

    :cond_1
    const-string p1, "address"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "socket"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/i/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Li/m0/i/g/e;

    invoke-interface {v3, p1}, Li/m0/i/g/e;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Li/m0/i/g/e;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Li/m0/i/g/e;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/i/a;->e:Li/m0/i/g/b;

    .line 2
    iget-object v1, v0, Li/m0/i/g/b;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object v0, v0, Li/m0/i/g/b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :catch_0
    :cond_1
    :goto_0
    return-object v2
.end method

.method public j(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "unable to determine cleartext support"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.security.NetworkSecurityPolicy"

    .line 1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "networkPolicyClass"

    .line 4
    invoke-static {v3, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "networkSecurityPolicy"

    invoke-static {v1, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, v1}, Li/m0/i/a;->o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :catch_3
    invoke-super {p0, p1}, Li/m0/i/f;->j(Ljava/lang/String;)Z

    goto :goto_0

    .line 9
    :catch_4
    invoke-super {p0, p1}, Li/m0/i/f;->j(Ljava/lang/String;)Z

    :goto_0
    return v2

    :cond_0
    const-string p1, "hostname"

    .line 10
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public k(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1, p2, p3}, Lc/a/a/b/g/h;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "message"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-object v1, p0, Li/m0/i/a;->e:Li/m0/i/g/b;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object v1, v1, Li/m0/i/g/b;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const/4 p2, 0x5

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Li/m0/i/a;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    throw v0

    :cond_4
    const-string p1, "message"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    const-string v1, "isCleartextTrafficPermitted"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 1
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 2
    invoke-virtual {v4, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_0
    new-instance v4, Lh/f;

    invoke-direct {v4, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-array v4, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    new-instance p2, Lh/f;

    invoke-direct {p2, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :catch_1
    invoke-super {p0, p1}, Li/m0/i/f;->j(Ljava/lang/String;)Z

    :goto_0
    move p1, v3

    :goto_1
    return p1
.end method
