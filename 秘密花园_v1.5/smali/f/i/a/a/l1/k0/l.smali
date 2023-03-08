.class public final Lf/i/a/a/l1/k0/l;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/l1/k0/l$b;,
        Lf/i/a/a/l1/k0/l$a;
    }
.end annotation


# static fields
.field public static final a:Lf/i/a/a/l1/k0/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf/i/a/a/l1/k0/a;->a:Lf/i/a/a/l1/k0/a;

    sput-object v0, Lf/i/a/a/l1/k0/l;->a:Lf/i/a/a/l1/k0/j;

    return-void
.end method

.method public static a(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/j;)Ljava/lang/String;
    .locals 0
    .param p1    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lf/i/a/a/l1/k0/l;->a:Lf/i/a/a/l1/k0/j;

    .line 2
    :goto_0
    invoke-interface {p1, p0}, Lf/i/a/a/l1/k0/j;->a(Lf/i/a/a/l1/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;Lf/i/a/a/l1/k0/e;[BLf/i/a/a/m1/x;ILf/i/a/a/l1/k0/l$a;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 34
    .param p2    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lf/i/a/a/l1/k0/l$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v0, p7

    const/4 v5, 0x0

    if-eqz v2, :cond_16

    move-object/from16 v6, p2

    .line 1
    invoke-static {v1, v6}, Lf/i/a/a/l1/k0/l;->a(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/j;)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_0

    .line 2
    new-instance v5, Lf/i/a/a/l1/k0/l$b;

    invoke-direct {v5, v0}, Lf/i/a/a/l1/k0/l$b;-><init>(Lf/i/a/a/l1/k0/l$a;)V

    .line 3
    invoke-static/range {p0 .. p2}, Lf/i/a/a/l1/k0/l;->c(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)Landroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 5
    iput-wide v14, v5, Lf/i/a/a/l1/k0/l$b;->b:J

    .line 6
    iput-wide v6, v5, Lf/i/a/a/l1/k0/l$b;->c:J

    .line 7
    iget-object v13, v5, Lf/i/a/a/l1/k0/l$b;->a:Lf/i/a/a/l1/k0/l$a;

    const-wide/16 v18, 0x0

    move-wide/from16 v16, v6

    invoke-interface/range {v13 .. v19}, Lf/i/a/a/l1/k0/l$a;->a(JJJ)V

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v13, p1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    .line 9
    invoke-static {v1, v13, v12}, Lf/i/a/a/l1/k0/l;->d(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Ljava/lang/String;)J

    move-result-wide v6

    .line 10
    :goto_0
    iget-wide v8, v1, Lf/i/a/a/l1/p;->d:J

    const-wide/16 v10, -0x1

    cmp-long v0, v6, v10

    if-nez v0, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    :goto_2
    const-wide/16 v21, 0x0

    cmp-long v0, v17, v21

    if-eqz v0, :cond_15

    .line 11
    invoke-static/range {p8 .. p8}, Lf/i/a/a/l1/k0/l;->h(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide v23, 0x7fffffffffffffffL

    if-eqz v16, :cond_2

    move-wide/from16 v25, v23

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v17

    :goto_3
    move-object/from16 v6, p1

    move-object v7, v12

    move-wide/from16 v8, v19

    move-wide v14, v10

    move-wide/from16 v10, v25

    .line 12
    invoke-interface/range {v6 .. v11}, Lf/i/a/a/l1/k0/b;->k(Ljava/lang/String;JJ)J

    move-result-wide v6

    cmp-long v0, v6, v21

    if-lez v0, :cond_3

    move-object v13, v12

    move-wide/from16 v21, v14

    move/from16 v15, p6

    goto/16 :goto_12

    :cond_3
    neg-long v10, v6

    cmp-long v0, v10, v23

    if-nez v0, :cond_4

    move-wide v6, v14

    goto :goto_4

    :cond_4
    move-wide v6, v10

    :goto_4
    cmp-long v0, v6, v17

    move-object v9, v12

    if-nez v0, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 13
    :goto_5
    iget-wide v12, v1, Lf/i/a/a/l1/p;->d:J

    sub-long v12, v19, v12

    cmp-long v0, v6, v14

    if-eqz v0, :cond_6

    add-long/2addr v6, v12

    goto :goto_6

    :cond_6
    move-wide v6, v14

    :goto_6
    move-wide/from16 v27, v12

    :goto_7
    if-eqz v4, :cond_8

    .line 14
    iget-object v14, v4, Lf/i/a/a/m1/x;->a:Ljava/lang/Object;

    monitor-enter v14

    .line 15
    :goto_8
    :try_start_0
    iget v0, v4, Lf/i/a/a/m1/x;->c:I

    move/from16 v15, p6

    if-eq v0, v15, :cond_7

    .line 16
    iget-object v0, v4, Lf/i/a/a/m1/x;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_8

    .line 17
    :cond_7
    monitor-exit v14

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move/from16 v15, p6

    .line 18
    :goto_9
    invoke-static/range {p8 .. p8}, Lf/i/a/a/l1/k0/l;->h(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v21, -0x1

    cmp-long v14, v6, v21

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move-object v13, v9

    move-wide/from16 v9, v27

    if-eqz v14, :cond_a

    sub-long v11, v6, v9

    .line 19
    :try_start_1
    invoke-virtual {v1, v9, v10, v11, v12}, Lf/i/a/a/l1/p;->d(JJ)Lf/i/a/a/l1/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lf/i/a/a/l1/k0/e;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    if-eqz v8, :cond_9

    .line 20
    :try_start_2
    invoke-static {v0}, Lf/i/a/a/l1/k0/l;->e(Ljava/io/IOException;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 21
    invoke-static/range {p3 .. p3}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    goto :goto_a

    .line 22
    :cond_9
    throw v0

    :cond_a
    :goto_a
    const/4 v0, 0x0

    const-wide/16 v11, -0x1

    :goto_b
    if-nez v0, :cond_b

    const-wide/16 v11, -0x1

    .line 23
    invoke-virtual {v1, v9, v10, v11, v12}, Lf/i/a/a/l1/p;->d(JJ)Lf/i/a/a/l1/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lf/i/a/a/l1/k0/e;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v11
    :try_end_2
    .catch Lf/i/a/a/m1/x$a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catch_1
    move-wide/from16 v27, v9

    const-wide/16 v21, -0x1

    goto :goto_10

    :cond_b
    :goto_c
    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    const-wide/16 v21, -0x1

    cmp-long v0, v11, v21

    if-eqz v0, :cond_d

    add-long/2addr v11, v9

    .line 24
    :try_start_3
    invoke-virtual {v5, v11, v12}, Lf/i/a/a/l1/k0/l$b;->a(J)V

    goto :goto_d

    :cond_c
    const-wide/16 v21, -0x1

    :cond_d
    :goto_d
    cmp-long v0, v9, v6

    if-eqz v0, :cond_11

    .line 25
    invoke-static/range {p8 .. p8}, Lf/i/a/a/l1/k0/l;->h(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz v14, :cond_e

    .line 26
    array-length v0, v3

    int-to-long v11, v0

    sub-long v0, v6, v9

    .line 27
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_e

    :cond_e
    array-length v1, v3

    :goto_e
    const/4 v11, 0x0

    .line 28
    invoke-virtual {v2, v3, v11, v1}, Lf/i/a/a/l1/k0/e;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    if-eqz v5, :cond_11

    .line 29
    invoke-virtual {v5, v9, v10}, Lf/i/a/a/l1/k0/l$b;->a(J)V

    goto :goto_11

    :cond_f
    int-to-long v0, v0

    add-long/2addr v9, v0

    if-eqz v5, :cond_10

    .line 30
    iget-wide v11, v5, Lf/i/a/a/l1/k0/l$b;->c:J

    add-long/2addr v11, v0

    iput-wide v11, v5, Lf/i/a/a/l1/k0/l$b;->c:J

    .line 31
    iget-object v2, v5, Lf/i/a/a/l1/k0/l$b;->a:Lf/i/a/a/l1/k0/l$a;

    iget-wide v3, v5, Lf/i/a/a/l1/k0/l$b;->b:J

    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v11

    move-wide/from16 v32, v0

    invoke-interface/range {v27 .. v33}, Lf/i/a/a/l1/k0/l$a;->a(JJJ)V
    :try_end_3
    .catch Lf/i/a/a/m1/x$a; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    goto :goto_d

    .line 32
    :goto_f
    invoke-static/range {p3 .. p3}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 33
    throw v0

    :catch_2
    move-wide/from16 v27, v9

    .line 34
    :goto_10
    invoke-static/range {p3 .. p3}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v9, v13

    move-wide/from16 v14, v21

    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    goto/16 :goto_7

    :cond_11
    :goto_11
    sub-long v9, v9, v25

    invoke-static/range {p3 .. p3}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    cmp-long v0, v9, v23

    if-gez v0, :cond_13

    if-eqz p9, :cond_15

    if-eqz v16, :cond_12

    goto :goto_13

    .line 35
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    move-wide/from16 v6, v23

    :goto_12
    add-long v19, v19, v6

    if-nez v16, :cond_14

    sub-long v17, v17, v6

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v12, v13

    move-wide/from16 v10, v21

    move-object/from16 v13, p1

    goto/16 :goto_2

    :cond_15
    :goto_13
    return-void

    .line 36
    :cond_16
    throw v5
.end method

.method public static c(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)Landroid/util/Pair;
    .locals 21
    .param p2    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/p;",
            "Lf/i/a/a/l1/k0/b;",
            "Lf/i/a/a/l1/k0/j;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-static {v0, v1}, Lf/i/a/a/l1/k0/l;->a(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/j;)Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-wide v1, v0, Lf/i/a/a/l1/p;->d:J

    move-object/from16 v7, p1

    .line 3
    invoke-static {v0, v7, v6}, Lf/i/a/a/l1/k0/l;->d(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v1

    move-wide v14, v8

    move-wide/from16 v16, v10

    :goto_0
    cmp-long v0, v14, v10

    if-eqz v0, :cond_4

    const-wide/16 v0, -0x1

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v20, v14, v0

    if-eqz v20, :cond_0

    move-wide v4, v14

    goto :goto_1

    :cond_0
    move-wide/from16 v4, v18

    :goto_1
    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v12

    .line 4
    invoke-interface/range {v0 .. v5}, Lf/i/a/a/l1/k0/b;->k(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    add-long v16, v16, v0

    goto :goto_2

    :cond_1
    neg-long v0, v0

    cmp-long v2, v0, v18

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-long/2addr v12, v0

    if-nez v20, :cond_3

    move-wide v0, v10

    :cond_3
    sub-long/2addr v14, v0

    goto :goto_0

    .line 5
    :cond_4
    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/l1/p;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Lf/i/a/a/l1/k0/b;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/p;

    move-result-object p1

    invoke-static {p1}, Lf/i/a/a/l1/k0/o;->a(Lf/i/a/a/l1/k0/p;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p0, Lf/i/a/a/l1/p;->d:J

    sub-long v2, p1, v0

    :goto_0
    return-wide v2
.end method

.method public static e(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Lf/i/a/a/l1/n;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lf/i/a/a/l1/n;

    iget v0, v0, Lf/i/a/a/l1/n;->a:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lf/i/a/a/l1/p;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static g(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)V
    .locals 0
    .param p2    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p2}, Lf/i/a/a/l1/k0/l;->a(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/j;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p1, p0}, Lf/i/a/a/l1/k0/b;->j(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/l1/k0/k;

    .line 4
    :try_start_0
    invoke-interface {p1, p2}, Lf/i/a/a/l1/k0/b;->e(Lf/i/a/a/l1/k0/k;)V
    :try_end_0
    .catch Lf/i/a/a/l1/k0/b$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method
