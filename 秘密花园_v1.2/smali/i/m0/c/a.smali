.class public final Li/m0/c/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Li/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/c/a$a;
    }
.end annotation


# static fields
.field public static final b:Li/m0/c/a$a;


# instance fields
.field public final a:Li/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/m0/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/m0/c/a$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/m0/c/a;->b:Li/m0/c/a$a;

    return-void
.end method

.method public constructor <init>(Li/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/c/a;->a:Li/d;

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Li/m0/c/a;->a:Li/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2
    iget-object v5, v4, Li/e0;->b:Li/x;

    if-eqz v5, :cond_6

    .line 3
    sget-object v6, Lj/k;->e:Lj/k$a;

    .line 4
    iget-object v5, v5, Li/x;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v5}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    move-result-object v5

    const-string v6, "MD5"

    .line 6
    invoke-virtual {v5, v6}, Lj/k;->a(Ljava/lang/String;)Lj/k;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object v5

    .line 8
    :try_start_0
    iget-object v0, v0, Li/d;->a:Li/m0/c/e;

    invoke-virtual {v0, v5}, Li/m0/c/e;->E(Ljava/lang/String;)Li/m0/c/e$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_8

    .line 9
    :try_start_1
    new-instance v5, Li/d$b;

    .line 10
    iget-object v6, v0, Li/m0/c/e$c;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/a0;

    .line 11
    invoke-direct {v5, v2}, Li/d$b;-><init>(Lj/a0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    iget-object v2, v5, Li/d$b;->g:Li/w;

    const-string v6, "Content-Type"

    invoke-virtual {v2, v6}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v6, v5, Li/d$b;->g:Li/w;

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    new-instance v7, Li/e0$a;

    invoke-direct {v7}, Li/e0$a;-><init>()V

    .line 15
    iget-object v8, v5, Li/d$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 16
    iget-object v8, v5, Li/d$b;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    .line 17
    iget-object v8, v5, Li/d$b;->b:Li/w;

    invoke-virtual {v7, v8}, Li/e0$a;->d(Li/w;)Li/e0$a;

    .line 18
    invoke-virtual {v7}, Li/e0$a;->b()Li/e0;

    move-result-object v7

    .line 19
    new-instance v8, Li/h0$a;

    invoke-direct {v8}, Li/h0$a;-><init>()V

    .line 20
    iput-object v7, v8, Li/h0$a;->a:Li/e0;

    .line 21
    iget-object v7, v5, Li/d$b;->d:Li/c0;

    invoke-virtual {v8, v7}, Li/h0$a;->h(Li/c0;)Li/h0$a;

    .line 22
    iget v7, v5, Li/d$b;->e:I

    .line 23
    iput v7, v8, Li/h0$a;->c:I

    .line 24
    iget-object v7, v5, Li/d$b;->f:Ljava/lang/String;

    invoke-virtual {v8, v7}, Li/h0$a;->g(Ljava/lang/String;)Li/h0$a;

    .line 25
    iget-object v7, v5, Li/d$b;->g:Li/w;

    invoke-virtual {v8, v7}, Li/h0$a;->f(Li/w;)Li/h0$a;

    .line 26
    new-instance v7, Li/d$a;

    invoke-direct {v7, v0, v2, v6}, Li/d$a;-><init>(Li/m0/c/e$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object v7, v8, Li/h0$a;->g:Li/i0;

    .line 28
    iget-object v0, v5, Li/d$b;->h:Li/v;

    .line 29
    iput-object v0, v8, Li/h0$a;->e:Li/v;

    .line 30
    iget-wide v6, v5, Li/d$b;->i:J

    .line 31
    iput-wide v6, v8, Li/h0$a;->k:J

    .line 32
    iget-wide v6, v5, Li/d$b;->j:J

    .line 33
    iput-wide v6, v8, Li/h0$a;->l:J

    .line 34
    invoke-virtual {v8}, Li/h0$a;->b()Li/h0;

    move-result-object v0

    .line 35
    iget-object v2, v5, Li/d$b;->a:Ljava/lang/String;

    .line 36
    iget-object v6, v4, Li/e0;->b:Li/x;

    .line 37
    iget-object v6, v6, Li/x;->j:Ljava/lang/String;

    .line 38
    invoke-static {v2, v6}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v5, Li/d$b;->c:Ljava/lang/String;

    .line 39
    iget-object v6, v4, Li/e0;->c:Ljava/lang/String;

    .line 40
    invoke-static {v2, v6}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    iget-object v2, v5, Li/d$b;->b:Li/w;

    if-eqz v2, :cond_3

    .line 42
    iget-object v5, v0, Li/h0;->g:Li/w;

    .line 43
    invoke-static {v5}, Li/d;->e(Li/w;)Ljava/util/Set;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v6}, Li/w;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 47
    iget-object v8, v4, Li/e0;->d:Li/w;

    invoke-virtual {v8, v6}, Li/w;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 48
    invoke-static {v7, v6}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "cachedRequest"

    .line 49
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    .line 50
    iget-object v0, v0, Li/h0;->h:Li/i0;

    if-eqz v0, :cond_8

    .line 51
    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_5
    move-object v2, v0

    goto :goto_4

    .line 52
    :catch_0
    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_6
    const-string v0, "url"

    .line 53
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string v0, "request"

    .line 54
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    :catch_1
    :cond_8
    :goto_3
    move-object v2, v3

    .line 55
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 56
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    if-eqz v0, :cond_66

    if-eqz v2, :cond_f

    .line 57
    iget-wide v6, v2, Li/h0;->l:J

    .line 58
    iget-wide v8, v2, Li/h0;->m:J

    .line 59
    iget-object v10, v2, Li/h0;->g:Li/w;

    .line 60
    invoke-virtual {v10}, Li/w;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object v12, v3

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    const/16 v18, -0x1

    :goto_5
    if-ge v3, v11, :cond_e

    move-wide/from16 v19, v6

    .line 61
    invoke-virtual {v10, v3}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v10, v3}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v21, v8

    const-string v8, "Date"

    const/4 v9, 0x1

    .line 63
    invoke-static {v6, v8, v9}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 64
    invoke-static {v7}, Li/m0/e/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_6

    :cond_9
    const-string v8, "Expires"

    .line 65
    invoke-static {v6, v8, v9}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 66
    invoke-static {v7}, Li/m0/e/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    goto :goto_6

    :cond_a
    const-string v8, "Last-Modified"

    .line 67
    invoke-static {v6, v8, v9}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 68
    invoke-static {v7}, Li/m0/e/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    move-object v15, v7

    goto :goto_6

    :cond_b
    const-string v8, "ETag"

    .line 69
    invoke-static {v6, v8, v9}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v13, v7

    goto :goto_6

    :cond_c
    const-string v8, "Age"

    .line 70
    invoke-static {v6, v8, v9}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, -0x1

    .line 71
    invoke-static {v7, v6}, Li/m0/b;->G(Ljava/lang/String;I)I

    move-result v18

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    goto :goto_5

    :cond_e
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-object/from16 v3, v17

    move/from16 v10, v18

    goto :goto_7

    :cond_f
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, -0x1

    const/4 v10, -0x1

    :goto_7
    if-nez v2, :cond_10

    .line 72
    new-instance v3, Li/m0/c/d;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    goto/16 :goto_15

    .line 73
    :cond_10
    iget-object v11, v0, Li/e0;->b:Li/x;

    .line 74
    iget-boolean v11, v11, Li/x;->a:Z

    if-eqz v11, :cond_11

    .line 75
    iget-object v11, v2, Li/h0;->f:Li/v;

    if-nez v11, :cond_11

    .line 76
    new-instance v3, Li/m0/c/d;

    const/4 v11, 0x0

    invoke-direct {v3, v0, v11}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    goto/16 :goto_15

    :cond_11
    const/4 v11, 0x0

    .line 77
    invoke-static {v2, v0}, Li/m0/c/d;->a(Li/h0;Li/e0;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 78
    new-instance v3, Li/m0/c/d;

    invoke-direct {v3, v0, v11}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    goto/16 :goto_15

    .line 79
    :cond_12
    invoke-virtual {v0}, Li/e0;->a()Li/e;

    move-result-object v11

    move-object/from16 v17, v15

    .line 80
    iget-boolean v15, v11, Li/e;->a:Z

    if-nez v15, :cond_31

    const-string v15, "If-Modified-Since"

    .line 81
    invoke-virtual {v0, v15}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v15

    const-string v15, "If-None-Match"

    if-nez v18, :cond_14

    invoke-virtual {v0, v15}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_13

    goto :goto_8

    :cond_13
    const/16 v18, 0x0

    goto :goto_9

    :cond_14
    :goto_8
    const/16 v18, 0x1

    :goto_9
    if-eqz v18, :cond_15

    goto/16 :goto_16

    :cond_15
    move-object/from16 v18, v15

    .line 82
    invoke-virtual {v2}, Li/h0;->d()Li/e;

    move-result-object v15

    if-eqz v3, :cond_16

    .line 83
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-object/from16 v22, v0

    sub-long v0, v8, v20

    move-object/from16 v21, v11

    move-object/from16 v20, v12

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v11, -0x1

    goto :goto_a

    :cond_16
    move-object/from16 v22, v0

    move-object/from16 v21, v11

    move-object/from16 v20, v12

    const/4 v11, -0x1

    const-wide/16 v0, 0x0

    :goto_a
    if-eq v10, v11, :cond_17

    .line 84
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v23, v13

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_b

    :cond_17
    move-object/from16 v23, v13

    :goto_b
    sub-long v10, v8, v6

    sub-long/2addr v4, v8

    add-long/2addr v0, v10

    add-long/2addr v0, v4

    .line 85
    invoke-virtual {v2}, Li/h0;->d()Li/e;

    move-result-object v4

    .line 86
    iget v4, v4, Li/e;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    .line 87
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto/16 :goto_e

    :cond_18
    if-eqz v14, :cond_1a

    if-eqz v3, :cond_19

    .line 88
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 89
    :cond_19
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_22

    goto/16 :goto_e

    :cond_1a
    if-eqz v20, :cond_22

    .line 90
    iget-object v4, v2, Li/h0;->b:Li/e0;

    .line 91
    iget-object v4, v4, Li/e0;->b:Li/x;

    .line 92
    iget-object v5, v4, Li/x;->h:Ljava/util/List;

    if-nez v5, :cond_1b

    const/4 v4, 0x0

    goto :goto_d

    .line 93
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v4, v4, Li/x;->h:Ljava/util/List;

    if-eqz v4, :cond_21

    .line 95
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Lh/p/d;->c(II)Lh/p/c;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lh/p/d;->b(Lh/p/a;I)Lh/p/a;

    move-result-object v8

    .line 96
    iget v9, v8, Lh/p/a;->a:I

    .line 97
    iget v10, v8, Lh/p/a;->b:I

    .line 98
    iget v8, v8, Lh/p/a;->c:I

    if-ltz v8, :cond_1c

    if-gt v9, v10, :cond_1f

    goto :goto_c

    :cond_1c
    if-lt v9, v10, :cond_1f

    .line 99
    :goto_c
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    add-int/lit8 v12, v9, 0x1

    .line 100
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-lez v9, :cond_1d

    const/16 v13, 0x26

    .line 101
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_1d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1e

    const/16 v11, 0x3d

    .line 103
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    if-eq v9, v10, :cond_1f

    add-int/2addr v9, v8

    goto :goto_c

    .line 105
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_d
    if-nez v4, :cond_22

    if-eqz v3, :cond_20

    .line 106
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 107
    :cond_20
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v6, v4

    if-lez v8, :cond_22

    const/16 v4, 0xa

    int-to-long v4, v4

    .line 108
    div-long v4, v6, v4

    goto :goto_e

    :cond_21
    const-string v0, "$this$toQueryString"

    .line 109
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_22
    const-wide/16 v4, 0x0

    :goto_e
    move-object/from16 v6, v21

    .line 110
    iget v7, v6, Li/e;->c:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_23

    .line 111
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 112
    :cond_23
    iget v7, v6, Li/e;->i:I

    if-eq v7, v8, :cond_24

    .line 113
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_f

    :cond_24
    const-wide/16 v9, 0x0

    .line 114
    :goto_f
    iget-boolean v7, v15, Li/e;->g:Z

    if-nez v7, :cond_25

    .line 115
    iget v6, v6, Li/e;->h:I

    if-eq v6, v8, :cond_25

    .line 116
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v6

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    goto :goto_10

    :cond_25
    const-wide/16 v6, 0x0

    .line 117
    :goto_10
    iget-boolean v8, v15, Li/e;->a:Z

    if-nez v8, :cond_29

    add-long/2addr v9, v0

    add-long/2addr v6, v4

    cmp-long v8, v9, v6

    if-gez v8, :cond_29

    .line 118
    new-instance v3, Li/h0$a;

    invoke-direct {v3, v2}, Li/h0$a;-><init>(Li/h0;)V

    const-string v6, "Warning"

    cmp-long v7, v9, v4

    if-ltz v7, :cond_26

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    .line 119
    invoke-virtual {v3, v6, v4}, Li/h0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;

    :cond_26
    const-wide/32 v4, 0x5265c00

    cmp-long v7, v0, v4

    if-lez v7, :cond_28

    .line 120
    invoke-virtual {v2}, Li/h0;->d()Li/e;

    move-result-object v0

    .line 121
    iget v0, v0, Li/e;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    if-nez v14, :cond_27

    const/4 v0, 0x1

    goto :goto_11

    :cond_27
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_28

    const-string v0, "113 HttpURLConnection \"Heuristic expiration\""

    .line 122
    invoke-virtual {v3, v6, v0}, Li/h0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;

    .line 123
    :cond_28
    new-instance v0, Li/m0/c/d;

    invoke-virtual {v3}, Li/h0$a;->b()Li/h0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    move-object v1, v0

    move-object/from16 v0, v22

    goto/16 :goto_17

    :cond_29
    if-eqz v23, :cond_2a

    move-object/from16 v15, v18

    move-object/from16 v0, v22

    move-object/from16 v13, v23

    goto :goto_13

    :cond_2a
    if-eqz v20, :cond_2b

    move-object/from16 v13, v17

    goto :goto_12

    :cond_2b
    if-eqz v3, :cond_30

    move-object/from16 v13, v16

    :goto_12
    move-object/from16 v15, v19

    move-object/from16 v0, v22

    .line 124
    :goto_13
    iget-object v1, v0, Li/e0;->d:Li/w;

    .line 125
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    if-eqz v13, :cond_2f

    .line 126
    invoke-virtual {v1, v15, v13}, Li/w$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    .line 127
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    iget-object v5, v0, Li/e0;->b:Li/x;

    .line 129
    iget-object v6, v0, Li/e0;->c:Ljava/lang/String;

    .line 130
    iget-object v8, v0, Li/e0;->e:Li/g0;

    .line 131
    iget-object v3, v0, Li/e0;->f:Ljava/util/Map;

    .line 132
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 133
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_14

    .line 134
    :cond_2c
    iget-object v3, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v3, :cond_2e

    .line 135
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v4

    .line 136
    :goto_14
    iget-object v4, v0, Li/e0;->d:Li/w;

    .line 137
    invoke-virtual {v4}, Li/w;->d()Li/w$a;

    .line 138
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    if-eqz v5, :cond_2d

    .line 140
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v7

    .line 141
    invoke-static {v3}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 142
    new-instance v1, Li/e0;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 143
    new-instance v3, Li/m0/c/d;

    invoke-direct {v3, v1, v2}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    :goto_15
    const/4 v1, 0x0

    move-object/from16 v24, v3

    move-object v3, v1

    move-object/from16 v1, v24

    goto :goto_17

    .line 144
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const-string v0, "$this$toMutableMap"

    .line 145
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2f
    const/4 v0, 0x0

    .line 146
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_30
    move-object/from16 v0, v22

    const/4 v3, 0x0

    .line 147
    new-instance v1, Li/m0/c/d;

    invoke-direct {v1, v0, v3}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    goto :goto_17

    :cond_31
    :goto_16
    const/4 v3, 0x0

    .line 148
    new-instance v1, Li/m0/c/d;

    invoke-direct {v1, v0, v3}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    .line 149
    :goto_17
    iget-object v4, v1, Li/m0/c/d;->a:Li/e0;

    if-eqz v4, :cond_32

    .line 150
    invoke-virtual {v0}, Li/e0;->a()Li/e;

    move-result-object v0

    .line 151
    iget-boolean v0, v0, Li/e;->j:Z

    if-eqz v0, :cond_32

    .line 152
    new-instance v1, Li/m0/c/d;

    invoke-direct {v1, v3, v3}, Li/m0/c/d;-><init>(Li/e0;Li/h0;)V

    .line 153
    :cond_32
    iget-object v0, v1, Li/m0/c/d;->a:Li/e0;

    .line 154
    iget-object v3, v1, Li/m0/c/d;->b:Li/h0;

    move-object/from16 v4, p0

    .line 155
    iget-object v5, v4, Li/m0/c/a;->a:Li/d;

    if-eqz v5, :cond_35

    .line 156
    monitor-enter v5

    .line 157
    :try_start_2
    iget v6, v5, Li/d;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Li/d;->f:I

    .line 158
    iget-object v6, v1, Li/m0/c/d;->a:Li/e0;

    if-eqz v6, :cond_33

    .line 159
    iget v1, v5, Li/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Li/d;->d:I

    goto :goto_18

    .line 160
    :cond_33
    iget-object v1, v1, Li/m0/c/d;->b:Li/h0;

    if-eqz v1, :cond_34

    .line 161
    iget v1, v5, Li/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Li/d;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :cond_34
    :goto_18
    monitor-exit v5

    goto :goto_19

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit v5

    throw v0

    :cond_35
    :goto_19
    if-eqz v2, :cond_36

    if-nez v3, :cond_36

    .line 164
    iget-object v1, v2, Li/h0;->h:Li/i0;

    if-eqz v1, :cond_36

    .line 165
    invoke-static {v1}, Li/m0/b;->f(Ljava/io/Closeable;)V

    :cond_36
    if-nez v0, :cond_37

    if-nez v3, :cond_37

    .line 166
    new-instance v0, Li/h0$a;

    invoke-direct {v0}, Li/h0$a;-><init>()V

    .line 167
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/h0$a;->j(Li/e0;)Li/h0$a;

    .line 168
    sget-object v1, Li/c0;->c:Li/c0;

    .line 169
    iput-object v1, v0, Li/h0$a;->b:Li/c0;

    const/16 v1, 0x1f8

    .line 170
    iput v1, v0, Li/h0$a;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 171
    iput-object v1, v0, Li/h0$a;->d:Ljava/lang/String;

    .line 172
    sget-object v1, Li/m0/b;->c:Li/i0;

    .line 173
    iput-object v1, v0, Li/h0$a;->g:Li/i0;

    const-wide/16 v1, -0x1

    .line 174
    iput-wide v1, v0, Li/h0$a;->k:J

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 176
    iput-wide v1, v0, Li/h0$a;->l:J

    .line 177
    invoke-virtual {v0}, Li/h0$a;->b()Li/h0;

    move-result-object v0

    return-object v0

    :cond_37
    if-nez v0, :cond_39

    if-eqz v3, :cond_38

    .line 178
    new-instance v0, Li/h0$a;

    invoke-direct {v0, v3}, Li/h0$a;-><init>(Li/h0;)V

    .line 179
    sget-object v1, Li/m0/c/a;->b:Li/m0/c/a$a;

    invoke-static {v1, v3}, Li/m0/c/a$a;->a(Li/m0/c/a$a;Li/h0;)Li/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/h0$a;->c(Li/h0;)Li/h0$a;

    .line 180
    invoke-virtual {v0}, Li/h0$a;->b()Li/h0;

    move-result-object v0

    return-object v0

    .line 181
    :cond_38
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    :cond_39
    move-object/from16 v1, p1

    .line 182
    :try_start_3
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_3a

    if-eqz v2, :cond_3a

    .line 183
    iget-object v2, v2, Li/h0;->h:Li/i0;

    if-eqz v2, :cond_3a

    .line 184
    invoke-static {v2}, Li/m0/b;->f(Ljava/io/Closeable;)V

    :cond_3a
    if-eqz v3, :cond_4e

    if-eqz v1, :cond_4d

    .line 185
    iget v2, v1, Li/h0;->e:I

    const/16 v5, 0x130

    if-ne v2, v5, :cond_4d

    .line 186
    new-instance v0, Li/h0$a;

    invoke-direct {v0, v3}, Li/h0$a;-><init>(Li/h0;)V

    .line 187
    sget-object v2, Li/m0/c/a;->b:Li/m0/c/a$a;

    .line 188
    iget-object v5, v3, Li/h0;->g:Li/w;

    iget-object v6, v1, Li/h0;->g:Li/w;

    .line 189
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    invoke-virtual {v5}, Li/w;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1a
    const-string v10, "value"

    const-string v11, "name"

    if-ge v9, v8, :cond_41

    .line 191
    invoke-virtual {v5, v9}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v12

    .line 192
    invoke-virtual {v5, v9}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Warning"

    const/4 v15, 0x1

    .line 193
    invoke-static {v14, v12, v15}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_3b

    const-string v14, "1"

    const/4 v15, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x2

    invoke-static {v13, v14, v15, v5}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_1b

    :cond_3b
    move-object/from16 v16, v5

    .line 194
    :cond_3c
    invoke-virtual {v2, v12}, Li/m0/c/a$a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 195
    invoke-virtual {v2, v12}, Li/m0/c/a$a;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 196
    invoke-virtual {v6, v12}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    :cond_3d
    if-eqz v12, :cond_40

    if-eqz v13, :cond_3f

    .line 197
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {v13}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_1b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    goto :goto_1a

    .line 199
    :cond_3f
    invoke-static {v10}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_40
    const/4 v0, 0x0

    invoke-static {v11}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_41
    invoke-virtual {v6}, Li/w;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v5, :cond_45

    .line 201
    invoke-virtual {v6, v8}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-virtual {v2, v9}, Li/m0/c/a$a;->b(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_44

    invoke-virtual {v2, v9}, Li/m0/c/a$a;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 203
    invoke-virtual {v6, v8}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_43

    if-eqz v12, :cond_42

    .line 204
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v12}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 206
    :cond_42
    invoke-static {v10}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_43
    const/4 v0, 0x0

    invoke-static {v11}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_45
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 207
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4c

    check-cast v2, [Ljava/lang/String;

    .line 208
    new-instance v5, Li/w$a;

    invoke-direct {v5}, Li/w$a;-><init>()V

    .line 209
    iget-object v6, v5, Li/w$a;->a:Ljava/util/List;

    if-eqz v6, :cond_4b

    .line 210
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v7, "ArraysUtilJVM.asList(this)"

    .line 211
    invoke-static {v2, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-interface {v6, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 213
    iput-object v5, v0, Li/h0$a;->f:Li/w$a;

    .line 214
    iget-wide v5, v1, Li/h0;->l:J

    .line 215
    iput-wide v5, v0, Li/h0$a;->k:J

    .line 216
    iget-wide v5, v1, Li/h0;->m:J

    .line 217
    iput-wide v5, v0, Li/h0$a;->l:J

    .line 218
    sget-object v2, Li/m0/c/a;->b:Li/m0/c/a$a;

    invoke-static {v2, v3}, Li/m0/c/a$a;->a(Li/m0/c/a$a;Li/h0;)Li/h0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/h0$a;->c(Li/h0;)Li/h0$a;

    .line 219
    sget-object v2, Li/m0/c/a;->b:Li/m0/c/a$a;

    invoke-static {v2, v1}, Li/m0/c/a$a;->a(Li/m0/c/a$a;Li/h0;)Li/h0;

    move-result-object v2

    const-string v5, "networkResponse"

    .line 220
    invoke-virtual {v0, v5, v2}, Li/h0$a;->d(Ljava/lang/String;Li/h0;)V

    .line 221
    iput-object v2, v0, Li/h0$a;->h:Li/h0;

    .line 222
    invoke-virtual {v0}, Li/h0$a;->b()Li/h0;

    move-result-object v0

    .line 223
    iget-object v1, v1, Li/h0;->h:Li/i0;

    if-eqz v1, :cond_4a

    .line 224
    invoke-virtual {v1}, Li/i0;->close()V

    .line 225
    iget-object v1, v4, Li/m0/c/a;->a:Li/d;

    if-eqz v1, :cond_49

    .line 226
    monitor-enter v1

    .line 227
    :try_start_4
    iget v2, v1, Li/d;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Li/d;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 228
    monitor-exit v1

    .line 229
    iget-object v1, v4, Li/m0/c/a;->a:Li/d;

    if-eqz v1, :cond_48

    .line 230
    new-instance v1, Li/d$b;

    invoke-direct {v1, v0}, Li/d$b;-><init>(Li/h0;)V

    .line 231
    iget-object v2, v3, Li/h0;->h:Li/i0;

    if-eqz v2, :cond_47

    .line 232
    check-cast v2, Li/d$a;

    .line 233
    iget-object v2, v2, Li/d$a;->d:Li/m0/c/e$c;

    .line 234
    :try_start_5
    iget-object v3, v2, Li/m0/c/e$c;->d:Li/m0/c/e;

    iget-object v5, v2, Li/m0/c/e$c;->a:Ljava/lang/String;

    iget-wide v6, v2, Li/m0/c/e$c;->b:J

    invoke-virtual {v3, v5, v6, v7}, Li/m0/c/e;->f(Ljava/lang/String;J)Li/m0/c/e$a;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v2, :cond_46

    .line 235
    :try_start_6
    invoke-virtual {v1, v2}, Li/d$b;->c(Li/m0/c/e$a;)V

    .line 236
    invoke-virtual {v2}, Li/m0/c/e$a;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1f

    :catch_2
    nop

    goto :goto_1e

    :catch_3
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_46

    .line 237
    :try_start_7
    invoke-virtual {v2}, Li/m0/c/e$a;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_46
    :goto_1f
    return-object v0

    .line 238
    :cond_47
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    const/4 v0, 0x0

    .line 239
    throw v0

    :catchall_1
    move-exception v0

    .line 240
    monitor-exit v1

    throw v0

    :cond_49
    const/4 v0, 0x0

    .line 241
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4a
    const/4 v0, 0x0

    .line 242
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4b
    const/4 v0, 0x0

    const-string v1, "$this$addAll"

    .line 243
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4c
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_4d
    iget-object v2, v3, Li/h0;->h:Li/i0;

    if-eqz v2, :cond_4e

    .line 246
    invoke-static {v2}, Li/m0/b;->f(Ljava/io/Closeable;)V

    :cond_4e
    if-eqz v1, :cond_64

    .line 247
    new-instance v2, Li/h0$a;

    invoke-direct {v2, v1}, Li/h0$a;-><init>(Li/h0;)V

    .line 248
    sget-object v5, Li/m0/c/a;->b:Li/m0/c/a$a;

    invoke-static {v5, v3}, Li/m0/c/a$a;->a(Li/m0/c/a$a;Li/h0;)Li/h0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/h0$a;->c(Li/h0;)Li/h0$a;

    .line 249
    sget-object v3, Li/m0/c/a;->b:Li/m0/c/a$a;

    invoke-static {v3, v1}, Li/m0/c/a$a;->a(Li/m0/c/a$a;Li/h0;)Li/h0;

    move-result-object v1

    const-string v3, "networkResponse"

    .line 250
    invoke-virtual {v2, v3, v1}, Li/h0$a;->d(Ljava/lang/String;Li/h0;)V

    .line 251
    iput-object v1, v2, Li/h0$a;->h:Li/h0;

    .line 252
    invoke-virtual {v2}, Li/h0$a;->b()Li/h0;

    move-result-object v1

    .line 253
    iget-object v2, v4, Li/m0/c/a;->a:Li/d;

    if-eqz v2, :cond_63

    .line 254
    invoke-static {v1}, Li/m0/e/e;->a(Li/h0;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {v1, v0}, Li/m0/c/d;->a(Li/h0;Li/e0;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 255
    iget-object v0, v4, Li/m0/c/a;->a:Li/d;

    if-eqz v0, :cond_5e

    .line 256
    iget-object v2, v1, Li/h0;->b:Li/e0;

    .line 257
    iget-object v2, v2, Li/e0;->c:Ljava/lang/String;

    if-eqz v2, :cond_5d

    const-string v3, "POST"

    .line 258
    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "PATCH"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "PUT"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "DELETE"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "MOVE"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_20

    :cond_4f
    const/4 v3, 0x0

    goto :goto_21

    :cond_50
    :goto_20
    const/4 v3, 0x1

    :goto_21
    if-eqz v3, :cond_51

    .line 259
    :try_start_8
    iget-object v2, v1, Li/h0;->b:Li/e0;

    .line 260
    invoke-virtual {v0, v2}, Li/d;->d(Li/e0;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_23

    :cond_51
    const-string v3, "GET"

    .line 261
    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_52

    goto :goto_23

    .line 262
    :cond_52
    iget-object v2, v1, Li/h0;->g:Li/w;

    .line 263
    invoke-static {v2}, Li/d;->e(Li/w;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_23

    .line 264
    :cond_53
    new-instance v2, Li/d$b;

    invoke-direct {v2, v1}, Li/d$b;-><init>(Li/h0;)V

    .line 265
    :try_start_9
    iget-object v3, v0, Li/d;->a:Li/m0/c/e;

    .line 266
    iget-object v5, v1, Li/h0;->b:Li/e0;

    .line 267
    iget-object v5, v5, Li/e0;->b:Li/x;

    if-eqz v5, :cond_54

    .line 268
    sget-object v6, Lj/k;->e:Lj/k$a;

    .line 269
    iget-object v5, v5, Li/x;->j:Ljava/lang/String;

    .line 270
    invoke-virtual {v6, v5}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    move-result-object v5

    const-string v6, "MD5"

    .line 271
    invoke-virtual {v5, v6}, Lj/k;->a(Ljava/lang/String;)Lj/k;

    move-result-object v5

    .line 272
    invoke-static {v5}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    .line 273
    invoke-static {v3, v5, v7, v8, v6}, Li/m0/c/e;->g(Li/m0/c/e;Ljava/lang/String;JI)Li/m0/c/e$a;

    move-result-object v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v3, :cond_55

    .line 274
    :try_start_a
    invoke-virtual {v2, v3}, Li/d$b;->c(Li/m0/c/e$a;)V

    .line 275
    new-instance v2, Li/d$c;

    invoke-direct {v2, v0, v3}, Li/d$c;-><init>(Li/d;Li/m0/c/e$a;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_24

    :catch_5
    nop

    goto :goto_22

    :cond_54
    :try_start_b
    const-string v0, "url"

    .line 276
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    const/4 v0, 0x0

    throw v0

    :catch_6
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_55

    .line 277
    :try_start_c
    invoke-virtual {v3}, Li/m0/c/e$a;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    :cond_55
    :goto_23
    const/4 v2, 0x0

    :goto_24
    if-nez v2, :cond_56

    goto/16 :goto_26

    .line 278
    :cond_56
    invoke-interface {v2}, Li/m0/c/c;->a()Lj/y;

    move-result-object v0

    .line 279
    iget-object v3, v1, Li/h0;->h:Li/i0;

    if-eqz v3, :cond_5c

    .line 280
    invoke-virtual {v3}, Li/i0;->G()Lj/j;

    move-result-object v3

    .line 281
    invoke-static {v0}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object v0

    .line 282
    new-instance v5, Li/m0/c/b;

    invoke-direct {v5, v3, v2, v0}, Li/m0/c/b;-><init>(Lj/j;Li/m0/c/c;Lj/i;)V

    const-string v0, "Content-Type"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 283
    invoke-static {v1, v0, v3, v2}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 285
    invoke-virtual {v2}, Li/i0;->g()J

    move-result-wide v2

    .line 286
    iget-object v7, v1, Li/h0;->b:Li/e0;

    .line 287
    iget-object v8, v1, Li/h0;->c:Li/c0;

    .line 288
    iget v10, v1, Li/h0;->e:I

    .line 289
    iget-object v9, v1, Li/h0;->d:Ljava/lang/String;

    .line 290
    iget-object v11, v1, Li/h0;->f:Li/v;

    .line 291
    iget-object v6, v1, Li/h0;->g:Li/w;

    .line 292
    invoke-virtual {v6}, Li/w;->d()Li/w$a;

    move-result-object v6

    .line 293
    iget-object v14, v1, Li/h0;->i:Li/h0;

    .line 294
    iget-object v15, v1, Li/h0;->j:Li/h0;

    .line 295
    iget-object v13, v1, Li/h0;->k:Li/h0;

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    .line 296
    iget-wide v14, v1, Li/h0;->l:J

    move-wide/from16 v18, v14

    .line 297
    iget-wide v14, v1, Li/h0;->m:J

    .line 298
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    .line 299
    new-instance v12, Li/m0/e/h;

    invoke-static {v5}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v5

    invoke-direct {v12, v0, v2, v3, v5}, Li/m0/e/h;-><init>(Ljava/lang/String;JLj/j;)V

    if-ltz v10, :cond_57

    const/4 v0, 0x1

    goto :goto_25

    :cond_57
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_5b

    if-eqz v7, :cond_5a

    if-eqz v8, :cond_59

    if-eqz v9, :cond_58

    .line 300
    invoke-virtual {v6}, Li/w$a;->d()Li/w;

    move-result-object v0

    .line 301
    new-instance v2, Li/h0;

    move-object v6, v2

    move-object v3, v12

    move-object v12, v0

    move-object v0, v13

    move-object v13, v3

    move-wide/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-object/from16 v21, v1

    invoke-direct/range {v6 .. v21}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    move-object v1, v2

    :goto_26
    return-object v1

    .line 302
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    const-string v0, "code < 0: "

    .line 305
    invoke-static {v0, v10}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_5c
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    :cond_5d
    const/4 v0, 0x0

    const-string v1, "method"

    .line 307
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_5e
    const/4 v0, 0x0

    .line 308
    throw v0

    .line 309
    :cond_5f
    iget-object v2, v0, Li/e0;->c:Ljava/lang/String;

    if-eqz v2, :cond_62

    const-string v3, "POST"

    .line 310
    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "PATCH"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "PUT"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "DELETE"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "MOVE"

    invoke-static {v2, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_27

    :cond_60
    const/4 v2, 0x0

    goto :goto_28

    :cond_61
    :goto_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_63

    .line 311
    :try_start_d
    iget-object v2, v4, Li/m0/c/a;->a:Li/d;

    invoke-virtual {v2, v0}, Li/d;->d(Li/e0;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_29

    :cond_62
    const-string v0, "method"

    .line 312
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :catch_8
    :cond_63
    :goto_29
    return-object v1

    :cond_64
    const/4 v0, 0x0

    .line 313
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_65

    .line 314
    iget-object v0, v2, Li/h0;->h:Li/i0;

    if-eqz v0, :cond_65

    .line 315
    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    :cond_65
    throw v1

    :cond_66
    move-object v4, v1

    const-string v0, "request"

    .line 316
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
