.class public Lf/e/a/j/e0/j/e;
.super Ljava/lang/Object;
.source "MimeiInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    .line 2
    iget-object v2, v1, Li/e0;->b:Li/x;

    .line 3
    iget-object v2, v2, Li/x;->j:Ljava/lang/String;

    const-string v3, "XxYXFBhJFhwDE1YLEQlNH1YLEg0eFFhdXQhRE1cCDBhDPRMTCl1NSwc="

    .line 4
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "message == null"

    const-string v4, "protocol == null"

    const-string v5, "request == null"

    const-string v6, "code < 0: "

    if-eqz v2, :cond_6

    .line 5
    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    .line 6
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 7
    invoke-virtual {v1}, Li/i0;->H()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lf/e/a/j/e0/j/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x40

    if-le v2, v7, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x20

    sub-int/2addr v2, v7

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_0
    iget-object v2, v0, Li/h0;->h:Li/i0;

    .line 12
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v1, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v14

    .line 13
    iget-object v8, v0, Li/h0;->b:Li/e0;

    .line 14
    iget-object v9, v0, Li/h0;->c:Li/c0;

    .line 15
    iget v11, v0, Li/h0;->e:I

    .line 16
    iget-object v10, v0, Li/h0;->d:Ljava/lang/String;

    .line 17
    iget-object v12, v0, Li/h0;->f:Li/v;

    .line 18
    iget-object v1, v0, Li/h0;->g:Li/w;

    .line 19
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    .line 20
    iget-object v15, v0, Li/h0;->i:Li/h0;

    .line 21
    iget-object v2, v0, Li/h0;->j:Li/h0;

    .line 22
    iget-object v13, v0, Li/h0;->k:Li/h0;

    move-object v7, v5

    move-object/from16 v16, v6

    .line 23
    iget-wide v5, v0, Li/h0;->l:J

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 24
    iget-wide v3, v0, Li/h0;->m:J

    .line 25
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v11, :cond_1

    const/16 v19, 0x1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    :goto_0
    if-eqz v19, :cond_5

    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    if-eqz v10, :cond_2

    .line 26
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v1

    .line 27
    new-instance v23, Li/h0;

    move-object/from16 v7, v23

    move-object/from16 v17, v13

    move-object v13, v1

    move-object/from16 v16, v2

    move-wide/from16 v18, v5

    move-wide/from16 v20, v3

    move-object/from16 v22, v0

    invoke-direct/range {v7 .. v22}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v23

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v2, v16

    .line 31
    invoke-static {v2, v11}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v7, v5

    move-object v2, v6

    .line 32
    iget-object v3, v1, Li/e0;->b:Li/x;

    .line 33
    iget-object v3, v3, Li/x;->j:Ljava/lang/String;

    .line 34
    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 35
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    iget-object v9, v1, Li/e0;->b:Li/x;

    .line 37
    iget-object v10, v1, Li/e0;->c:Ljava/lang/String;

    .line 38
    iget-object v12, v1, Li/e0;->e:Li/g0;

    .line 39
    iget-object v3, v1, Li/e0;->f:Ljava/util/Map;

    .line 40
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 41
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 42
    :cond_7
    iget-object v3, v1, Li/e0;->f:Ljava/util/Map;

    if-eqz v3, :cond_10

    .line 43
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v5

    .line 44
    :goto_1
    iget-object v1, v1, Li/e0;->d:Li/w;

    .line 45
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    .line 46
    sget-object v5, Lf/e/a/j/e0/j/d;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "VhcXDAQBUEkSEl0IFg=="

    .line 47
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lf/e/a/j/e0/j/d;->a:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 48
    invoke-virtual {v1, v5, v6}, Li/w$a;->g(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    goto :goto_2

    :cond_8
    const-string v0, "value"

    .line 49
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_2
    if-eqz v9, :cond_f

    .line 50
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v11

    .line 51
    invoke-static {v3}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 52
    new-instance v1, Li/e0;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 53
    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    .line 54
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 55
    invoke-virtual {v1}, Li/i0;->H()Ljava/lang/String;

    move-result-object v1

    const-string v3, "T08RARgDVl0AAxkLHQQEH18="

    .line 56
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lf/e/a/j/e0/j/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v3, v0, Li/h0;->h:Li/i0;

    .line 58
    invoke-virtual {v3}, Li/i0;->E()Li/z;

    move-result-object v3

    invoke-static {v1, v3}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v26

    .line 59
    iget-object v1, v0, Li/h0;->b:Li/e0;

    .line 60
    iget-object v3, v0, Li/h0;->c:Li/c0;

    .line 61
    iget v4, v0, Li/h0;->e:I

    .line 62
    iget-object v5, v0, Li/h0;->d:Ljava/lang/String;

    .line 63
    iget-object v6, v0, Li/h0;->f:Li/v;

    .line 64
    iget-object v8, v0, Li/h0;->g:Li/w;

    .line 65
    invoke-virtual {v8}, Li/w;->d()Li/w$a;

    move-result-object v8

    .line 66
    iget-object v9, v0, Li/h0;->i:Li/h0;

    .line 67
    iget-object v10, v0, Li/h0;->j:Li/h0;

    .line 68
    iget-object v11, v0, Li/h0;->k:Li/h0;

    .line 69
    iget-wide v12, v0, Li/h0;->l:J

    .line 70
    iget-wide v14, v0, Li/h0;->m:J

    .line 71
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v4, :cond_a

    const/16 v16, 0x1

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_e

    if-eqz v1, :cond_d

    if-eqz v3, :cond_c

    if-eqz v5, :cond_b

    .line 72
    invoke-virtual {v8}, Li/w$a;->d()Li/w;

    move-result-object v25

    .line 73
    new-instance v2, Li/h0;

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v34, v0

    invoke-direct/range {v19 .. v34}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v2

    .line 74
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_e
    invoke-static {v2, v4}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "$this$toMutableMap"

    .line 79
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4
.end method
