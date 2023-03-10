.class public Lf/e/a/j/e0/d/c;
.super Ljava/lang/Object;
.source "MdInterceptor.java"

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
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 3
    iget-object v0, v0, Li/x;->j:Ljava/lang/String;

    const-string v2, "GQgQCwU="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/util/TreeMap;

    sget-object v0, Lf/e/a/j/e0/d/a;->a:Lf/e/a/j/e0/d/a;

    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, v2, Li/e0;->e:Li/g0;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 10
    instance-of v5, v0, Li/u;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Li/u;

    invoke-virtual {v5}, Li/u;->h()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 11
    invoke-virtual {v5, v7}, Li/u;->f(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-virtual {v5, v7}, Li/u;->g(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "QhYFSVM="

    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v3, v0, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    invoke-virtual {v0, v3}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 16
    invoke-static {}, Lf/e/a/k/f;->a()V

    const/4 v14, 0x0

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/b/g/h;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Rw0QEEYXWEcS"

    .line 20
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf/e/a/j/e0/d/d;->b:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v6, Lf/e/a/j/e0/d/d;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-object v7, Lf/e/a/j/e0/d/d;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v6, v7, v5}, Lf/e/a/k/c;->c([B[BLjava/lang/String;[B)[B

    move-result-object v0

    .line 23
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 24
    sget-object v16, Li/x;->l:Li/x$b;

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v26, 0x5b

    const-string v20, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v26}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v5, Li/x;->l:Li/x$b;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v0, 0x5b

    const-string v9, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v15

    move v15, v0

    invoke-static/range {v5 .. v15}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Li/e0$a;

    invoke-direct {v0, v2}, Li/e0$a;-><init>(Li/e0;)V

    const-string v2, "RBcFAgIL"

    .line 27
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, v4}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 29
    new-instance v2, Li/u;

    invoke-direct {v2, v3, v1}, Li/u;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 30
    invoke-virtual {v0, v2}, Li/e0$a;->f(Li/g0;)Li/e0$a;

    invoke-virtual {v0}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    move-object/from16 v1, p1

    .line 31
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    .line 32
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 33
    invoke-virtual {v1}, Li/i0;->H()Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    const-class v3, Lcom/comeback/data/ui/md/bean/MdBean;

    invoke-virtual {v2, v1, v3}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/md/bean/MdBean;

    .line 35
    invoke-virtual {v1}, Lcom/comeback/data/ui/md/bean/MdBean;->getDecryptData()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, v0, Li/h0;->h:Li/i0;

    .line 37
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v1, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 38
    iget-object v4, v0, Li/h0;->b:Li/e0;

    .line 39
    iget-object v5, v0, Li/h0;->c:Li/c0;

    .line 40
    iget v7, v0, Li/h0;->e:I

    .line 41
    iget-object v6, v0, Li/h0;->d:Ljava/lang/String;

    .line 42
    iget-object v8, v0, Li/h0;->f:Li/v;

    .line 43
    iget-object v1, v0, Li/h0;->g:Li/w;

    .line 44
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    .line 45
    iget-object v11, v0, Li/h0;->i:Li/h0;

    .line 46
    iget-object v12, v0, Li/h0;->j:Li/h0;

    .line 47
    iget-object v13, v0, Li/h0;->k:Li/h0;

    .line 48
    iget-wide v14, v0, Li/h0;->l:J

    .line 49
    iget-wide v2, v0, Li/h0;->m:J

    .line 50
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v7, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_6

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    if-eqz v6, :cond_3

    .line 51
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 52
    new-instance v1, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "code < 0: "

    .line 56
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method
