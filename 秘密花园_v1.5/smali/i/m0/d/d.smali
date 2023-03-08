.class public final Li/m0/d/d;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# instance fields
.field public a:Li/m0/d/l$a;

.field public final b:Li/m0/d/l;

.field public c:Li/m0/d/h;

.field public d:Z

.field public e:Li/k0;

.field public final f:Li/m0/d/m;

.field public final g:Li/m0/d/i;

.field public final h:Li/a;

.field public final i:Li/f;

.field public final j:Li/t;


# direct methods
.method public constructor <init>(Li/m0/d/m;Li/m0/d/i;Li/a;Li/f;Li/t;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/d/d;->f:Li/m0/d/m;

    iput-object p2, p0, Li/m0/d/d;->g:Li/m0/d/i;

    iput-object p3, p0, Li/m0/d/d;->h:Li/a;

    iput-object p4, p0, Li/m0/d/d;->i:Li/f;

    iput-object p5, p0, Li/m0/d/d;->j:Li/t;

    .line 2
    new-instance p1, Li/m0/d/l;

    .line 3
    iget-object p2, p2, Li/m0/d/i;->d:Li/m0/d/j;

    .line 4
    invoke-direct {p1, p3, p2, p4, p5}, Li/m0/d/l;-><init>(Li/a;Li/m0/d/j;Li/f;Li/t;)V

    iput-object p1, p0, Li/m0/d/d;->b:Li/m0/d/l;

    return-void

    :cond_0
    const-string p1, "eventListener"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "connectionPool"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(IIIIZ)Li/m0/d/h;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v0}, Li/m0/d/m;->f()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v1, Li/m0/d/d;->d:Z

    .line 4
    iget-object v3, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 5
    iget-object v3, v3, Li/m0/d/m;->g:Li/m0/d/h;

    .line 6
    iget-object v4, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 7
    iget-object v4, v4, Li/m0/d/m;->g:Li/m0/d/h;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 9
    iget-object v4, v4, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v4, :cond_0

    .line 10
    iget-boolean v4, v4, Li/m0/d/h;->i:Z

    if-eqz v4, :cond_1

    .line 11
    iget-object v4, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v4}, Li/m0/d/m;->i()Ljava/net/Socket;

    move-result-object v4

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    throw v5

    :cond_1
    move-object v4, v5

    .line 13
    :goto_0
    :try_start_1
    iget-object v6, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 14
    iget-object v6, v6, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v6, :cond_2

    .line 15
    iget-object v3, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 16
    iget-object v3, v3, Li/m0/d/m;->g:Li/m0/d/h;

    move-object v6, v5

    goto :goto_1

    :cond_2
    move-object v6, v3

    move-object v3, v5

    :goto_1
    const/4 v7, 0x1

    if-nez v3, :cond_6

    .line 17
    iget-object v8, v1, Li/m0/d/d;->g:Li/m0/d/i;

    iget-object v9, v1, Li/m0/d/d;->h:Li/a;

    iget-object v10, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v8, v9, v10, v5, v0}, Li/m0/d/i;->d(Li/a;Li/m0/d/m;Ljava/util/List;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 18
    iget-object v3, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 19
    iget-object v3, v3, Li/m0/d/m;->g:Li/m0/d/h;

    const/4 v8, 0x1

    move-object v8, v5

    const/4 v9, 0x1

    goto :goto_3

    .line 20
    :cond_3
    iget-object v8, v1, Li/m0/d/d;->e:Li/k0;

    if-eqz v8, :cond_4

    .line 21
    iget-object v8, v1, Li/m0/d/d;->e:Li/k0;

    .line 22
    iput-object v5, v1, Li/m0/d/d;->e:Li/k0;

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual/range {p0 .. p0}, Li/m0/d/d;->d()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 24
    iget-object v8, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 25
    iget-object v8, v8, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v8, :cond_5

    .line 26
    iget-object v8, v8, Li/m0/d/h;->q:Li/k0;

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    throw v5

    :cond_6
    move-object v8, v5

    :goto_2
    const/4 v9, 0x0

    .line 28
    :goto_3
    monitor-exit v2

    if-eqz v4, :cond_7

    .line 29
    invoke-static {v4}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_7
    if-eqz v6, :cond_a

    .line 30
    iget-object v2, v1, Li/m0/d/d;->j:Li/t;

    iget-object v4, v1, Li/m0/d/d;->i:Li/f;

    if-eqz v2, :cond_9

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "call"

    .line 31
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 32
    :cond_9
    throw v5

    :cond_a
    :goto_4
    if-eqz v9, :cond_c

    .line 33
    iget-object v2, v1, Li/m0/d/d;->j:Li/t;

    iget-object v4, v1, Li/m0/d/d;->i:Li/f;

    if-eqz v3, :cond_b

    invoke-virtual {v2, v4, v3}, Li/t;->b(Li/f;Li/k;)V

    goto :goto_5

    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    return-object v3

    :cond_d
    if-nez v8, :cond_24

    .line 34
    iget-object v2, v1, Li/m0/d/d;->a:Li/m0/d/l$a;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Li/m0/d/l$a;->a()Z

    move-result v2

    if-nez v2, :cond_24

    .line 35
    :cond_e
    iget-object v2, v1, Li/m0/d/d;->b:Li/m0/d/l;

    .line 36
    invoke-virtual {v2}, Li/m0/d/l;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :cond_f
    invoke-virtual {v2}, Li/m0/d/l;->b()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 39
    invoke-virtual {v2}, Li/m0/d/l;->b()Z

    move-result v6

    const-string v10, "No route to "

    if-eqz v6, :cond_20

    .line 40
    iget-object v6, v2, Li/m0/d/l;->a:Ljava/util/List;

    iget v11, v2, Li/m0/d/l;->b:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v2, Li/m0/d/l;->b:I

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    .line 41
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v11, v2, Li/m0/d/l;->c:Ljava/util/List;

    .line 43
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v12

    sget-object v13, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v12, v13, :cond_14

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v12

    sget-object v13, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v12, v13, :cond_10

    goto :goto_7

    .line 44
    :cond_10
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v12

    .line 45
    instance-of v13, v12, Ljava/net/InetSocketAddress;

    if-eqz v13, :cond_13

    .line 46
    check-cast v12, Ljava/net/InetSocketAddress;

    if-eqz v12, :cond_12

    .line 47
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 48
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    const-string v14, "address.hostAddress"

    invoke-static {v13, v14}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 49
    :cond_11
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "hostName"

    invoke-static {v13, v14}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :goto_6
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    goto :goto_8

    :cond_12
    const-string v0, "$this$socketHost"

    .line 51
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    :cond_13
    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    .line 52
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_14
    :goto_7
    iget-object v12, v2, Li/m0/d/l;->e:Li/a;

    .line 55
    iget-object v12, v12, Li/a;->a:Li/x;

    .line 56
    iget-object v13, v12, Li/x;->e:Ljava/lang/String;

    .line 57
    iget v12, v12, Li/x;->f:I

    :goto_8
    const v14, 0xffff

    if-gt v7, v12, :cond_1f

    if-lt v14, v12, :cond_1f

    .line 58
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v14, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v10, v14, :cond_15

    .line 59
    invoke-static {v13, v12}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 60
    :cond_15
    iget-object v10, v2, Li/m0/d/l;->h:Li/t;

    iget-object v14, v2, Li/m0/d/l;->g:Li/f;

    if-eqz v10, :cond_1e

    const-string v10, "call"

    if-eqz v14, :cond_1d

    if-eqz v13, :cond_1c

    .line 61
    iget-object v14, v2, Li/m0/d/l;->e:Li/a;

    .line 62
    iget-object v14, v14, Li/a;->d:Li/s;

    .line 63
    invoke-interface {v14, v13}, Li/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 64
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1b

    .line 65
    iget-object v13, v2, Li/m0/d/l;->h:Li/t;

    iget-object v15, v2, Li/m0/d/l;->g:Li/f;

    if-eqz v13, :cond_1a

    if-eqz v15, :cond_19

    .line 66
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 67
    new-instance v14, Ljava/net/InetSocketAddress;

    invoke-direct {v14, v13, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 68
    :cond_16
    :goto_a
    iget-object v10, v2, Li/m0/d/l;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetSocketAddress;

    .line 69
    new-instance v12, Li/k0;

    iget-object v13, v2, Li/m0/d/l;->e:Li/a;

    invoke-direct {v12, v13, v6, v11}, Li/k0;-><init>(Li/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 70
    iget-object v11, v2, Li/m0/d/l;->f:Li/m0/d/j;

    .line 71
    monitor-enter v11

    .line 72
    :try_start_2
    iget-object v13, v11, Li/m0/d/j;->a:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    if-eqz v13, :cond_17

    .line 73
    iget-object v11, v2, Li/m0/d/l;->d:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 74
    :cond_17
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit v11

    throw v0

    .line 76
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_f

    goto :goto_c

    .line 77
    :cond_19
    invoke-static {v10}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_1a
    throw v5

    .line 79
    :cond_1b
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Li/m0/d/l;->e:Li/a;

    .line 80
    iget-object v2, v2, Li/a;->d:Li/s;

    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string v0, "domainName"

    .line 82
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    :cond_1d
    invoke-static {v10}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_1e
    throw v5

    .line 84
    :cond_1f
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; port is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_20
    new-instance v0, Ljava/net/SocketException;

    .line 86
    invoke-static {v10}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Li/m0/d/l;->e:Li/a;

    .line 87
    iget-object v4, v4, Li/a;->a:Li/x;

    .line 88
    iget-object v4, v4, Li/x;->e:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; exhausted proxy configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Li/m0/d/l;->a:Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_21
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 92
    iget-object v6, v2, Li/m0/d/l;->d:Ljava/util/List;

    invoke-static {v4, v6}, Lc/a/a/b/g/h;->d(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 93
    iget-object v2, v2, Li/m0/d/l;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    :cond_22
    new-instance v2, Li/m0/d/l$a;

    invoke-direct {v2, v4}, Li/m0/d/l$a;-><init>(Ljava/util/List;)V

    .line 95
    iput-object v2, v1, Li/m0/d/d;->a:Li/m0/d/l$a;

    const/4 v2, 0x1

    goto :goto_d

    .line 96
    :cond_23
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_24
    const/4 v2, 0x0

    .line 97
    :goto_d
    iget-object v4, v1, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v4

    .line 98
    :try_start_3
    iget-object v6, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v6}, Li/m0/d/m;->f()Z

    move-result v6

    if-nez v6, :cond_33

    if-eqz v2, :cond_26

    .line 99
    iget-object v2, v1, Li/m0/d/d;->a:Li/m0/d/l$a;

    if-eqz v2, :cond_25

    .line 100
    iget-object v2, v2, Li/m0/d/l$a;->b:Ljava/util/List;

    .line 101
    iget-object v6, v1, Li/m0/d/d;->g:Li/m0/d/i;

    .line 102
    iget-object v10, v1, Li/m0/d/d;->h:Li/a;

    iget-object v11, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 103
    invoke-virtual {v6, v10, v11, v2, v0}, Li/m0/d/i;->d(Li/a;Li/m0/d/m;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 104
    iget-object v0, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 105
    iget-object v3, v0, Li/m0/d/m;->g:Li/m0/d/h;

    const/4 v9, 0x1

    goto :goto_e

    .line 106
    :cond_25
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    :cond_26
    move-object v2, v5

    :cond_27
    :goto_e
    if-nez v9, :cond_2c

    if-nez v8, :cond_2a

    .line 107
    :try_start_4
    iget-object v0, v1, Li/m0/d/d;->a:Li/m0/d/l$a;

    if-eqz v0, :cond_29

    .line 108
    invoke-virtual {v0}, Li/m0/d/l$a;->a()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 109
    iget-object v3, v0, Li/m0/d/l$a;->b:Ljava/util/List;

    iget v6, v0, Li/m0/d/l$a;->a:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Li/m0/d/l$a;->a:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Li/k0;

    goto :goto_f

    .line 110
    :cond_28
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 111
    :cond_29
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 112
    :cond_2a
    :goto_f
    :try_start_5
    new-instance v3, Li/m0/d/h;

    iget-object v0, v1, Li/m0/d/d;->g:Li/m0/d/i;

    if-eqz v8, :cond_2b

    invoke-direct {v3, v0, v8}, Li/m0/d/h;-><init>(Li/m0/d/i;Li/k0;)V

    .line 113
    iput-object v3, v1, Li/m0/d/d;->c:Li/m0/d/h;

    goto :goto_10

    .line 114
    :cond_2b
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 115
    :cond_2c
    :goto_10
    monitor-exit v4

    if-eqz v9, :cond_2e

    .line 116
    iget-object v0, v1, Li/m0/d/d;->j:Li/t;

    iget-object v2, v1, Li/m0/d/d;->i:Li/f;

    if-eqz v3, :cond_2d

    invoke-virtual {v0, v2, v3}, Li/t;->b(Li/f;Li/k;)V

    return-object v3

    :cond_2d
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    :cond_2e
    if-eqz v3, :cond_32

    .line 117
    iget-object v0, v1, Li/m0/d/d;->i:Li/f;

    .line 118
    iget-object v4, v1, Li/m0/d/d;->j:Li/t;

    move-object v10, v3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 119
    invoke-virtual/range {v10 .. v17}, Li/m0/d/h;->c(IIIIZLi/f;Li/t;)V

    .line 120
    iget-object v0, v1, Li/m0/d/d;->g:Li/m0/d/i;

    .line 121
    iget-object v0, v0, Li/m0/d/i;->d:Li/m0/d/j;

    .line 122
    iget-object v4, v3, Li/m0/d/h;->q:Li/k0;

    .line 123
    invoke-virtual {v0, v4}, Li/m0/d/j;->a(Li/k0;)V

    .line 124
    iget-object v4, v1, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v4

    .line 125
    :try_start_6
    iput-object v5, v1, Li/m0/d/d;->c:Li/m0/d/h;

    .line 126
    iget-object v0, v1, Li/m0/d/d;->g:Li/m0/d/i;

    iget-object v6, v1, Li/m0/d/d;->h:Li/a;

    iget-object v9, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v0, v6, v9, v2, v7}, Li/m0/d/i;->d(Li/a;Li/m0/d/m;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 127
    iput-boolean v7, v3, Li/m0/d/h;->i:Z

    .line 128
    invoke-virtual {v3}, Li/m0/d/h;->j()Ljava/net/Socket;

    move-result-object v0

    .line 129
    iget-object v2, v1, Li/m0/d/d;->f:Li/m0/d/m;

    .line 130
    iget-object v3, v2, Li/m0/d/m;->g:Li/m0/d/h;

    .line 131
    iput-object v8, v1, Li/m0/d/d;->e:Li/k0;

    goto :goto_11

    .line 132
    :cond_2f
    iget-object v0, v1, Li/m0/d/d;->g:Li/m0/d/i;

    invoke-virtual {v0, v3}, Li/m0/d/i;->c(Li/m0/d/h;)V

    .line 133
    iget-object v0, v1, Li/m0/d/d;->f:Li/m0/d/m;

    invoke-virtual {v0, v3}, Li/m0/d/m;->a(Li/m0/d/h;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v5

    .line 134
    :goto_11
    monitor-exit v4

    if-eqz v0, :cond_30

    .line 135
    invoke-static {v0}, Li/m0/b;->g(Ljava/net/Socket;)V

    .line 136
    :cond_30
    iget-object v0, v1, Li/m0/d/d;->j:Li/t;

    iget-object v2, v1, Li/m0/d/d;->i:Li/f;

    if-eqz v3, :cond_31

    invoke-virtual {v0, v2, v3}, Li/t;->b(Li/f;Li/k;)V

    return-object v3

    :cond_31
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    :catchall_1
    move-exception v0

    .line 137
    monitor-exit v4

    throw v0

    .line 138
    :cond_32
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 139
    :cond_33
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 140
    monitor-exit v4

    throw v0

    .line 141
    :cond_34
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    .line 142
    monitor-exit v2

    throw v0
.end method

.method public final b(IIIIZZ)Li/m0/d/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Li/m0/d/d;->a(IIIIZ)Li/m0/d/h;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, v0, Li/m0/d/h;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    monitor-exit v1

    .line 6
    iget-object v1, v0, Li/m0/d/h;->c:Ljava/net/Socket;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 7
    iget-object v3, v0, Li/m0/d/h;->g:Lj/j;

    if-eqz v3, :cond_6

    .line 8
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v0, Li/m0/d/h;->f:Li/m0/g/f;

    if-eqz v2, :cond_2

    .line 10
    monitor-enter v2

    .line 11
    :try_start_1
    iget-boolean v1, v2, Li/m0/g/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    xor-int/lit8 v4, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2
    if-eqz p6, :cond_3

    .line 12
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    invoke-interface {v3}, Lj/j;->p()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/2addr v3, v5

    .line 15
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v4, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    nop

    goto :goto_1

    :catch_1
    :cond_3
    const/4 v4, 0x1

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v0}, Li/m0/d/h;->i()V

    goto :goto_0

    :cond_5
    return-object v0

    .line 17
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 18
    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :catchall_2
    move-exception p1

    .line 19
    monitor-exit v1

    throw p1
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/m0/d/d;->e:Li/k0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Li/m0/d/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Li/m0/d/d;->f:Li/m0/d/m;

    .line 6
    iget-object v1, v1, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Li/m0/d/h;->q:Li/k0;

    .line 8
    iput-object v1, p0, Li/m0/d/d;->e:Li/k0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    return v2

    .line 10
    :cond_1
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    .line 11
    :cond_2
    :try_start_3
    iget-object v1, p0, Li/m0/d/d;->a:Li/m0/d/l$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Li/m0/d/l$a;->a()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    iget-object v1, p0, Li/m0/d/d;->b:Li/m0/d/l;

    invoke-virtual {v1}, Li/m0/d/l;->a()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/d/d;->f:Li/m0/d/m;

    .line 2
    iget-object v0, v0, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v2, v0, Li/m0/d/h;->j:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Li/m0/d/h;->q:Li/k0;

    .line 5
    iget-object v0, v0, Li/k0;->a:Li/a;

    .line 6
    iget-object v0, v0, Li/a;->a:Li/x;

    .line 7
    iget-object v1, p0, Li/m0/d/d;->h:Li/a;

    .line 8
    iget-object v1, v1, Li/a;->a:Li/x;

    .line 9
    invoke-static {v0, v1}, Li/m0/b;->c(Li/x;Li/x;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/d/d;->g:Li/m0/d/i;

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
    iget-object v0, p0, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Li/m0/d/d;->d:Z
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
