.class public final Li/m0/e/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Li/y;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li/m0/e/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Li/m0/e/g;

    .line 2
    iget-object v1, v0, Li/m0/e/g;->d:Li/m0/d/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 3
    iget-object v0, v0, Li/m0/e/g;->f:Li/e0;

    .line 4
    iget-object v3, v0, Li/e0;->e:Li/g0;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    :try_start_0
    iget-object v6, v1, Li/m0/d/c;->d:Li/t;

    iget-object v7, v1, Li/m0/d/c;->c:Li/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_2a

    const-string v6, "call"

    if-eqz v7, :cond_29

    .line 7
    :try_start_1
    iget-object v7, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v7, v0}, Li/m0/e/d;->b(Li/e0;)V

    .line 8
    iget-object v7, v1, Li/m0/d/c;->d:Li/t;

    iget-object v8, v1, Li/m0/d/c;->c:Li/f;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v7, :cond_28

    if-eqz v8, :cond_27

    .line 9
    iget-object v7, v0, Li/e0;->c:Ljava/lang/String;

    .line 10
    invoke-static {v7}, Li/m0/e/f;->a(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    const-string v7, "Expect"

    .line 11
    invoke-virtual {v0, v7}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "100-continue"

    invoke-static {v10, v7, v8}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    :try_start_2
    iget-object v7, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v7}, Li/m0/e/d;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    iget-object v7, v1, Li/m0/d/c;->d:Li/t;

    iget-object v10, v1, Li/m0/d/c;->c:Li/f;

    if-eqz v7, :cond_1

    if-eqz v10, :cond_0

    .line 14
    invoke-virtual {v1, v8}, Li/m0/d/c;->d(Z)Li/h0$a;

    move-result-object v7

    const/4 v10, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_1
    throw v2

    :catch_0
    move-exception v0

    .line 17
    iget-object v2, v1, Li/m0/d/c;->d:Li/t;

    iget-object v3, v1, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v2, v3, v0}, Li/t;->c(Li/f;Ljava/io/IOException;)V

    .line 18
    invoke-virtual {v1, v0}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    .line 19
    throw v0

    :cond_2
    const/4 v10, 0x0

    move-object v7, v2

    :goto_0
    if-nez v7, :cond_3

    .line 20
    invoke-virtual {v1, v0, v9}, Li/m0/d/c;->c(Li/e0;Z)Lj/y;

    move-result-object v8

    invoke-static {v8}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object v8

    .line 21
    invoke-virtual {v3, v8}, Li/g0;->e(Lj/i;)V

    .line 22
    check-cast v8, Lj/t;

    invoke-virtual {v8}, Lj/t;->close()V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v3, v1, Li/m0/d/c;->b:Li/m0/d/m;

    invoke-virtual {v3, v1, v8, v9, v2}, Li/m0/d/m;->e(Li/m0/d/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 24
    invoke-virtual {v1}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Li/m0/d/h;->g()Z

    move-result v3

    if-nez v3, :cond_7

    .line 25
    iget-object v3, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v3}, Li/m0/e/d;->h()Li/m0/d/h;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Li/m0/d/h;->i()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 26
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 27
    :cond_6
    iget-object v3, v1, Li/m0/d/c;->b:Li/m0/d/m;

    invoke-virtual {v3, v1, v8, v9, v2}, Li/m0/d/m;->e(Li/m0/d/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    const/4 v10, 0x0

    move-object v7, v2

    .line 28
    :cond_7
    :goto_1
    :try_start_3
    iget-object v3, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v3}, Li/m0/e/d;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v10, :cond_a

    .line 29
    iget-object v3, v1, Li/m0/d/c;->d:Li/t;

    iget-object v8, v1, Li/m0/d/c;->c:Li/f;

    if-eqz v3, :cond_9

    if-eqz v8, :cond_8

    goto :goto_2

    .line 30
    :cond_8
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_9
    throw v2

    :cond_a
    :goto_2
    if-nez v7, :cond_c

    .line 32
    invoke-virtual {v1, v9}, Li/m0/d/c;->d(Z)Li/h0$a;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 33
    :cond_c
    :goto_3
    iput-object v0, v7, Li/h0$a;->a:Li/e0;

    .line 34
    invoke-virtual {v1}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 35
    iget-object v3, v3, Li/m0/d/h;->d:Li/v;

    .line 36
    iput-object v3, v7, Li/h0$a;->e:Li/v;

    .line 37
    iput-wide v4, v7, Li/h0$a;->k:J

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 39
    iput-wide v10, v7, Li/h0$a;->l:J

    .line 40
    invoke-virtual {v7}, Li/h0$a;->b()Li/h0;

    move-result-object v3

    .line 41
    iget v7, v3, Li/h0;->e:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_f

    .line 42
    invoke-virtual {v1, v9}, Li/m0/d/c;->d(Z)Li/h0$a;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 43
    iput-object v0, v3, Li/h0$a;->a:Li/e0;

    .line 44
    invoke-virtual {v1}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 45
    iget-object v0, v0, Li/m0/d/h;->d:Li/v;

    .line 46
    iput-object v0, v3, Li/h0$a;->e:Li/v;

    .line 47
    iput-wide v4, v3, Li/h0$a;->k:J

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    iput-wide v4, v3, Li/h0$a;->l:J

    .line 50
    invoke-virtual {v3}, Li/h0$a;->b()Li/h0;

    move-result-object v3

    .line 51
    iget v7, v3, Li/h0;->e:I

    goto :goto_4

    .line 52
    :cond_d
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 53
    :cond_e
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 54
    :cond_f
    :goto_4
    iget-object v0, v1, Li/m0/d/c;->d:Li/t;

    iget-object v4, v1, Li/m0/d/c;->c:Li/f;

    if-eqz v0, :cond_25

    if-eqz v4, :cond_24

    move-object/from16 v4, p0

    .line 55
    iget-boolean v0, v4, Li/m0/e/b;->a:Z

    const-string v2, "message == null"

    const-string v5, "protocol == null"

    const-string v8, "request == null"

    const-string v9, "code < 0: "

    if-eqz v0, :cond_15

    const/16 v0, 0x65

    if-ne v7, v0, :cond_15

    .line 56
    iget-object v11, v3, Li/h0;->b:Li/e0;

    .line 57
    iget-object v12, v3, Li/h0;->c:Li/c0;

    .line 58
    iget v14, v3, Li/h0;->e:I

    .line 59
    iget-object v13, v3, Li/h0;->d:Ljava/lang/String;

    .line 60
    iget-object v15, v3, Li/h0;->f:Li/v;

    .line 61
    iget-object v0, v3, Li/h0;->g:Li/w;

    .line 62
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 63
    iget-object v6, v3, Li/h0;->i:Li/h0;

    .line 64
    iget-object v10, v3, Li/h0;->j:Li/h0;

    .line 65
    iget-object v4, v3, Li/h0;->k:Li/h0;

    move/from16 p1, v7

    move-object/from16 v16, v8

    .line 66
    iget-wide v7, v3, Li/h0;->l:J

    move-object/from16 v26, v1

    move-object/from16 v17, v2

    .line 67
    iget-wide v1, v3, Li/h0;->m:J

    .line 68
    iget-object v3, v3, Li/h0;->n:Li/m0/d/c;

    .line 69
    sget-object v18, Li/m0/b;->c:Li/i0;

    if-ltz v14, :cond_10

    const/16 v19, 0x1

    goto :goto_5

    :cond_10
    const/16 v19, 0x0

    :goto_5
    if-eqz v19, :cond_14

    if-eqz v11, :cond_13

    if-eqz v12, :cond_12

    if-eqz v13, :cond_11

    .line 70
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v16

    .line 71
    new-instance v0, Li/h0;

    move-object v5, v10

    move-object v10, v0

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-wide/from16 v21, v7

    move-wide/from16 v23, v1

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    move-object/from16 v27, v26

    goto/16 :goto_7

    .line 72
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_14
    invoke-static {v9, v14}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move-object/from16 v26, v1

    move-object/from16 v17, v2

    move/from16 p1, v7

    move-object/from16 v16, v8

    .line 76
    iget-object v0, v3, Li/h0;->b:Li/e0;

    .line 77
    iget-object v4, v3, Li/h0;->c:Li/c0;

    .line 78
    iget v1, v3, Li/h0;->e:I

    .line 79
    iget-object v7, v3, Li/h0;->d:Ljava/lang/String;

    .line 80
    iget-object v8, v3, Li/h0;->f:Li/v;

    .line 81
    iget-object v2, v3, Li/h0;->g:Li/w;

    .line 82
    invoke-virtual {v2}, Li/w;->d()Li/w$a;

    move-result-object v2

    .line 83
    iget-object v10, v3, Li/h0;->i:Li/h0;

    .line 84
    iget-object v11, v3, Li/h0;->j:Li/h0;

    .line 85
    iget-object v12, v3, Li/h0;->k:Li/h0;

    .line 86
    iget-wide v13, v3, Li/h0;->l:J

    move-wide/from16 v18, v13

    .line 87
    iget-wide v13, v3, Li/h0;->m:J

    .line 88
    iget-object v15, v3, Li/h0;->n:Li/m0/d/c;

    move-wide/from16 v21, v13

    move-object/from16 v20, v15

    move-object/from16 v15, v26

    .line 89
    :try_start_4
    iget-object v13, v15, Li/m0/d/c;->d:Li/t;

    iget-object v14, v15, Li/m0/d/c;->c:Li/f;

    if-eqz v13, :cond_23

    if-eqz v14, :cond_22

    const-string v6, "Content-Type"

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 90
    invoke-static {v3, v6, v14, v13}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 91
    iget-object v13, v15, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v13, v3}, Li/m0/e/d;->d(Li/h0;)J

    move-result-wide v13

    move-object/from16 v23, v9

    .line 92
    iget-object v9, v15, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v9, v3}, Li/m0/e/d;->e(Li/h0;)Lj/a0;

    move-result-object v3

    .line 93
    new-instance v9, Li/m0/d/c$b;

    invoke-direct {v9, v15, v3, v13, v14}, Li/m0/d/c$b;-><init>(Li/m0/d/c;Lj/a0;J)V

    .line 94
    new-instance v3, Li/m0/e/h;

    invoke-static {v9}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v9

    invoke-direct {v3, v6, v13, v14, v9}, Li/m0/e/h;-><init>(Ljava/lang/String;JLj/j;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-ltz v1, :cond_16

    const/4 v6, 0x1

    goto :goto_6

    :cond_16
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_21

    if-eqz v0, :cond_20

    if-eqz v4, :cond_1f

    if-eqz v7, :cond_1e

    .line 95
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 96
    new-instance v23, Li/h0;

    move-object/from16 v2, v23

    move-object v13, v3

    move-object v3, v0

    move-object v5, v7

    move v6, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    move-wide/from16 v0, v21

    move-wide/from16 v13, v18

    move-object/from16 v27, v15

    move-object/from16 v17, v20

    move-wide v15, v0

    invoke-direct/range {v2 .. v17}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    move-object/from16 v0, v23

    .line 97
    :goto_7
    iget-object v1, v0, Li/h0;->b:Li/e0;

    const-string v2, "Connection"

    .line 98
    invoke-virtual {v1, v2}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 99
    invoke-static {v0, v2, v5, v1}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    move-object/from16 v1, v27

    .line 100
    iget-object v1, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v1}, Li/m0/e/d;->h()Li/m0/d/h;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Li/m0/d/h;->i()V

    :cond_18
    const/16 v1, 0xcc

    move/from16 v7, p1

    if-eq v7, v1, :cond_19

    const/16 v1, 0xcd

    if-ne v7, v1, :cond_1c

    .line 101
    :cond_19
    iget-object v1, v0, Li/h0;->h:Li/i0;

    if-eqz v1, :cond_1a

    .line 102
    invoke-virtual {v1}, Li/i0;->g()J

    move-result-wide v1

    goto :goto_8

    :cond_1a
    const-wide/16 v1, -0x1

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    .line 103
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "HTTP "

    const-string v3, " had non-zero Content-Length: "

    .line 104
    invoke-static {v2, v7, v3}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    iget-object v0, v0, Li/h0;->h:Li/i0;

    if-eqz v0, :cond_1b

    .line 106
    invoke-virtual {v0}, Li/i0;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9

    :cond_1b
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    return-object v0

    .line 108
    :cond_1d
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 109
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object/from16 v0, v23

    .line 112
    invoke-static {v0, v1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    move-object v1, v15

    .line 113
    :try_start_5
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    throw v0

    :cond_23
    move-object v1, v15

    const/4 v0, 0x0

    .line 114
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v15

    .line 115
    :goto_a
    iget-object v2, v1, Li/m0/d/c;->d:Li/t;

    iget-object v3, v1, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v2, v3, v0}, Li/t;->d(Li/f;Ljava/io/IOException;)V

    .line 116
    invoke-virtual {v1, v0}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    .line 117
    throw v0

    .line 118
    :cond_24
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 119
    :cond_25
    throw v2

    .line 120
    :cond_26
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :catch_3
    move-exception v0

    .line 121
    iget-object v2, v1, Li/m0/d/c;->d:Li/t;

    iget-object v3, v1, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v2, v3, v0}, Li/t;->c(Li/f;Ljava/io/IOException;)V

    .line 122
    invoke-virtual {v1, v0}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    .line 123
    throw v0

    .line 124
    :cond_27
    :try_start_7
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v0, 0x0

    throw v0

    .line 125
    :cond_28
    :try_start_8
    throw v2

    .line 126
    :cond_29
    invoke-static {v6}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v0, 0x0

    throw v0

    .line 127
    :cond_2a
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v0

    .line 128
    iget-object v2, v1, Li/m0/d/c;->d:Li/t;

    iget-object v3, v1, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v2, v3, v0}, Li/t;->c(Li/f;Ljava/io/IOException;)V

    .line 129
    invoke-virtual {v1, v0}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    .line 130
    throw v0

    .line 131
    :cond_2b
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0
.end method
