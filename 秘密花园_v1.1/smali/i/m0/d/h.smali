.class public final Li/m0/d/h;
.super Li/m0/g/f$c;
.source "RealConnection.kt"

# interfaces
.implements Li/k;


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Li/v;

.field public e:Li/c0;

.field public f:Li/m0/g/f;

.field public g:Lj/j;

.field public h:Lj/i;

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Li/m0/d/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J

.field public final p:Li/m0/d/i;

.field public final q:Li/k0;


# direct methods
.method public constructor <init>(Li/m0/d/i;Li/k0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Li/m0/g/f$c;-><init>()V

    iput-object p1, p0, Li/m0/d/h;->p:Li/m0/d/i;

    iput-object p2, p0, Li/m0/d/h;->q:Li/k0;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Li/m0/d/h;->m:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li/m0/d/h;->n:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    iput-wide p1, p0, Li/m0/d/h;->o:J

    return-void

    :cond_0
    const-string p1, "route"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "connectionPool"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Li/m0/g/f;)V
    .locals 1

    const-string v0, "connection"

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Li/m0/d/h;->p:Li/m0/d/i;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Li/m0/g/f;->f()I

    move-result p1

    iput p1, p0, Li/m0/d/h;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 4
    :cond_0
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Li/m0/g/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object v1, Li/m0/g/b;->f:Li/m0/g/b;

    invoke-virtual {p1, v1, v0}, Li/m0/g/m;->c(Li/m0/g/b;Ljava/io/IOException;)V

    return-void

    :cond_0
    const-string p1, "stream"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(IIIIZLi/f;Li/t;)V
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    const/4 v10, 0x0

    if-eqz v8, :cond_18

    const-string v0, "eventListener"

    if-eqz v9, :cond_17

    .line 1
    iget-object v0, v7, Li/m0/d/h;->e:Li/c0;

    const/4 v11, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_16

    .line 2
    iget-object v0, v7, Li/m0/d/h;->q:Li/k0;

    .line 3
    iget-object v0, v0, Li/k0;->a:Li/a;

    .line 4
    iget-object v0, v0, Li/a;->c:Ljava/util/List;

    .line 5
    new-instance v12, Li/m0/d/b;

    invoke-direct {v12, v0}, Li/m0/d/b;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, v7, Li/m0/d/h;->q:Li/k0;

    .line 7
    iget-object v1, v1, Li/k0;->a:Li/a;

    .line 8
    iget-object v2, v1, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    .line 9
    sget-object v1, Li/m;->h:Li/m;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v7, Li/m0/d/h;->q:Li/k0;

    .line 11
    iget-object v0, v0, Li/k0;->a:Li/a;

    .line 12
    iget-object v0, v0, Li/a;->a:Li/x;

    .line 13
    iget-object v0, v0, Li/x;->e:Ljava/lang/String;

    .line 14
    sget-object v1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 15
    sget-object v1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 16
    invoke-virtual {v1, v0}, Li/m0/i/f;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Li/m0/d/k;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    .line 18
    invoke-static {v3, v0, v4}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_2
    new-instance v0, Li/m0/d/k;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 21
    :cond_3
    iget-object v0, v1, Li/a;->b:Ljava/util/List;

    .line 22
    sget-object v1, Li/c0;->f:Li/c0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_1
    move-object v13, v10

    .line 23
    :goto_2
    :try_start_0
    iget-object v0, v7, Li/m0/d/h;->q:Li/k0;

    invoke-virtual {v0}, Li/k0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 24
    invoke-virtual/range {v1 .. v6}, Li/m0/d/h;->e(IIILi/f;Li/t;)V

    .line 25
    iget-object v0, v7, Li/m0/d/h;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, p1

    move/from16 v2, p2

    goto :goto_3

    :cond_5
    move v1, p1

    move/from16 v2, p2

    .line 26
    :try_start_1
    invoke-virtual {p0, p1, v2, v8, v9}, Li/m0/d/h;->d(IILi/f;Li/t;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move/from16 v3, p4

    .line 27
    :try_start_2
    invoke-virtual {p0, v12, v3, v8, v9}, Li/m0/d/h;->f(Li/m0/d/b;ILi/f;Li/t;)V

    .line 28
    iget-object v0, v7, Li/m0/d/h;->q:Li/k0;

    .line 29
    iget-object v0, v0, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 30
    iget-object v4, v7, Li/m0/d/h;->q:Li/k0;

    .line 31
    iget-object v4, v4, Li/k0;->b:Ljava/net/Proxy;

    .line 32
    invoke-virtual {v9, v8, v0, v4}, Li/t;->a(Li/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :goto_4
    iget-object v0, v7, Li/m0/d/h;->q:Li/k0;

    invoke-virtual {v0}, Li/k0;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Li/m0/d/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 34
    :cond_6
    new-instance v0, Li/m0/d/k;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 35
    :cond_7
    :goto_5
    iget-object v0, v7, Li/m0/d/h;->f:Li/m0/g/f;

    if-eqz v0, :cond_8

    .line 36
    iget-object v1, v7, Li/m0/d/h;->p:Li/m0/d/i;

    monitor-enter v1

    .line 37
    :try_start_3
    invoke-virtual {v0}, Li/m0/g/f;->f()I

    move-result v0

    iput v0, v7, Li/m0/d/h;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    move/from16 v3, p4

    goto :goto_8

    :catch_2
    move-exception v0

    move v1, p1

    move/from16 v2, p2

    goto :goto_7

    .line 39
    :goto_8
    iget-object v4, v7, Li/m0/d/h;->c:Ljava/net/Socket;

    if-eqz v4, :cond_9

    invoke-static {v4}, Li/m0/b;->g(Ljava/net/Socket;)V

    .line 40
    :cond_9
    iget-object v4, v7, Li/m0/d/h;->b:Ljava/net/Socket;

    if-eqz v4, :cond_a

    invoke-static {v4}, Li/m0/b;->g(Ljava/net/Socket;)V

    .line 41
    :cond_a
    iput-object v10, v7, Li/m0/d/h;->c:Ljava/net/Socket;

    .line 42
    iput-object v10, v7, Li/m0/d/h;->b:Ljava/net/Socket;

    .line 43
    iput-object v10, v7, Li/m0/d/h;->g:Lj/j;

    .line 44
    iput-object v10, v7, Li/m0/d/h;->h:Lj/i;

    .line 45
    iput-object v10, v7, Li/m0/d/h;->d:Li/v;

    .line 46
    iput-object v10, v7, Li/m0/d/h;->e:Li/c0;

    .line 47
    iput-object v10, v7, Li/m0/d/h;->f:Li/m0/g/f;

    .line 48
    iget-object v4, v7, Li/m0/d/h;->q:Li/k0;

    .line 49
    iget-object v5, v4, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 50
    iget-object v4, v4, Li/k0;->b:Ljava/net/Proxy;

    if-eqz v5, :cond_14

    if-eqz v4, :cond_13

    if-nez v13, :cond_b

    .line 51
    new-instance v13, Li/m0/d/k;

    invoke-direct {v13, v0}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    goto :goto_9

    .line 52
    :cond_b
    iget-object v4, v13, Li/m0/d/k;->b:Ljava/io/IOException;

    invoke-virtual {v4, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    iput-object v0, v13, Li/m0/d/k;->a:Ljava/io/IOException;

    :goto_9
    if-eqz p5, :cond_12

    .line 54
    iput-boolean v11, v12, Li/m0/d/b;->c:Z

    .line 55
    iget-boolean v4, v12, Li/m0/d/b;->b:Z

    if-nez v4, :cond_c

    goto :goto_a

    .line 56
    :cond_c
    instance-of v4, v0, Ljava/net/ProtocolException;

    if-eqz v4, :cond_d

    goto :goto_a

    .line 57
    :cond_d
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_e

    goto :goto_a

    .line 58
    :cond_e
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_f

    goto :goto_a

    .line 59
    :cond_f
    instance-of v4, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v4, :cond_10

    goto :goto_a

    .line 60
    :cond_10
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_12

    goto/16 :goto_2

    .line 61
    :cond_12
    throw v13

    :cond_13
    const-string v0, "proxy"

    .line 62
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v10

    :cond_14
    const-string v0, "inetSocketAddress"

    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v10

    .line 63
    :cond_15
    new-instance v0, Li/m0/d/k;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_16
    const-string v0, "already connected"

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_17
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v10

    :cond_18
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v10
.end method

.method public final d(IILi/f;Li/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/d/h;->q:Li/k0;

    .line 2
    iget-object v1, v0, Li/k0;->b:Ljava/net/Proxy;

    .line 3
    iget-object v0, v0, Li/k0;->a:Li/a;

    .line 4
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Li/m0/d/e;->a:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 5
    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Li/a;->e:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    :goto_1
    iput-object v0, p0, Li/m0/d/h;->b:Ljava/net/Socket;

    .line 9
    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 10
    iget-object v1, v1, Li/k0;->c:Ljava/net/InetSocketAddress;

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 12
    :try_start_0
    sget-object p2, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 13
    sget-object p2, Li/m0/i/f;->a:Li/m0/i/f;

    .line 14
    iget-object p3, p0, Li/m0/d/h;->q:Li/k0;

    .line 15
    iget-object p3, p3, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 16
    invoke-virtual {p2, v0, p3, p1}, Li/m0/i/f;->g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-static {v0}, Lj/b;->y(Ljava/net/Socket;)Lj/a0;

    move-result-object p1

    invoke-static {p1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object p1

    iput-object p1, p0, Li/m0/d/h;->g:Lj/j;

    .line 18
    invoke-static {v0}, Lj/b;->w(Ljava/net/Socket;)Lj/y;

    move-result-object p1

    invoke-static {p1}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object p1

    iput-object p1, p0, Li/m0/d/h;->h:Lj/i;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 20
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Li/m0/d/h;->q:Li/k0;

    .line 22
    iget-object p4, p4, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 25
    throw p2

    :cond_3
    const-string p1, "inetSocketAddress"

    .line 26
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    .line 27
    :cond_5
    throw v3

    .line 28
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3
.end method

.method public final e(IIILi/f;Li/t;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    new-instance v4, Li/e0$a;

    invoke-direct {v4}, Li/e0$a;-><init>()V

    .line 2
    iget-object v5, v0, Li/m0/d/h;->q:Li/k0;

    .line 3
    iget-object v5, v5, Li/k0;->a:Li/a;

    .line 4
    iget-object v5, v5, Li/a;->a:Li/x;

    .line 5
    invoke-virtual {v4, v5}, Li/e0$a;->j(Li/x;)Li/e0$a;

    const-string v5, "CONNECT"

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v4, v5, v6}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    .line 7
    iget-object v5, v0, Li/m0/d/h;->q:Li/k0;

    .line 8
    iget-object v5, v5, Li/k0;->a:Li/a;

    .line 9
    iget-object v5, v5, Li/a;->a:Li/x;

    const/4 v7, 0x1

    .line 10
    invoke-static {v5, v7}, Li/m0/b;->C(Li/x;Z)Ljava/lang/String;

    move-result-object v5

    const-string v8, "Host"

    invoke-virtual {v4, v8, v5}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v5, "Proxy-Connection"

    const-string v8, "Keep-Alive"

    .line 11
    invoke-virtual {v4, v5, v8}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v5, "User-Agent"

    const-string v8, "okhttp/4.2.2"

    .line 12
    invoke-virtual {v4, v5, v8}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 13
    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v4

    .line 14
    new-instance v5, Li/h0$a;

    invoke-direct {v5}, Li/h0$a;-><init>()V

    .line 15
    iput-object v4, v5, Li/h0$a;->a:Li/e0;

    .line 16
    sget-object v8, Li/c0;->c:Li/c0;

    .line 17
    iput-object v8, v5, Li/h0$a;->b:Li/c0;

    const/16 v8, 0x197

    .line 18
    iput v8, v5, Li/h0$a;->c:I

    const-string v8, "Preemptive Authenticate"

    .line 19
    iput-object v8, v5, Li/h0$a;->d:Ljava/lang/String;

    .line 20
    sget-object v8, Li/m0/b;->c:Li/i0;

    .line 21
    iput-object v8, v5, Li/h0$a;->g:Li/i0;

    const-wide/16 v8, -0x1

    .line 22
    iput-wide v8, v5, Li/h0$a;->k:J

    .line 23
    iput-wide v8, v5, Li/h0$a;->l:J

    const-string v8, "Proxy-Authenticate"

    const-string v9, "OkHttp-Preemptive"

    .line 24
    invoke-virtual {v5, v8, v9}, Li/h0$a;->e(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;

    .line 25
    invoke-virtual {v5}, Li/h0$a;->b()Li/h0;

    move-result-object v5

    .line 26
    iget-object v8, v0, Li/m0/d/h;->q:Li/k0;

    .line 27
    iget-object v9, v8, Li/k0;->a:Li/a;

    .line 28
    iget-object v9, v9, Li/a;->i:Li/c;

    .line 29
    invoke-interface {v9, v8, v5}, Li/c;->a(Li/k0;Li/h0;)Li/e0;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v4, v5

    .line 30
    :cond_0
    iget-object v5, v4, Li/e0;->b:Li/x;

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x15

    if-ge v8, v9, :cond_b

    move/from16 v9, p1

    .line 31
    invoke-virtual {v0, v9, v1, v2, v3}, Li/m0/d/h;->d(IILi/f;Li/t;)V

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Li/m0/b;->C(Li/x;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " HTTP/1.1"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 33
    :goto_1
    iget-object v10, v0, Li/m0/d/h;->g:Lj/j;

    if-eqz v10, :cond_a

    .line 34
    iget-object v11, v0, Li/m0/d/h;->h:Lj/i;

    if-eqz v11, :cond_9

    .line 35
    new-instance v12, Li/m0/f/a;

    invoke-direct {v12, v6, v6, v10, v11}, Li/m0/f/a;-><init>(Li/b0;Li/m0/d/h;Lj/j;Lj/i;)V

    .line 36
    invoke-interface {v10}, Lj/a0;->i()Lj/b0;

    move-result-object v6

    int-to-long v13, v1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v13, v14, v15}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    .line 37
    invoke-interface {v11}, Lj/y;->i()Lj/b0;

    move-result-object v6

    move/from16 v13, p3

    int-to-long v14, v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v14, v15, v1}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    .line 38
    iget-object v1, v4, Li/e0;->d:Li/w;

    .line 39
    invoke-virtual {v12, v1, v7}, Li/m0/f/a;->m(Li/w;Ljava/lang/String;)V

    .line 40
    iget-object v1, v12, Li/m0/f/a;->g:Lj/i;

    invoke-interface {v1}, Lj/i;->flush()V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v12, v1}, Li/m0/f/a;->g(Z)Li/h0$a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 42
    iput-object v4, v1, Li/h0$a;->a:Li/e0;

    .line 43
    invoke-virtual {v1}, Li/h0$a;->b()Li/h0;

    move-result-object v1

    .line 44
    invoke-static {v1}, Li/m0/b;->n(Li/h0;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v4, v14, v16

    if-nez v4, :cond_1

    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {v12, v14, v15}, Li/m0/f/a;->j(J)Lj/a0;

    move-result-object v4

    const v6, 0x7fffffff

    .line 46
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v6, v12}, Li/m0/b;->z(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z

    .line 47
    check-cast v4, Li/m0/f/a$d;

    invoke-virtual {v4}, Li/m0/f/a$d;->close()V

    .line 48
    :goto_2
    iget v4, v1, Li/h0;->e:I

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_5

    const/16 v6, 0x197

    if-ne v4, v6, :cond_4

    .line 49
    iget-object v4, v0, Li/m0/d/h;->q:Li/k0;

    .line 50
    iget-object v6, v4, Li/k0;->a:Li/a;

    .line 51
    iget-object v6, v6, Li/a;->i:Li/c;

    .line 52
    invoke-interface {v6, v4, v1}, Li/c;->a(Li/k0;Li/h0;)Li/e0;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v6, 0x2

    const-string v10, "Connection"

    const/4 v11, 0x0

    .line 53
    invoke-static {v1, v10, v11, v6}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "close"

    const/4 v10, 0x1

    invoke-static {v6, v1, v10}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    move/from16 v1, p2

    goto/16 :goto_1

    .line 54
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    iget v1, v1, Li/h0;->e:I

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_5
    invoke-interface {v10}, Lj/j;->h()Lj/g;

    move-result-object v1

    invoke-virtual {v1}, Lj/g;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Lj/i;->h()Lj/g;

    move-result-object v1

    invoke-virtual {v1}, Lj/g;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_b

    .line 59
    iget-object v1, v0, Li/m0/d/h;->b:Ljava/net/Socket;

    if-eqz v1, :cond_6

    invoke-static {v1}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_6
    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Li/m0/d/h;->b:Ljava/net/Socket;

    .line 61
    iput-object v1, v0, Li/m0/d/h;->h:Lj/i;

    .line 62
    iput-object v1, v0, Li/m0/d/h;->g:Lj/j;

    .line 63
    iget-object v1, v0, Li/m0/d/h;->q:Li/k0;

    .line 64
    iget-object v6, v1, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 65
    iget-object v1, v1, Li/k0;->b:Ljava/net/Proxy;

    .line 66
    invoke-virtual {v3, v2, v6, v1}, Li/t;->a(Li/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    .line 67
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v1, 0x0

    throw v1

    .line 69
    :cond_9
    invoke-static {}, Lh/o/c/g;->e()V

    throw v6

    .line 70
    :cond_a
    invoke-static {}, Lh/o/c/g;->e()V

    throw v6

    :cond_b
    return-void
.end method

.method public final f(Li/m0/d/b;ILi/f;Li/t;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p3, Li/c0;->f:Li/c0;

    sget-object p4, Li/c0;->c:Li/c0;

    iget-object v0, p0, Li/m0/d/h;->q:Li/k0;

    .line 2
    iget-object v0, v0, Li/k0;->a:Li/a;

    .line 3
    iget-object v1, v0, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    .line 4
    iget-object p1, v0, Li/a;->b:Ljava/util/List;

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Li/m0/d/h;->b:Ljava/net/Socket;

    iput-object p1, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    .line 7
    iput-object p3, p0, Li/m0/d/h;->e:Li/c0;

    .line 8
    invoke-virtual {p0, p2}, Li/m0/d/h;->k(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Li/m0/d/h;->b:Ljava/net/Socket;

    iput-object p1, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    .line 10
    iput-object p4, p0, Li/m0/d/h;->e:Li/c0;

    return-void

    :cond_1
    const/4 p3, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Li/m0/d/h;->b:Ljava/net/Socket;

    .line 12
    iget-object v3, v0, Li/a;->a:Li/x;

    .line 13
    iget-object v3, v3, Li/x;->e:Ljava/lang/String;

    .line 14
    iget-object v4, v0, Li/a;->a:Li/x;

    .line 15
    iget v4, v4, Li/x;->f:I

    const/4 v5, 0x1

    .line 16
    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1, v1}, Li/m0/d/b;->a(Ljavax/net/ssl/SSLSocket;)Li/m;

    move-result-object p1

    .line 18
    iget-boolean v2, p1, Li/m;->b:Z

    if-eqz v2, :cond_2

    .line 19
    sget-object v2, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 20
    sget-object v2, Li/m0/i/f;->a:Li/m0/i/f;

    .line 21
    iget-object v3, v0, Li/a;->a:Li/x;

    .line 22
    iget-object v3, v3, Li/x;->e:Ljava/lang/String;

    .line 23
    iget-object v4, v0, Li/a;->b:Ljava/util/List;

    .line 24
    invoke-virtual {v2, v1, v3, v4}, Li/m0/i/f;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    :cond_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 26
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 27
    sget-object v3, Li/v;->f:Li/v$a;

    const-string v4, "sslSocketSession"

    invoke-static {v2, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Li/v$a;->a(Ljavax/net/ssl/SSLSession;)Li/v;

    move-result-object v3

    .line 28
    iget-object v4, v0, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v4, :cond_a

    .line 29
    iget-object v6, v0, Li/a;->a:Li/x;

    .line 30
    iget-object v6, v6, Li/x;->e:Ljava/lang/String;

    .line 31
    invoke-interface {v4, v6, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 32
    invoke-virtual {v3}, Li/v;->b()Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 35
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n              |Hostname "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, v0, Li/a;->a:Li/x;

    .line 37
    iget-object v0, v0, Li/x;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    sget-object v0, Li/h;->d:Li/h$a;

    invoke-virtual {v0, p1}, Li/h$a;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v2, "cert.subjectDN"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    sget-object v0, Li/m0/k/d;->a:Li/m0/k/d;

    const/4 v2, 0x7

    .line 42
    invoke-virtual {v0, p1, v2}, Li/m0/k/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 43
    invoke-virtual {v0, p1, v3}, Li/m0/k/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, p3, v5}, Lh/s/d;->z(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_3
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hostname "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p3, v0, Li/a;->a:Li/x;

    .line 54
    iget-object p3, p3, Li/x;->e:Ljava/lang/String;

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified (no certificates)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    iget-object v2, v0, Li/a;->h:Li/h;

    if-eqz v2, :cond_9

    .line 58
    new-instance v4, Li/v;

    .line 59
    iget-object v5, v3, Li/v;->b:Li/l0;

    .line 60
    iget-object v6, v3, Li/v;->c:Li/j;

    .line 61
    iget-object v7, v3, Li/v;->d:Ljava/util/List;

    .line 62
    new-instance v8, Li/m0/d/f;

    invoke-direct {v8, v2, v3, v0}, Li/m0/d/f;-><init>(Li/h;Li/v;Li/a;)V

    .line 63
    invoke-direct {v4, v5, v6, v7, v8}, Li/v;-><init>(Li/l0;Li/j;Ljava/util/List;Lh/o/b/a;)V

    iput-object v4, p0, Li/m0/d/h;->d:Li/v;

    .line 64
    iget-object v0, v0, Li/a;->a:Li/x;

    .line 65
    iget-object v0, v0, Li/x;->e:Ljava/lang/String;

    .line 66
    new-instance v3, Li/m0/d/g;

    invoke-direct {v3, p0}, Li/m0/d/g;-><init>(Li/m0/d/h;)V

    invoke-virtual {v2, v0, v3}, Li/h;->a(Ljava/lang/String;Lh/o/b/a;)V

    .line 67
    iget-boolean p1, p1, Li/m;->b:Z

    if-eqz p1, :cond_6

    .line 68
    sget-object p1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 69
    sget-object p1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 70
    invoke-virtual {p1, v1}, Li/m0/i/f;->h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p3

    .line 71
    :cond_6
    iput-object v1, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    .line 72
    invoke-static {v1}, Lj/b;->y(Ljava/net/Socket;)Lj/a0;

    move-result-object p1

    invoke-static {p1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object p1

    iput-object p1, p0, Li/m0/d/h;->g:Lj/j;

    .line 73
    invoke-static {v1}, Lj/b;->w(Ljava/net/Socket;)Lj/y;

    move-result-object p1

    invoke-static {p1}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object p1

    iput-object p1, p0, Li/m0/d/h;->h:Lj/i;

    if-eqz p3, :cond_7

    .line 74
    sget-object p1, Li/c0;->i:Li/c0$a;

    invoke-virtual {p1, p3}, Li/c0$a;->a(Ljava/lang/String;)Li/c0;

    move-result-object p4

    :cond_7
    iput-object p4, p0, Li/m0/d/h;->e:Li/c0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    sget-object p1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 76
    sget-object p1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 77
    invoke-virtual {p1, v1}, Li/m0/i/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 78
    iget-object p1, p0, Li/m0/d/h;->e:Li/c0;

    sget-object p3, Li/c0;->e:Li/c0;

    if-ne p1, p3, :cond_8

    .line 79
    invoke-virtual {p0, p2}, Li/m0/d/h;->k(I)V

    :cond_8
    return-void

    .line 80
    :cond_9
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p3

    .line 81
    :cond_a
    :try_start_3
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p3

    :catchall_0
    move-exception p1

    move-object p3, v1

    goto :goto_0

    .line 82
    :cond_b
    :try_start_4
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p3, :cond_c

    .line 83
    sget-object p2, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 84
    sget-object p2, Li/m0/i/f;->a:Li/m0/i/f;

    .line 85
    invoke-virtual {p2, p3}, Li/m0/i/f;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_c
    if-eqz p3, :cond_d

    .line 86
    invoke-static {p3}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_d
    throw p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/d/h;->f:Li/m0/g/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Li/b0;Li/y$a;)Li/m0/e/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Li/m0/d/h;->g:Lj/j;

    if-eqz v2, :cond_2

    .line 3
    iget-object v3, p0, Li/m0/d/h;->h:Lj/i;

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, p0, Li/m0/d/h;->f:Li/m0/g/f;

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Li/m0/g/k;

    invoke-direct {v0, p1, p0, p2, v1}, Li/m0/g/k;-><init>(Li/b0;Li/m0/d/h;Li/y$a;Li/m0/g/f;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Li/y$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 7
    invoke-interface {v2}, Lj/a0;->i()Lj/b0;

    move-result-object v0

    invoke-interface {p2}, Li/y$a;->b()I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    .line 8
    invoke-interface {v3}, Lj/y;->i()Lj/b0;

    move-result-object v0

    invoke-interface {p2}, Li/y$a;->c()I

    move-result p2

    int-to-long v4, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, p2}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    .line 9
    new-instance v0, Li/m0/f/a;

    invoke-direct {v0, p1, p0, v2, v3}, Li/m0/f/a;-><init>(Li/b0;Li/m0/d/h;Lj/j;Lj/i;)V

    :goto_0
    return-object v0

    .line 10
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 11
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 12
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/d/h;->p:Li/m0/d/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-boolean v2, Lh/j;->a:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/m0/d/h;->p:Li/m0/d/i;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Li/m0/d/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public j()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/d/h;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2
    iget-object v2, p0, Li/m0/d/h;->g:Lj/j;

    if-eqz v2, :cond_f

    .line 3
    iget-object v3, p0, Li/m0/d/h;->h:Lj/i;

    if-eqz v3, :cond_e

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance v5, Li/m0/g/f$b;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Li/m0/g/f$b;-><init>(Z)V

    .line 6
    iget-object v7, p0, Li/m0/d/h;->q:Li/k0;

    .line 7
    iget-object v7, v7, Li/k0;->a:Li/a;

    .line 8
    iget-object v7, v7, Li/a;->a:Li/x;

    .line 9
    iget-object v7, v7, Li/x;->e:Ljava/lang/String;

    if-eqz v7, :cond_d

    if-eqz v2, :cond_c

    if-eqz v3, :cond_b

    .line 10
    iput-object v0, v5, Li/m0/g/f$b;->a:Ljava/net/Socket;

    .line 11
    iput-object v7, v5, Li/m0/g/f$b;->b:Ljava/lang/String;

    .line 12
    iput-object v2, v5, Li/m0/g/f$b;->c:Lj/j;

    .line 13
    iput-object v3, v5, Li/m0/g/f$b;->d:Lj/i;

    .line 14
    iput-object p0, v5, Li/m0/g/f$b;->e:Li/m0/g/f$c;

    .line 15
    iput p1, v5, Li/m0/g/f$b;->g:I

    .line 16
    new-instance p1, Li/m0/g/f;

    invoke-direct {p1, v5}, Li/m0/g/f;-><init>(Li/m0/g/f$b;)V

    .line 17
    iput-object p1, p0, Li/m0/d/h;->f:Li/m0/g/f;

    .line 18
    iget-object v0, p1, Li/m0/g/f;->s:Li/m0/g/n;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-boolean v2, v0, Li/m0/g/n;->c:Z

    if-nez v2, :cond_a

    .line 21
    iget-boolean v2, v0, Li/m0/g/n;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    sget-object v2, Li/m0/g/n;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    sget-object v2, Li/m0/g/n;->g:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> CONNECTION "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Li/m0/g/e;->a:Lj/k;

    invoke-virtual {v5}, Lj/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Li/m0/b;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 24
    :cond_1
    iget-object v2, v0, Li/m0/g/n;->e:Lj/i;

    sget-object v3, Li/m0/g/e;->a:Lj/k;

    invoke-interface {v2, v3}, Lj/i;->s(Lj/k;)Lj/i;

    .line 25
    iget-object v2, v0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v2}, Lj/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    monitor-exit v0

    .line 27
    :goto_0
    iget-object v0, p1, Li/m0/g/f;->s:Li/m0/g/n;

    iget-object v2, p1, Li/m0/g/f;->l:Li/m0/g/r;

    .line 28
    monitor-enter v0

    :try_start_2
    const-string v3, "settings"

    if-eqz v2, :cond_9

    .line 29
    iget-boolean v1, v0, Li/m0/g/n;->c:Z

    if-nez v1, :cond_8

    .line 30
    iget v1, v2, Li/m0/g/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    const/4 v3, 0x4

    .line 31
    invoke-virtual {v0, v4, v1, v3, v4}, Li/m0/g/n;->f(IIII)V

    const/16 v1, 0xa

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    shl-int v7, v6, v5

    .line 32
    iget v8, v2, Li/m0/g/r;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    if-eq v5, v3, :cond_5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    goto :goto_3

    :cond_5
    const/4 v7, 0x3

    .line 33
    :goto_3
    iget-object v8, v0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v8, v7}, Lj/i;->l(I)Lj/i;

    .line 34
    iget-object v7, v0, Li/m0/g/n;->e:Lj/i;

    .line 35
    iget-object v8, v2, Li/m0/g/r;->b:[I

    aget v8, v8, v5

    .line 36
    invoke-interface {v7, v8}, Lj/i;->m(I)Lj/i;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 37
    :cond_6
    iget-object v1, v0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v1}, Lj/i;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    iget-object v0, p1, Li/m0/g/f;->l:Li/m0/g/r;

    invoke-virtual {v0}, Li/m0/g/r;->a()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_7

    .line 40
    iget-object v2, p1, Li/m0/g/f;->s:Li/m0/g/n;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v4, v0, v1}, Li/m0/g/n;->H(IJ)V

    .line 41
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p1, Li/m0/g/f;->t:Li/m0/g/f$d;

    const-string v2, "OkHttp "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 42
    :cond_8
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_9
    invoke-static {v3}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 44
    :cond_a
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_b
    const-string p1, "sink"

    .line 45
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_c
    const-string p1, "source"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-string p1, "connectionName"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_e
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 47
    :cond_f
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 48
    :cond_10
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public final l(Li/x;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 2
    iget-object v1, v1, Li/k0;->a:Li/a;

    .line 3
    iget-object v1, v1, Li/a;->a:Li/x;

    .line 4
    iget v2, p1, Li/x;->f:I

    iget v3, v1, Li/x;->f:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    .line 5
    :cond_0
    iget-object v2, p1, Li/x;->e:Ljava/lang/String;

    iget-object v1, v1, Li/x;->e:Ljava/lang/String;

    .line 6
    invoke-static {v2, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 7
    :cond_1
    iget-object v1, p0, Li/m0/d/h;->d:Li/v;

    if-eqz v1, :cond_4

    sget-object v3, Li/m0/k/d;->a:Li/m0/k/d;

    .line 8
    iget-object p1, p1, Li/x;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Li/v;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 10
    invoke-virtual {v3, p1, v0}, Li/m0/k/d;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lh/f;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4
    :goto_0
    return v4

    :cond_5
    const-string p1, "url"

    .line 12
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 2
    iget-object v1, v1, Li/k0;->a:Li/a;

    .line 3
    iget-object v1, v1, Li/a;->a:Li/x;

    .line 4
    iget-object v1, v1, Li/x;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 6
    iget-object v1, v1, Li/k0;->a:Li/a;

    .line 7
    iget-object v1, v1, Li/a;->a:Li/x;

    .line 8
    iget v1, v1, Li/x;->f:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 11
    iget-object v1, v1, Li/k0;->b:Ljava/net/Proxy;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Li/m0/d/h;->q:Li/k0;

    .line 14
    iget-object v1, v1, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Li/m0/d/h;->d:Li/v;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, v1, Li/v;->c:Li/j;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Li/m0/d/h;->e:Li/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
