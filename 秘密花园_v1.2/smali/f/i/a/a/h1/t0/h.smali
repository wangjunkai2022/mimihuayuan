.class public Lf/i/a/a/h1/t0/h;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lf/i/a/a/h1/t0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/t0/h$b;,
        Lf/i/a/a/h1/t0/h$c;,
        Lf/i/a/a/h1/t0/h$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/d0;

.field public final b:[I

.field public final c:I

.field public final d:Lf/i/a/a/l1/m;

.field public final e:J

.field public final f:I

.field public final g:Lf/i/a/a/h1/t0/j$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:[Lf/i/a/a/h1/t0/h$b;

.field public i:Lf/i/a/a/j1/j;

.field public j:Lf/i/a/a/h1/t0/k/b;

.field public k:I

.field public l:Ljava/io/IOException;

.field public m:Z

.field public n:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/t0/k/b;I[ILf/i/a/a/j1/j;ILf/i/a/a/l1/m;JIZLjava/util/List;Lf/i/a/a/h1/t0/j$c;)V
    .locals 18
    .param p13    # Lf/i/a/a/h1/t0/j$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/d0;",
            "Lf/i/a/a/h1/t0/k/b;",
            "I[I",
            "Lf/i/a/a/j1/j;",
            "I",
            "Lf/i/a/a/l1/m;",
            "JIZ",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/h1/t0/j$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lf/i/a/a/h1/t0/h;->a:Lf/i/a/a/l1/d0;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    move-object/from16 v3, p4

    .line 4
    iput-object v3, v0, Lf/i/a/a/h1/t0/h;->b:[I

    .line 5
    iput-object v1, v0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    move/from16 v10, p6

    .line 6
    iput v10, v0, Lf/i/a/a/h1/t0/h;->c:I

    move-object/from16 v3, p7

    .line 7
    iput-object v3, v0, Lf/i/a/a/h1/t0/h;->d:Lf/i/a/a/l1/m;

    move/from16 v3, p3

    .line 8
    iput v3, v0, Lf/i/a/a/h1/t0/h;->k:I

    move-wide/from16 v4, p8

    .line 9
    iput-wide v4, v0, Lf/i/a/a/h1/t0/h;->e:J

    move/from16 v4, p10

    .line 10
    iput v4, v0, Lf/i/a/a/h1/t0/h;->f:I

    move-object/from16 v11, p13

    .line 11
    iput-object v11, v0, Lf/i/a/a/h1/t0/h;->g:Lf/i/a/a/h1/t0/j$c;

    .line 12
    invoke-virtual/range {p2 .. p3}, Lf/i/a/a/h1/t0/k/b;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v12

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide v2, v0, Lf/i/a/a/h1/t0/h;->n:J

    .line 14
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/t0/h;->j()Ljava/util/ArrayList;

    move-result-object v14

    .line 15
    invoke-interface/range {p5 .. p5}, Lf/i/a/a/j1/j;->length()I

    move-result v2

    new-array v2, v2, [Lf/i/a/a/h1/t0/h$b;

    iput-object v2, v0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    array-length v2, v2

    if-ge v15, v2, :cond_0

    .line 17
    invoke-interface {v1, v15}, Lf/i/a/a/j1/j;->e(I)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lf/i/a/a/h1/t0/k/i;

    .line 18
    iget-object v9, v0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    new-instance v16, Lf/i/a/a/h1/t0/h$b;

    move-object/from16 v2, v16

    move-wide v3, v12

    move/from16 v5, p6

    move/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v17, v9

    move-object/from16 v9, p13

    invoke-direct/range {v2 .. v9}, Lf/i/a/a/h1/t0/h$b;-><init>(JILf/i/a/a/h1/t0/k/i;ZLjava/util/List;Lf/i/a/a/b1/p;)V

    aput-object v16, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->a:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public b(JLf/i/a/a/s0;)J
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    if-eqz v4, :cond_1

    .line 3
    iget-wide v0, v3, Lf/i/a/a/h1/t0/h$b;->d:J

    invoke-interface {v4, p1, p2, v0, v1}, Lf/i/a/a/h1/t0/f;->a(JJ)J

    move-result-wide v0

    iget-wide v4, v3, Lf/i/a/a/h1/t0/h$b;->e:J

    add-long/2addr v0, v4

    .line 4
    invoke-virtual {v3, v0, v1}, Lf/i/a/a/h1/t0/h$b;->h(J)J

    move-result-wide v7

    cmp-long v2, v7, p1

    if-gez v2, :cond_0

    .line 5
    invoke-virtual {v3}, Lf/i/a/a/h1/t0/h$b;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 6
    invoke-virtual {v3, v0, v1}, Lf/i/a/a/h1/t0/h$b;->h(J)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_1

    :cond_0
    move-wide v9, v7

    :goto_1
    move-wide v4, p1

    move-object v6, p3

    .line 7
    invoke-static/range {v4 .. v10}, Lf/i/a/a/m1/h0;->g0(JLf/i/a/a/s0;JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide p1
.end method

.method public c(Lf/i/a/a/j1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    return-void
.end method

.method public d(Lf/i/a/a/h1/t0/k/b;I)V
    .locals 5

    .line 1
    :try_start_0
    iput-object p1, p0, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    .line 2
    iput p2, p0, Lf/i/a/a/h1/t0/h;->k:I

    .line 3
    invoke-virtual {p1, p2}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    invoke-interface {v2, v1}, Lf/i/a/a/j1/j;->e(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/i;

    .line 7
    iget-object v3, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    iget-object v4, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    aget-object v4, v4, v1

    .line 8
    invoke-virtual {v4, p1, p2, v2}, Lf/i/a/a/h1/t0/h$b;->a(JLf/i/a/a/h1/t0/k/i;)Lf/i/a/a/h1/t0/h$b;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lf/i/a/a/h1/p; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iput-object p1, p0, Lf/i/a/a/h1/t0/h;->l:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public e(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->l:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    invoke-interface {v0}, Lf/i/a/a/j1/j;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/j1/j;->f(JLjava/util/List;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public f(Lf/i/a/a/h1/s0/d;)V
    .locals 12

    .line 1
    instance-of v0, p1, Lf/i/a/a/h1/s0/k;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lf/i/a/a/h1/s0/k;

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    iget-object v0, v0, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    invoke-interface {v1, v0}, Lf/i/a/a/j1/j;->g(Lf/i/a/a/b0;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    if-nez v3, :cond_0

    .line 6
    iget-object v3, v2, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    .line 7
    iget-object v3, v3, Lf/i/a/a/h1/s0/e;->h:Lf/i/a/a/b1/n;

    if-eqz v3, :cond_0

    .line 8
    new-instance v11, Lf/i/a/a/h1/t0/g;

    check-cast v3, Lf/i/a/a/b1/b;

    iget-object v4, v2, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    iget-wide v4, v4, Lf/i/a/a/h1/t0/k/i;->c:J

    invoke-direct {v11, v3, v4, v5}, Lf/i/a/a/h1/t0/g;-><init>(Lf/i/a/a/b1/b;J)V

    .line 9
    new-instance v3, Lf/i/a/a/h1/t0/h$b;

    iget-wide v5, v2, Lf/i/a/a/h1/t0/h$b;->d:J

    iget-object v7, v2, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    iget-object v8, v2, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    iget-wide v9, v2, Lf/i/a/a/h1/t0/h$b;->e:J

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lf/i/a/a/h1/t0/h$b;-><init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V

    .line 10
    aput-object v3, v1, v0

    .line 11
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->g:Lf/i/a/a/h1/t0/j$c;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    .line 13
    iget-wide v1, v0, Lf/i/a/a/h1/t0/j;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v3, p1, Lf/i/a/a/h1/s0/d;->g:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 14
    :cond_1
    iget-wide v1, p1, Lf/i/a/a/h1/s0/d;->g:J

    iput-wide v1, v0, Lf/i/a/a/h1/t0/j;->h:J

    :cond_2
    return-void
.end method

.method public h(JJLjava/util/List;Lf/i/a/a/h1/s0/f;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;",
            "Lf/i/a/a/h1/s0/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    .line 1
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-long v11, p3, p1

    .line 2
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v0, v0, Lf/i/a/a/h1/t0/k/b;->d:Z

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, v9, Lf/i/a/a/h1/t0/h;->n:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-wide v0, v9, Lf/i/a/a/h1/t0/h;->n:J

    sub-long v0, v0, p1

    move-wide/from16 v16, v0

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v13

    .line 4
    :goto_1
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget-wide v0, v0, Lf/i/a/a/h1/t0/k/b;->a:J

    .line 5
    invoke-static {v0, v1}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    iget-object v2, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v3, v9, Lf/i/a/a/h1/t0/h;->k:I

    .line 6
    invoke-virtual {v2, v3}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v2

    iget-wide v2, v2, Lf/i/a/a/h1/t0/k/f;->b:J

    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long v2, v2, p3

    .line 7
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->g:Lf/i/a/a/h1/t0/j$c;

    if-eqz v0, :cond_9

    .line 8
    iget-object v0, v0, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    .line 9
    iget-object v1, v0, Lf/i/a/a/h1/t0/j;->f:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v4, v1, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-nez v4, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    .line 10
    :cond_3
    iget-boolean v4, v0, Lf/i/a/a/h1/t0/j;->j:Z

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    .line 11
    :cond_4
    iget-wide v4, v1, Lf/i/a/a/h1/t0/k/b;->h:J

    .line 12
    iget-object v1, v0, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_7

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lf/i/a/a/h1/t0/j;->g:J

    .line 15
    iget-object v3, v0, Lf/i/a/a/h1/t0/j;->b:Lf/i/a/a/h1/t0/j$b;

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    .line 16
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 17
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    cmp-long v6, v4, v13

    if-eqz v6, :cond_5

    cmp-long v6, v4, v1

    if-gez v6, :cond_6

    .line 18
    :cond_5
    iput-wide v1, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {v0}, Lf/i/a/a/h1/t0/j;->a()V

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    return-void

    .line 20
    :cond_9
    iget-wide v0, v9, Lf/i/a/a/h1/t0/h;->e:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_a

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, v9, Lf/i/a/a/h1/t0/h;->e:J

    add-long/2addr v0, v4

    goto :goto_4

    .line 22
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_4
    mul-long v5, v0, v2

    .line 23
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v18, 0x0

    if-eqz v0, :cond_b

    move-object/from16 v8, p5

    move-object/from16 v19, v18

    goto :goto_5

    :cond_b
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move-object/from16 v8, p5

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/s0/l;

    move-object/from16 v19, v0

    .line 24
    :goto_5
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    invoke-interface {v0}, Lf/i/a/a/j1/j;->length()I

    move-result v3

    new-array v4, v3, [Lf/i/a/a/h1/s0/m;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_e

    .line 25
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    aget-object v1, v0, v2

    .line 26
    iget-object v0, v1, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    if-nez v0, :cond_c

    .line 27
    sget-object v0, Lf/i/a/a/h1/s0/m;->a:Lf/i/a/a/h1/s0/m;

    aput-object v0, v4, v2

    move/from16 v26, v2

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-wide/from16 v29, v5

    const/4 v15, 0x1

    goto :goto_7

    .line 28
    :cond_c
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v7, v9, Lf/i/a/a/h1/t0/h;->k:I

    .line 29
    invoke-virtual {v1, v0, v7, v5, v6}, Lf/i/a/a/h1/t0/h$b;->b(Lf/i/a/a/h1/t0/k/b;IJ)J

    move-result-wide v21

    .line 30
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v7, v9, Lf/i/a/a/h1/t0/h;->k:I

    .line 31
    invoke-virtual {v1, v0, v7, v5, v6}, Lf/i/a/a/h1/t0/h$b;->d(Lf/i/a/a/h1/t0/k/b;IJ)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v2, v19

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-wide/from16 v3, p3

    move-wide/from16 v29, v5

    move-wide/from16 v5, v21

    const/4 v15, 0x1

    move-wide/from16 v7, v24

    .line 32
    invoke-virtual/range {v0 .. v8}, Lf/i/a/a/h1/t0/h;->k(Lf/i/a/a/h1/t0/h$b;Lf/i/a/a/h1/s0/l;JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gez v2, :cond_d

    .line 33
    sget-object v0, Lf/i/a/a/h1/s0/m;->a:Lf/i/a/a/h1/s0/m;

    aput-object v0, v28, v26

    goto :goto_7

    .line 34
    :cond_d
    new-instance v2, Lf/i/a/a/h1/t0/h$c;

    move-object/from16 v20, v2

    move-object/from16 v21, v23

    move-wide/from16 v22, v0

    invoke-direct/range {v20 .. v25}, Lf/i/a/a/h1/t0/h$c;-><init>(Lf/i/a/a/h1/t0/h$b;JJ)V

    aput-object v2, v28, v26

    :goto_7
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v8, p5

    move/from16 v3, v27

    move-object/from16 v4, v28

    move-wide/from16 v5, v29

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v28, v4

    move-wide/from16 v29, v5

    const/4 v15, 0x1

    .line 35
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    move-wide/from16 v1, p1

    move-wide v3, v11

    move-wide/from16 v5, v16

    move-object/from16 v7, p5

    move-object/from16 v8, v28

    invoke-interface/range {v0 .. v8}, Lf/i/a/a/j1/j;->h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V

    .line 36
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    iget-object v1, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 37
    invoke-interface {v1}, Lf/i/a/a/j1/j;->m()I

    move-result v1

    aget-object v11, v0, v1

    .line 38
    iget-object v0, v11, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    if-eqz v0, :cond_13

    .line 39
    iget-object v1, v11, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    .line 40
    iget-object v0, v0, Lf/i/a/a/h1/s0/e;->i:[Lf/i/a/a/b0;

    if-nez v0, :cond_f

    .line 41
    iget-object v0, v1, Lf/i/a/a/h1/t0/k/i;->e:Lf/i/a/a/h1/t0/k/h;

    goto :goto_8

    :cond_f
    move-object/from16 v0, v18

    .line 42
    :goto_8
    iget-object v2, v11, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    if-nez v2, :cond_10

    .line 43
    invoke-virtual {v1}, Lf/i/a/a/h1/t0/k/i;->j()Lf/i/a/a/h1/t0/k/h;

    move-result-object v18

    :cond_10
    move-object/from16 v1, v18

    if-nez v0, :cond_11

    if-eqz v1, :cond_13

    .line 44
    :cond_11
    iget-object v3, v9, Lf/i/a/a/h1/t0/h;->d:Lf/i/a/a/l1/m;

    iget-object v2, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 45
    invoke-interface {v2}, Lf/i/a/a/j1/j;->k()Lf/i/a/a/b0;

    move-result-object v5

    iget-object v2, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    invoke-interface {v2}, Lf/i/a/a/j1/j;->l()I

    move-result v6

    iget-object v2, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 46
    invoke-interface {v2}, Lf/i/a/a/j1/j;->p()Ljava/lang/Object;

    move-result-object v7

    .line 47
    iget-object v2, v11, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    iget-object v2, v2, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 48
    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/t0/k/h;->a(Lf/i/a/a/h1/t0/k/h;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    move-object v0, v1

    .line 49
    :goto_9
    new-instance v4, Lf/i/a/a/l1/p;

    invoke-virtual {v0, v2}, Lf/i/a/a/h1/t0/k/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iget-wide v14, v0, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v0, v0, Lf/i/a/a/h1/t0/k/h;->b:J

    iget-object v2, v11, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    .line 50
    invoke-virtual {v2}, Lf/i/a/a/h1/t0/k/i;->h()Ljava/lang/String;

    move-result-object v18

    move-object v12, v4

    move-wide/from16 v16, v0

    invoke-direct/range {v12 .. v18}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 51
    new-instance v0, Lf/i/a/a/h1/s0/k;

    iget-object v8, v11, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lf/i/a/a/h1/s0/k;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;Lf/i/a/a/h1/s0/e;)V

    .line 52
    iput-object v0, v10, Lf/i/a/a/h1/s0/f;->a:Lf/i/a/a/h1/s0/d;

    return-void

    .line 53
    :cond_13
    iget-wide v7, v11, Lf/i/a/a/h1/t0/h$b;->d:J

    cmp-long v12, v7, v13

    if-eqz v12, :cond_14

    const/4 v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    .line 54
    :goto_a
    invoke-virtual {v11}, Lf/i/a/a/h1/t0/h$b;->e()I

    move-result v0

    if-nez v0, :cond_15

    .line 55
    iput-boolean v5, v10, Lf/i/a/a/h1/s0/f;->b:Z

    return-void

    .line 56
    :cond_15
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v1, v9, Lf/i/a/a/h1/t0/h;->k:I

    move-wide/from16 v2, v29

    .line 57
    invoke-virtual {v11, v0, v1, v2, v3}, Lf/i/a/a/h1/t0/h$b;->b(Lf/i/a/a/h1/t0/k/b;IJ)J

    move-result-wide v16

    .line 58
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v1, v9, Lf/i/a/a/h1/t0/h;->k:I

    .line 59
    invoke-virtual {v11, v0, v1, v2, v3}, Lf/i/a/a/h1/t0/h$b;->d(Lf/i/a/a/h1/t0/k/b;IJ)J

    move-result-wide v3

    .line 60
    iget-object v0, v9, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v0, v0, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v0, :cond_16

    .line 61
    invoke-virtual {v11, v3, v4}, Lf/i/a/a/h1/t0/h$b;->f(J)J

    move-result-wide v0

    goto :goto_b

    :cond_16
    move-wide v0, v13

    :goto_b
    iput-wide v0, v9, Lf/i/a/a/h1/t0/h;->n:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v19

    move-wide/from16 v18, v3

    move-wide/from16 v3, p3

    move v13, v5

    move-wide/from16 v5, v16

    move-wide/from16 v22, v7

    move-wide/from16 v7, v18

    .line 62
    invoke-virtual/range {v0 .. v8}, Lf/i/a/a/h1/t0/h;->k(Lf/i/a/a/h1/t0/h$b;Lf/i/a/a/h1/s0/l;JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-gez v2, :cond_17

    .line 63
    new-instance v0, Lf/i/a/a/h1/p;

    invoke-direct {v0}, Lf/i/a/a/h1/p;-><init>()V

    iput-object v0, v9, Lf/i/a/a/h1/t0/h;->l:Ljava/io/IOException;

    return-void

    :cond_17
    cmp-long v2, v0, v18

    if-gtz v2, :cond_20

    .line 64
    iget-boolean v3, v9, Lf/i/a/a/h1/t0/h;->m:Z

    if-eqz v3, :cond_18

    if-ltz v2, :cond_18

    goto/16 :goto_12

    :cond_18
    if-eqz v13, :cond_19

    .line 65
    invoke-virtual {v11, v0, v1}, Lf/i/a/a/h1/t0/h$b;->h(J)J

    move-result-wide v2

    cmp-long v4, v2, v22

    if-ltz v4, :cond_19

    .line 66
    iput-boolean v15, v10, Lf/i/a/a/h1/s0/f;->b:Z

    return-void

    .line 67
    :cond_19
    iget v2, v9, Lf/i/a/a/h1/t0/h;->f:I

    int-to-long v2, v2

    sub-long v4, v18, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 68
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    if-eqz v12, :cond_1a

    :goto_c
    if-le v3, v15, :cond_1a

    int-to-long v4, v3

    add-long/2addr v4, v0

    sub-long/2addr v4, v6

    .line 69
    invoke-virtual {v11, v4, v5}, Lf/i/a/a/h1/t0/h$b;->h(J)J

    move-result-wide v4

    cmp-long v2, v4, v22

    if-ltz v2, :cond_1a

    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 70
    :cond_1a
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-wide/from16 v34, p3

    goto :goto_d

    :cond_1b
    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    :goto_d
    iget-object v2, v9, Lf/i/a/a/h1/t0/h;->d:Lf/i/a/a/l1/m;

    iget v4, v9, Lf/i/a/a/h1/t0/h;->c:I

    iget-object v5, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 72
    invoke-interface {v5}, Lf/i/a/a/j1/j;->k()Lf/i/a/a/b0;

    move-result-object v5

    iget-object v8, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 73
    invoke-interface {v8}, Lf/i/a/a/j1/j;->l()I

    move-result v28

    iget-object v8, v9, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    .line 74
    invoke-interface {v8}, Lf/i/a/a/j1/j;->p()Ljava/lang/Object;

    move-result-object v29

    .line 75
    iget-object v8, v11, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    .line 76
    iget-object v12, v11, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v13, v11, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long v13, v0, v13

    invoke-interface {v12, v13, v14}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v30

    .line 77
    iget-object v12, v11, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v13, v11, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long v13, v0, v13

    invoke-interface {v12, v13, v14}, Lf/i/a/a/h1/t0/f;->d(J)Lf/i/a/a/h1/t0/k/h;

    move-result-object v12

    .line 78
    iget-object v13, v8, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    .line 79
    iget-object v14, v11, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    if-nez v14, :cond_1c

    .line 80
    invoke-virtual {v11, v0, v1}, Lf/i/a/a/h1/t0/h$b;->f(J)J

    move-result-wide v32

    .line 81
    new-instance v26, Lf/i/a/a/l1/p;

    invoke-virtual {v12, v13}, Lf/i/a/a/h1/t0/k/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-wide v6, v12, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v11, v12, Lf/i/a/a/h1/t0/k/h;->b:J

    .line 82
    invoke-virtual {v8}, Lf/i/a/a/h1/t0/k/i;->h()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v26

    move-wide/from16 v16, v6

    move-wide/from16 v18, v11

    invoke-direct/range {v14 .. v20}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 83
    new-instance v3, Lf/i/a/a/h1/s0/n;

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move-object/from16 v27, v5

    move-wide/from16 v34, v0

    move/from16 v36, v4

    move-object/from16 v37, v5

    invoke-direct/range {v24 .. v37}, Lf/i/a/a/h1/s0/n;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJILf/i/a/a/b0;)V

    move-object v0, v10

    goto/16 :goto_11

    :cond_1c
    const/4 v4, 0x1

    :goto_e
    if-ge v15, v3, :cond_1e

    int-to-long v6, v15

    add-long/2addr v6, v0

    .line 84
    iget-object v14, v11, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v9, v11, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long/2addr v6, v9

    invoke-interface {v14, v6, v7}, Lf/i/a/a/h1/t0/f;->d(J)Lf/i/a/a/h1/t0/k/h;

    move-result-object v6

    .line 85
    invoke-virtual {v12, v6, v13}, Lf/i/a/a/h1/t0/k/h;->a(Lf/i/a/a/h1/t0/k/h;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v6

    if-nez v6, :cond_1d

    goto :goto_f

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    move-object v12, v6

    const-wide/16 v6, 0x1

    goto :goto_e

    :cond_1e
    :goto_f
    int-to-long v6, v4

    add-long/2addr v6, v0

    const-wide/16 v9, 0x1

    sub-long/2addr v6, v9

    .line 86
    invoke-virtual {v11, v6, v7}, Lf/i/a/a/h1/t0/h$b;->f(J)J

    move-result-wide v32

    .line 87
    iget-wide v6, v11, Lf/i/a/a/h1/t0/h$b;->d:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v9

    if-eqz v3, :cond_1f

    cmp-long v3, v6, v32

    if-gtz v3, :cond_1f

    move-wide/from16 v36, v6

    goto :goto_10

    :cond_1f
    move-wide/from16 v36, v9

    .line 88
    :goto_10
    new-instance v14, Lf/i/a/a/l1/p;

    move-object/from16 v26, v14

    invoke-virtual {v12, v13}, Lf/i/a/a/h1/t0/k/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-wide v6, v12, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v9, v12, Lf/i/a/a/h1/t0/k/h;->b:J

    .line 89
    invoke-virtual {v8}, Lf/i/a/a/h1/t0/k/i;->h()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v16, v6

    move-wide/from16 v18, v9

    invoke-direct/range {v14 .. v20}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 90
    iget-wide v6, v8, Lf/i/a/a/h1/t0/k/i;->c:J

    neg-long v6, v6

    move-wide/from16 v41, v6

    .line 91
    new-instance v3, Lf/i/a/a/h1/s0/i;

    move-object/from16 v24, v3

    iget-object v6, v11, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    move-object/from16 v43, v6

    move-object/from16 v25, v2

    move-object/from16 v27, v5

    move-wide/from16 v38, v0

    move/from16 v40, v4

    invoke-direct/range {v24 .. v43}, Lf/i/a/a/h1/s0/i;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJJJIJLf/i/a/a/h1/s0/e;)V

    move-object/from16 v0, p6

    .line 92
    :goto_11
    iput-object v3, v0, Lf/i/a/a/h1/s0/f;->a:Lf/i/a/a/h1/s0/d;

    return-void

    :cond_20
    :goto_12
    move-object v0, v10

    .line 93
    iput-boolean v13, v0, Lf/i/a/a/h1/s0/f;->b:Z

    return-void
.end method

.method public i(Lf/i/a/a/h1/s0/d;ZLjava/lang/Exception;J)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p2, p0, Lf/i/a/a/h1/t0/h;->g:Lf/i/a/a/h1/t0/j$c;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 2
    iget-object p2, p2, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    .line 3
    iget-object v4, p2, Lf/i/a/a/h1/t0/j;->f:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v4, v4, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-nez v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean v4, p2, Lf/i/a/a/h1/t0/j;->j:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-wide v4, p2, Lf/i/a/a/h1/t0/j;->h:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_3

    iget-wide v6, p1, Lf/i/a/a/h1/s0/d;->f:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {p2}, Lf/i/a/a/h1/t0/j;->a()V

    :goto_1
    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_5

    return v3

    .line 7
    :cond_5
    iget-object p2, p0, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget-boolean p2, p2, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-nez p2, :cond_6

    instance-of p2, p1, Lf/i/a/a/h1/s0/l;

    if-eqz p2, :cond_6

    instance-of p2, p3, Lf/i/a/a/l1/a0$e;

    if-eqz p2, :cond_6

    check-cast p3, Lf/i/a/a/l1/a0$e;

    iget p2, p3, Lf/i/a/a/l1/a0$e;->a:I

    const/16 p3, 0x194

    if-ne p2, p3, :cond_6

    .line 8
    iget-object p2, p0, Lf/i/a/a/h1/t0/h;->h:[Lf/i/a/a/h1/t0/h$b;

    iget-object p3, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    iget-object v4, p1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 9
    invoke-interface {p3, v4}, Lf/i/a/a/j1/j;->g(Lf/i/a/a/b0;)I

    move-result p3

    aget-object p2, p2, p3

    .line 10
    invoke-virtual {p2}, Lf/i/a/a/h1/t0/h$b;->e()I

    move-result p3

    const/4 v4, -0x1

    if-eq p3, v4, :cond_6

    if-eqz p3, :cond_6

    .line 11
    invoke-virtual {p2}, Lf/i/a/a/h1/t0/h$b;->c()J

    move-result-wide v4

    int-to-long p2, p3

    add-long/2addr v4, p2

    const-wide/16 p2, 0x1

    sub-long/2addr v4, p2

    .line 12
    move-object p2, p1

    check-cast p2, Lf/i/a/a/h1/s0/l;

    invoke-virtual {p2}, Lf/i/a/a/h1/s0/l;->c()J

    move-result-wide p2

    cmp-long v6, p2, v4

    if-lez v6, :cond_6

    .line 13
    iput-boolean v3, p0, Lf/i/a/a/h1/t0/h;->m:Z

    return v3

    :cond_6
    cmp-long p2, p4, v1

    if-eqz p2, :cond_7

    .line 14
    iget-object p2, p0, Lf/i/a/a/h1/t0/h;->i:Lf/i/a/a/j1/j;

    iget-object p1, p1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 15
    invoke-interface {p2, p1}, Lf/i/a/a/j1/j;->g(Lf/i/a/a/b0;)I

    move-result p1

    invoke-interface {p2, p1, p4, p5}, Lf/i/a/a/j1/j;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/t0/k/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h;->j:Lf/i/a/a/h1/t0/k/b;

    iget v1, p0, Lf/i/a/a/h1/t0/h;->k:I

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lf/i/a/a/h1/t0/h;->b:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/t0/k/a;

    iget-object v5, v5, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final k(Lf/i/a/a/h1/t0/h$b;Lf/i/a/a/h1/s0/l;JJJ)J
    .locals 11
    .param p2    # Lf/i/a/a/h1/s0/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/h1/s0/l;->c()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v2, v0, Lf/i/a/a/h1/t0/h$b;->d:J

    move-wide v4, p3

    invoke-interface {v1, p3, p4, v2, v3}, Lf/i/a/a/h1/t0/f;->a(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    add-long v5, v1, v3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 3
    invoke-static/range {v5 .. v10}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
