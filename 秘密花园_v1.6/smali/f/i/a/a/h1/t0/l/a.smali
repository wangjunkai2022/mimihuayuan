.class public final Lf/i/a/a/h1/t0/l/a;
.super Lf/i/a/a/e1/b0;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/e1/b0<",
        "Lf/i/a/a/h1/t0/k/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Lf/i/a/a/e1/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;",
            "Lf/i/a/a/e1/w;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/i/a/a/e1/b0;-><init>(Landroid/net/Uri;Ljava/util/List;Lf/i/a/a/e1/w;)V

    return-void
.end method

.method public static f(JLjava/lang/String;Lf/i/a/a/h1/t0/k/h;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lf/i/a/a/h1/t0/k/h;",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/e1/b0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lf/i/a/a/l1/p;

    .line 2
    iget-object v0, p3, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    iget-wide v2, p3, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v4, p3, Lf/i/a/a/h1/t0/k/h;->b:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 4
    new-instance p2, Lf/i/a/a/e1/b0$b;

    invoke-direct {p2, p0, p1, v7}, Lf/i/a/a/e1/b0$b;-><init>(JLf/i/a/a/l1/p;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static g(Lf/i/a/a/l1/m;ILf/i/a/a/h1/t0/k/i;)Lf/i/a/a/h1/t0/f;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p2, Lf/i/a/a/h1/t0/k/i;->e:Lf/i/a/a/h1/t0/k/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v2, p2, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    .line 4
    iget-object v3, v2, Lf/i/a/a/b0;->h:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string v5, "video/webm"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "audio/webm"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 7
    new-instance v3, Lf/i/a/a/b1/s/d;

    .line 8
    invoke-direct {v3, v4}, Lf/i/a/a/b1/s/d;-><init>(I)V

    goto :goto_1

    .line 9
    :cond_4
    new-instance v3, Lf/i/a/a/b1/u/d;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    .line 11
    invoke-direct/range {v5 .. v11}, Lf/i/a/a/b1/u/d;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V

    .line 12
    :goto_1
    new-instance v4, Lf/i/a/a/h1/s0/e;

    invoke-direct {v4, v3, p1, v2}, Lf/i/a/a/h1/s0/e;-><init>(Lf/i/a/a/b1/g;ILf/i/a/a/b0;)V

    .line 13
    invoke-virtual {p2}, Lf/i/a/a/h1/t0/k/i;->j()Lf/i/a/a/h1/t0/k/h;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_2
    move-object v4, v1

    goto :goto_4

    .line 14
    :cond_5
    iget-object v2, p2, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lf/i/a/a/h1/t0/k/h;->a(Lf/i/a/a/h1/t0/k/h;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v2

    if-nez v2, :cond_6

    .line 15
    invoke-static {p0, p2, v4, v0}, Lc/a/a/b/g/h;->H0(Lf/i/a/a/l1/m;Lf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;Lf/i/a/a/h1/t0/k/h;)V

    goto :goto_3

    :cond_6
    move-object p1, v2

    .line 16
    :goto_3
    invoke-static {p0, p2, v4, p1}, Lc/a/a/b/g/h;->H0(Lf/i/a/a/l1/m;Lf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;Lf/i/a/a/h1/t0/k/h;)V

    :goto_4
    if-nez v4, :cond_7

    move-object p0, v1

    goto :goto_5

    .line 17
    :cond_7
    iget-object p0, v4, Lf/i/a/a/h1/s0/e;->h:Lf/i/a/a/b1/n;

    .line 18
    check-cast p0, Lf/i/a/a/b1/b;

    :goto_5
    if-nez p0, :cond_8

    goto :goto_6

    .line 19
    :cond_8
    new-instance v1, Lf/i/a/a/h1/t0/g;

    iget-wide p1, p2, Lf/i/a/a/h1/t0/k/i;->c:J

    invoke-direct {v1, p0, p1, p2}, Lf/i/a/a/h1/t0/g;-><init>(Lf/i/a/a/b1/b;J)V

    :goto_6
    return-object v1
.end method


# virtual methods
.method public c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/e1/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/h1/t0/k/c;

    invoke-direct {v0}, Lf/i/a/a/h1/t0/k/c;-><init>()V

    const/4 v1, 0x4

    invoke-static {p1, v0, p2, v1}, Lf/i/a/a/l1/e0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/e0$a;Lf/i/a/a/l1/p;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/b;

    return-object p1
.end method

.method public d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    check-cast v1, Lf/i/a/a/h1/t0/k/b;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 4
    invoke-virtual {v1, v4}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v0

    .line 5
    iget-wide v5, v0, Lf/i/a/a/h1/t0/k/f;->b:J

    invoke-static {v5, v6}, Lf/i/a/a/q;->a(J)J

    move-result-wide v5

    .line 6
    invoke-virtual {v1, v4}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v7

    .line 7
    iget-object v9, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    const/4 v10, 0x0

    .line 8
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 9
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lf/i/a/a/h1/t0/k/a;

    const/4 v12, 0x0

    .line 10
    :goto_2
    iget-object v0, v11, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_6

    .line 11
    iget-object v0, v11, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/t0/k/i;

    .line 12
    :try_start_0
    iget v13, v11, Lf/i/a/a/h1/t0/k/a;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v14, p1

    :try_start_1
    invoke-static {v14, v13, v0}, Lf/i/a/a/h1/t0/l/a;->g(Lf/i/a/a/l1/m;ILf/i/a/a/h1/t0/k/i;)Lf/i/a/a/h1/t0/f;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v13, :cond_3

    .line 13
    invoke-interface {v13, v7, v8}, Lf/i/a/a/h1/t0/f;->g(J)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_2

    .line 14
    iget-object v3, v0, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 15
    iget-object v1, v0, Lf/i/a/a/h1/t0/k/i;->e:Lf/i/a/a/h1/t0/k/h;

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v5, v6, v3, v1, v2}, Lf/i/a/a/h1/t0/l/a;->f(JLjava/lang/String;Lf/i/a/a/h1/t0/k/h;Ljava/util/ArrayList;)V

    .line 17
    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/h1/t0/k/i;->j()Lf/i/a/a/h1/t0/k/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {v5, v6, v3, v0, v2}, Lf/i/a/a/h1/t0/l/a;->f(JLjava/lang/String;Lf/i/a/a/h1/t0/k/h;Ljava/util/ArrayList;)V

    .line 19
    :cond_1
    invoke-interface {v13}, Lf/i/a/a/h1/t0/f;->f()J

    move-result-wide v0

    move-wide/from16 v17, v7

    int-to-long v7, v15

    add-long/2addr v7, v0

    const-wide/16 v19, 0x1

    sub-long v7, v7, v19

    :goto_3
    cmp-long v15, v0, v7

    if-gtz v15, :cond_4

    .line 20
    invoke-interface {v13, v0, v1}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v21

    move-wide/from16 v23, v7

    add-long v7, v21, v5

    invoke-interface {v13, v0, v1}, Lf/i/a/a/h1/t0/f;->d(J)Lf/i/a/a/h1/t0/k/h;

    move-result-object v15

    invoke-static {v7, v8, v3, v15, v2}, Lf/i/a/a/h1/t0/l/a;->f(JLjava/lang/String;Lf/i/a/a/h1/t0/k/h;Ljava/util/ArrayList;)V

    add-long v0, v0, v19

    move-wide/from16 v7, v23

    goto :goto_3

    .line 21
    :cond_2
    new-instance v0, Lf/i/a/a/e1/p;

    const-string v1, "Unbounded segment index"

    invoke-direct {v0, v1}, Lf/i/a/a/e1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v16, v1

    move-wide/from16 v17, v7

    .line 22
    :try_start_2
    new-instance v0, Lf/i/a/a/e1/p;

    const-string v1, "Missing segment index"

    invoke-direct {v0, v1}, Lf/i/a/a/e1/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v16, v1

    move-wide/from16 v17, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_4

    :goto_5
    if-eqz p3, :cond_5

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move-wide/from16 v7, v17

    goto/16 :goto_2

    .line 23
    :cond_5
    throw v0

    :cond_6
    move-object/from16 v14, p1

    move-object/from16 v16, v1

    move-wide/from16 v17, v7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v14, p1

    move-object/from16 v16, v1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method
