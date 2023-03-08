.class public final Li/m0/e/i;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Li/y;


# instance fields
.field public final a:Li/b0;


# direct methods
.method public constructor <init>(Li/b0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/e/i;->a:Li/b0;

    return-void

    :cond_0
    const-string p1, "client"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    .line 2
    move-object/from16 v2, p1

    check-cast v2, Li/m0/e/g;

    .line 3
    iget-object v9, v2, Li/m0/e/g;->c:Li/m0/d/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v10, v0

    move-object v11, v3

    const/4 v12, 0x0

    :goto_0
    if-eqz v10, :cond_2d

    .line 4
    iget-object v0, v9, Li/m0/d/m;->e:Li/e0;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, v0, Li/e0;->b:Li/x;

    iget-object v5, v10, Li/e0;->b:Li/x;

    .line 6
    invoke-static {v0, v5}, Li/m0/b;->c(Li/x;Li/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Li/m0/d/m;->f:Li/m0/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/m0/d/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 p1, v12

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    .line 7
    :cond_1
    iget-object v0, v9, Li/m0/d/m;->h:Li/m0/d/c;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v9, Li/m0/d/m;->f:Li/m0/d/d;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v9, v3, v4}, Li/m0/d/m;->g(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 10
    iput-object v3, v9, Li/m0/d/m;->f:Li/m0/d/d;

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_2
    iput-object v10, v9, Li/m0/d/m;->e:Li/e0;

    .line 13
    new-instance v0, Li/m0/d/d;

    .line 14
    iget-object v5, v9, Li/m0/d/m;->a:Li/m0/d/i;

    .line 15
    iget-object v4, v10, Li/e0;->b:Li/x;

    .line 16
    iget-boolean v6, v4, Li/x;->a:Z

    if-eqz v6, :cond_6

    .line 17
    iget-object v3, v9, Li/m0/d/m;->n:Li/b0;

    .line 18
    iget-object v6, v3, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_5

    .line 19
    iget-object v7, v3, Li/b0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 20
    iget-object v3, v3, Li/b0;->v:Li/h;

    move-object/from16 v20, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_3

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    .line 22
    :goto_3
    new-instance v6, Li/a;

    .line 23
    iget-object v14, v4, Li/x;->e:Ljava/lang/String;

    .line 24
    iget v15, v4, Li/x;->f:I

    .line 25
    iget-object v3, v9, Li/m0/d/m;->n:Li/b0;

    .line 26
    iget-object v4, v3, Li/b0;->l:Li/s;

    .line 27
    iget-object v7, v3, Li/b0;->p:Ljavax/net/SocketFactory;

    .line 28
    iget-object v8, v3, Li/b0;->o:Li/c;

    .line 29
    iget-object v13, v3, Li/b0;->m:Ljava/net/Proxy;

    move/from16 p1, v12

    .line 30
    iget-object v12, v3, Li/b0;->t:Ljava/util/List;

    .line 31
    iget-object v1, v3, Li/b0;->s:Ljava/util/List;

    .line 32
    iget-object v3, v3, Li/b0;->n:Ljava/net/ProxySelector;

    move-object/from16 v22, v13

    move-object v13, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v23, v12

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    .line 33
    invoke-direct/range {v13 .. v25}, Li/a;-><init>(Ljava/lang/String;ILi/s;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Li/h;Li/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 34
    iget-object v7, v9, Li/m0/d/m;->o:Li/f;

    iget-object v8, v9, Li/m0/d/m;->b:Li/t;

    move-object v3, v0

    move-object v4, v9

    .line 35
    invoke-direct/range {v3 .. v8}, Li/m0/d/d;-><init>(Li/m0/d/m;Li/m0/d/i;Li/a;Li/f;Li/t;)V

    iput-object v0, v9, Li/m0/d/m;->f:Li/m0/d/d;

    .line 36
    :goto_4
    invoke-virtual {v9}, Li/m0/d/m;->f()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v2, v10, v9, v0}, Li/m0/e/g;->e(Li/e0;Li/m0/d/m;Li/m0/d/c;)Li/h0;

    move-result-object v0
    :try_end_0
    .catch Li/m0/d/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_13

    .line 38
    iget-object v13, v0, Li/h0;->b:Li/e0;

    .line 39
    iget-object v14, v0, Li/h0;->c:Li/c0;

    .line 40
    iget v1, v0, Li/h0;->e:I

    .line 41
    iget-object v15, v0, Li/h0;->d:Ljava/lang/String;

    .line 42
    iget-object v3, v0, Li/h0;->f:Li/v;

    .line 43
    iget-object v4, v0, Li/h0;->g:Li/w;

    .line 44
    invoke-virtual {v4}, Li/w;->d()Li/w$a;

    move-result-object v4

    .line 45
    iget-object v5, v0, Li/h0;->h:Li/i0;

    .line 46
    iget-object v6, v0, Li/h0;->i:Li/h0;

    .line 47
    iget-object v7, v0, Li/h0;->j:Li/h0;

    move-object/from16 v28, v9

    .line 48
    iget-wide v8, v0, Li/h0;->l:J

    move-wide/from16 v23, v8

    .line 49
    iget-wide v8, v0, Li/h0;->m:J

    .line 50
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    .line 51
    iget-object v10, v11, Li/h0;->b:Li/e0;

    .line 52
    iget-object v12, v11, Li/h0;->c:Li/c0;

    move-object/from16 v45, v2

    .line 53
    iget v2, v11, Li/h0;->e:I

    move-object/from16 v27, v0

    .line 54
    iget-object v0, v11, Li/h0;->d:Ljava/lang/String;

    move-wide/from16 v25, v8

    .line 55
    iget-object v8, v11, Li/h0;->f:Li/v;

    .line 56
    iget-object v9, v11, Li/h0;->g:Li/w;

    .line 57
    invoke-virtual {v9}, Li/w;->d()Li/w$a;

    move-result-object v9

    move-object/from16 v21, v7

    .line 58
    iget-object v7, v11, Li/h0;->i:Li/h0;

    move-object/from16 v20, v6

    .line 59
    iget-object v6, v11, Li/h0;->j:Li/h0;

    move-object/from16 v19, v5

    .line 60
    iget-object v5, v11, Li/h0;->k:Li/h0;

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 61
    iget-wide v3, v11, Li/h0;->l:J

    move-object/from16 v18, v14

    move-object/from16 v22, v15

    .line 62
    iget-wide v14, v11, Li/h0;->m:J

    .line 63
    iget-object v11, v11, Li/h0;->n:Li/m0/d/c;

    const/16 v36, 0x0

    if-ltz v2, :cond_7

    const/16 v29, 0x1

    goto :goto_5

    :cond_7
    const/16 v29, 0x0

    :goto_5
    if-eqz v29, :cond_12

    if-eqz v10, :cond_11

    if-eqz v12, :cond_10

    if-eqz v0, :cond_f

    .line 64
    invoke-virtual {v9}, Li/w$a;->d()Li/w;

    move-result-object v35

    .line 65
    new-instance v9, Li/h0;

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v12

    move-object/from16 v32, v0

    move/from16 v33, v2

    move-object/from16 v34, v8

    move-object/from16 v37, v7

    move-object/from16 v38, v6

    move-object/from16 v39, v5

    move-wide/from16 v40, v3

    move-wide/from16 v42, v14

    move-object/from16 v44, v11

    invoke-direct/range {v29 .. v44}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    .line 66
    iget-object v0, v9, Li/h0;->h:Li/i0;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_d

    if-eqz v13, :cond_c

    if-eqz v18, :cond_b

    if-eqz v22, :cond_a

    .line 67
    invoke-virtual/range {v16 .. v16}, Li/w$a;->d()Li/w;

    move-result-object v0

    .line 68
    new-instance v2, Li/h0;

    move-object v12, v2

    move-object/from16 v14, v18

    move-object/from16 v15, v22

    move/from16 v16, v1

    move-object/from16 v18, v0

    move-object/from16 v22, v9

    invoke-direct/range {v12 .. v27}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    move-object v0, v2

    goto :goto_8

    .line 69
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v0, "code < 0: "

    .line 72
    invoke-static {v0, v1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v0, "code < 0: "

    .line 77
    invoke-static {v0, v2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move-object/from16 v45, v2

    move-object/from16 v28, v9

    .line 78
    :goto_8
    iget-object v1, v0, Li/h0;->n:Li/m0/d/c;

    if-eqz v1, :cond_14

    .line 79
    invoke-virtual {v1}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 80
    iget-object v2, v2, Li/m0/d/h;->q:Li/k0;

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    .line 81
    :goto_9
    iget v3, v0, Li/h0;->e:I

    .line 82
    iget-object v4, v0, Li/h0;->b:Li/e0;

    .line 83
    iget-object v4, v4, Li/e0;->c:Ljava/lang/String;

    const/16 v5, 0x133

    if-eq v3, v5, :cond_1f

    const/16 v5, 0x134

    if-eq v3, v5, :cond_1f

    const/16 v5, 0x191

    if-eq v3, v5, :cond_1e

    const/16 v5, 0x1f7

    if-eq v3, v5, :cond_1c

    const/16 v5, 0x197

    if-eq v3, v5, :cond_19

    const/16 v2, 0x198

    if-eq v3, v2, :cond_15

    packed-switch v3, :pswitch_data_0

    move-object/from16 v3, p0

    goto/16 :goto_a

    :pswitch_0
    move-object/from16 v3, p0

    .line 84
    invoke-virtual {v3, v0, v4}, Li/m0/e/i;->b(Li/h0;Ljava/lang/String;)Li/e0;

    move-result-object v2

    goto/16 :goto_b

    :cond_15
    move-object/from16 v3, p0

    .line 85
    iget-object v4, v3, Li/m0/e/i;->a:Li/b0;

    .line 86
    iget-boolean v4, v4, Li/b0;->f:Z

    if-nez v4, :cond_16

    goto/16 :goto_a

    .line 87
    :cond_16
    iget-object v4, v0, Li/h0;->k:Li/h0;

    if-eqz v4, :cond_17

    .line 88
    iget v4, v4, Li/h0;->e:I

    if-ne v4, v2, :cond_17

    goto/16 :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 89
    invoke-virtual {v3, v0, v2}, Li/m0/e/i;->d(Li/h0;I)I

    move-result v2

    if-lez v2, :cond_18

    goto :goto_a

    .line 90
    :cond_18
    iget-object v2, v0, Li/h0;->b:Li/e0;

    goto :goto_b

    :cond_19
    move-object/from16 v3, p0

    if-eqz v2, :cond_1b

    .line 91
    iget-object v4, v2, Li/k0;->b:Ljava/net/Proxy;

    .line 92
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_1a

    .line 93
    iget-object v4, v3, Li/m0/e/i;->a:Li/b0;

    .line 94
    iget-object v4, v4, Li/b0;->o:Li/c;

    .line 95
    invoke-interface {v4, v2, v0}, Li/c;->a(Li/k0;Li/h0;)Li/e0;

    move-result-object v2

    goto :goto_b

    .line 96
    :cond_1a
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1b
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    :cond_1c
    move-object/from16 v3, p0

    .line 98
    iget-object v2, v0, Li/h0;->k:Li/h0;

    if-eqz v2, :cond_1d

    .line 99
    iget v2, v2, Li/h0;->e:I

    if-ne v2, v5, :cond_1d

    goto :goto_a

    :cond_1d
    const v2, 0x7fffffff

    .line 100
    invoke-virtual {v3, v0, v2}, Li/m0/e/i;->d(Li/h0;I)I

    move-result v2

    if-nez v2, :cond_20

    .line 101
    iget-object v2, v0, Li/h0;->b:Li/e0;

    goto :goto_b

    :cond_1e
    move-object/from16 v3, p0

    .line 102
    iget-object v4, v3, Li/m0/e/i;->a:Li/b0;

    .line 103
    iget-object v4, v4, Li/b0;->g:Li/c;

    .line 104
    invoke-interface {v4, v2, v0}, Li/c;->a(Li/k0;Li/h0;)Li/e0;

    move-result-object v2

    goto :goto_b

    :cond_1f
    move-object/from16 v3, p0

    const-string v2, "GET"

    .line 105
    invoke-static {v4, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    const-string v2, "HEAD"

    invoke-static {v4, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    :cond_20
    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    .line 106
    :cond_21
    invoke-virtual {v3, v0, v4}, Li/m0/e/i;->b(Li/h0;Ljava/lang/String;)Li/e0;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_24

    if-eqz v1, :cond_23

    .line 107
    iget-boolean v1, v1, Li/m0/d/c;->a:Z

    if-eqz v1, :cond_23

    move-object/from16 v4, v28

    .line 108
    iget-boolean v1, v4, Li/m0/d/m;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_22

    .line 109
    iput-boolean v2, v4, Li/m0/d/m;->l:Z

    .line 110
    iget-object v1, v4, Li/m0/d/m;->c:Li/m0/d/m$b;

    invoke-virtual {v1}, Lj/c;->i()Z

    goto :goto_c

    .line 111
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_c
    return-object v0

    :cond_24
    move-object/from16 v4, v28

    .line 112
    iget-object v5, v0, Li/h0;->h:Li/i0;

    if-eqz v5, :cond_25

    .line 113
    invoke-static {v5}, Li/m0/b;->f(Ljava/io/Closeable;)V

    .line 114
    :cond_25
    iget-object v5, v4, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v5

    .line 115
    :try_start_1
    iget-object v6, v4, Li/m0/d/m;->h:Li/m0/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_26

    const/4 v6, 0x1

    goto :goto_d

    :cond_26
    const/4 v6, 0x0

    :goto_d
    monitor-exit v5

    if-eqz v6, :cond_27

    if-eqz v1, :cond_27

    .line 116
    iget-object v5, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v5}, Li/m0/e/d;->cancel()V

    .line 117
    iget-object v5, v1, Li/m0/d/c;->b:Li/m0/d/m;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7, v7, v6}, Li/m0/d/m;->e(Li/m0/d/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_27
    add-int/lit8 v12, p1, 0x1

    const/16 v1, 0x14

    if-gt v12, v1, :cond_28

    move-object v11, v0

    move-object v10, v2

    goto :goto_10

    .line 118
    :cond_28
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many follow-up requests: "

    invoke-static {v1, v12}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 119
    monitor-exit v5

    throw v1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    move-object v4, v9

    goto :goto_11

    :catch_0
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v45, v2

    move-object v4, v9

    move-object v1, v0

    .line 120
    :try_start_2
    nop

    instance-of v0, v1, Li/m0/g/a;

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_e

    :cond_29
    const/4 v0, 0x0

    .line 121
    :goto_e
    invoke-virtual {v3, v1, v4, v0, v10}, Li/m0/e/i;->c(Ljava/io/IOException;Li/m0/d/m;ZLi/e0;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_f

    :cond_2a
    throw v1

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v45, v2

    move-object v4, v9

    move-object v1, v0

    .line 122
    iget-object v0, v1, Li/m0/d/k;->a:Ljava/io/IOException;

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v3, v0, v4, v2, v10}, Li/m0/e/i;->c(Ljava/io/IOException;Li/m0/d/m;ZLi/e0;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2b

    .line 124
    :goto_f
    invoke-virtual {v4}, Li/m0/d/m;->d()V

    move/from16 v12, p1

    :goto_10
    const/4 v0, 0x0

    move-object v1, v3

    move-object v9, v4

    move-object/from16 v2, v45

    move-object v3, v0

    goto/16 :goto_0

    .line 125
    :cond_2b
    :try_start_3
    iget-object v0, v1, Li/m0/d/k;->b:Ljava/io/IOException;

    .line 126
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    .line 127
    :goto_11
    invoke-virtual {v4}, Li/m0/d/m;->d()V

    throw v0

    :cond_2c
    move-object/from16 v3, p0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-object v3, v1

    const-string v0, "request"

    .line 129
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Li/h0;Ljava/lang/String;)Li/e0;
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/e/i;->a:Li/b0;

    .line 2
    iget-boolean v0, v0, Li/b0;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "Location"

    .line 3
    invoke-static {p1, v2, v1, v0}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    iget-object v2, p1, Li/h0;->b:Li/e0;

    .line 5
    iget-object v2, v2, Li/e0;->b:Li/x;

    .line 6
    invoke-virtual {v2, v0}, Li/x;->l(Ljava/lang/String;)Li/x;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    iget-object v2, v0, Li/x;->b:Ljava/lang/String;

    .line 8
    iget-object v3, p1, Li/h0;->b:Li/e0;

    .line 9
    iget-object v3, v3, Li/e0;->b:Li/x;

    .line 10
    iget-object v3, v3, Li/x;->b:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Li/m0/e/i;->a:Li/b0;

    .line 13
    iget-boolean v2, v2, Li/b0;->i:Z

    if-nez v2, :cond_1

    return-object v1

    .line 14
    :cond_1
    iget-object v2, p1, Li/h0;->b:Li/e0;

    if-eqz v2, :cond_6

    .line 15
    new-instance v3, Li/e0$a;

    invoke-direct {v3, v2}, Li/e0$a;-><init>(Li/e0;)V

    .line 16
    invoke-static {p2}, Li/m0/e/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PROPFIND"

    .line 17
    invoke-static {p2, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 18
    invoke-static {p2, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string p2, "GET"

    .line 19
    invoke-virtual {v3, p2, v1}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 20
    iget-object v1, p1, Li/h0;->b:Li/e0;

    .line 21
    iget-object v1, v1, Li/e0;->e:Li/g0;

    .line 22
    :cond_3
    invoke-virtual {v3, p2, v1}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    :goto_0
    if-nez v4, :cond_4

    const-string p2, "Transfer-Encoding"

    .line 23
    invoke-virtual {v3, p2}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    const-string p2, "Content-Length"

    .line 24
    invoke-virtual {v3, p2}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    const-string p2, "Content-Type"

    .line 25
    invoke-virtual {v3, p2}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    .line 26
    :cond_4
    iget-object p1, p1, Li/h0;->b:Li/e0;

    .line 27
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 28
    invoke-static {p1, v0}, Li/m0/b;->c(Li/x;Li/x;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Authorization"

    .line 29
    invoke-virtual {v3, p1}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    .line 30
    :cond_5
    iput-object v0, v3, Li/e0$a;->a:Li/x;

    .line 31
    invoke-virtual {v3}, Li/e0$a;->b()Li/e0;

    move-result-object p1

    return-object p1

    .line 32
    :cond_6
    throw v1

    :cond_7
    return-object v1
.end method

.method public final c(Ljava/io/IOException;Li/m0/d/m;ZLi/e0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/m0/e/i;->a:Li/b0;

    .line 2
    iget-boolean v0, v0, Li/b0;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    iget-object p4, p4, Li/e0;->e:Li/g0;

    .line 4
    instance-of p4, p1, Ljava/io/FileNotFoundException;

    if-eqz p4, :cond_1

    return v1

    .line 5
    :cond_1
    instance-of p4, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of p4, p1, Ljava/io/InterruptedIOException;

    if-eqz p4, :cond_3

    .line 7
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    goto :goto_1

    .line 8
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_7

    return v1

    .line 11
    :cond_7
    iget-object p1, p2, Li/m0/d/m;->f:Li/m0/d/d;

    const/4 p3, 0x0

    if-eqz p1, :cond_b

    .line 12
    iget-object p4, p1, Li/m0/d/d;->g:Li/m0/d/i;

    monitor-enter p4

    .line 13
    :try_start_0
    iget-boolean p1, p1, Li/m0/d/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    if-eqz p1, :cond_9

    .line 14
    iget-object p1, p2, Li/m0/d/m;->f:Li/m0/d/d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Li/m0/d/d;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw p3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p4

    throw p1

    .line 16
    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw p3
.end method

.method public final d(Li/h0;I)I
    .locals 3

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "\\d+"

    .line 2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v0, "Pattern.compile(pattern)"

    invoke-static {p2, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(header)"

    invoke-static {p1, p2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return p2
.end method
