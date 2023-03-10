.class public final Lf/i/a/a/h1/u0/l;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/d0;
.implements Lf/i/a/a/h1/u0/n$a;
.implements Lf/i/a/a/h1/u0/t/j$b;


# instance fields
.field public final a:Lf/i/a/a/h1/u0/i;

.field public final b:Lf/i/a/a/h1/u0/t/j;

.field public final c:Lf/i/a/a/h1/u0/h;

.field public final d:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lf/i/a/a/l1/b0;

.field public final f:Lf/i/a/a/h1/f0$a;

.field public final g:Lf/i/a/a/l1/e;

.field public final h:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lf/i/a/a/h1/k0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lf/i/a/a/h1/u0/q;

.field public final j:Lf/i/a/a/h1/v;

.field public final k:Z

.field public final l:Z

.field public m:Lf/i/a/a/h1/d0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:I

.field public o:Lf/i/a/a/h1/p0;

.field public p:[Lf/i/a/a/h1/u0/n;

.field public q:[Lf/i/a/a/h1/u0/n;

.field public r:[[I

.field public s:Lf/i/a/a/h1/l0;

.field public t:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/u0/t/j;Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/l1/e;Lf/i/a/a/h1/v;ZZ)V
    .locals 0
    .param p4    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/l;->a:Lf/i/a/a/h1/u0/i;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/u0/l;->c:Lf/i/a/a/h1/u0/h;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/u0/l;->d:Lf/i/a/a/l1/i0;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/u0/l;->e:Lf/i/a/a/l1/b0;

    .line 7
    iput-object p6, p0, Lf/i/a/a/h1/u0/l;->f:Lf/i/a/a/h1/f0$a;

    .line 8
    iput-object p7, p0, Lf/i/a/a/h1/u0/l;->g:Lf/i/a/a/l1/e;

    .line 9
    iput-object p8, p0, Lf/i/a/a/h1/u0/l;->j:Lf/i/a/a/h1/v;

    .line 10
    iput-boolean p9, p0, Lf/i/a/a/h1/u0/l;->k:Z

    .line 11
    iput-boolean p10, p0, Lf/i/a/a/h1/u0/l;->l:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lf/i/a/a/h1/l0;

    if-eqz p8, :cond_0

    .line 12
    new-instance p3, Lf/i/a/a/h1/t;

    invoke-direct {p3, p2}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 13
    iput-object p3, p0, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    .line 14
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lf/i/a/a/h1/u0/l;->h:Ljava/util/IdentityHashMap;

    .line 15
    new-instance p2, Lf/i/a/a/h1/u0/q;

    invoke-direct {p2}, Lf/i/a/a/h1/u0/q;-><init>()V

    iput-object p2, p0, Lf/i/a/a/h1/u0/l;->i:Lf/i/a/a/h1/u0/q;

    new-array p2, p1, [Lf/i/a/a/h1/u0/n;

    .line 16
    iput-object p2, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    new-array p2, p1, [Lf/i/a/a/h1/u0/n;

    .line 17
    iput-object p2, p0, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    new-array p1, p1, [[I

    .line 18
    iput-object p1, p0, Lf/i/a/a/h1/u0/l;->r:[[I

    .line 19
    invoke-virtual {p6}, Lf/i/a/a/h1/f0$a;->y()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method public static p(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 1
    iget-object v2, v1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 2
    iget v3, v1, Lf/i/a/a/b0;->v:I

    .line 3
    iget v5, v1, Lf/i/a/a/b0;->c:I

    .line 4
    iget v6, v1, Lf/i/a/a/b0;->d:I

    .line 5
    iget-object v7, v1, Lf/i/a/a/b0;->A:Ljava/lang/String;

    .line 6
    iget-object v1, v1, Lf/i/a/a/b0;->b:Ljava/lang/String;

    move-object v9, v1

    move-object v12, v2

    move v14, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lf/i/a/a/b0;->f:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 8
    iget v3, v0, Lf/i/a/a/b0;->v:I

    .line 9
    iget v2, v0, Lf/i/a/a/b0;->c:I

    .line 10
    iget v5, v0, Lf/i/a/a/b0;->d:I

    .line 11
    iget-object v6, v0, Lf/i/a/a/b0;->A:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Lf/i/a/a/b0;->b:Ljava/lang/String;

    move-object v12, v1

    move/from16 v17, v2

    move v14, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object v9, v7

    goto :goto_0

    :cond_1
    move-object v12, v1

    move-object v9, v2

    move-object/from16 v19, v9

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 13
    :goto_0
    invoke-static {v12}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p2, :cond_2

    .line 14
    iget v4, v0, Lf/i/a/a/b0;->e:I

    move v13, v4

    goto :goto_1

    :cond_2
    const/4 v13, -0x1

    .line 15
    :goto_1
    iget-object v8, v0, Lf/i/a/a/b0;->a:Ljava/lang/String;

    iget-object v10, v0, Lf/i/a/a/b0;->h:Ljava/lang/String;

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v19}, Lf/i/a/a/b0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {v0, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public b(JLf/i/a/a/s0;)J
    .locals 0

    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Landroid/net/Uri;J)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v6, v0, v4

    .line 2
    iget-object v6, v6, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    const/4 v7, 0x0

    .line 3
    :goto_1
    iget-object v8, v6, Lf/i/a/a/h1/u0/g;->e:[Landroid/net/Uri;

    array-length v9, v8

    const/4 v10, -0x1

    if-ge v7, v9, :cond_1

    .line 4
    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_2
    if-ne v7, v10, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v8, v6, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    invoke-interface {v8, v7}, Lf/i/a/a/j1/j;->r(I)I

    move-result v7

    if-ne v7, v10, :cond_3

    :goto_3
    goto :goto_4

    .line 6
    :cond_3
    iget-boolean v8, v6, Lf/i/a/a/h1/u0/g;->r:Z

    iget-object v9, v6, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    invoke-virtual {p1, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, v6, Lf/i/a/a/h1/u0/g;->r:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, p2, v8

    if-eqz v10, :cond_5

    .line 7
    iget-object v6, v6, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    .line 8
    invoke-interface {v6, v7, p2, p3}, Lf/i/a/a/j1/j;->a(IJ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_6
    iget-object p1, p0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return v5
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->o:Lf/i/a/a/h1/p0;

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 3
    iget-boolean v3, v2, Lf/i/a/a/h1/u0/n;->z:Z

    if-nez v3, :cond_0

    .line 4
    iget-wide v3, v2, Lf/i/a/a/h1/u0/n;->L:J

    invoke-virtual {v2, v3, v4}, Lf/i/a/a/h1/u0/n;->f(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->f(J)Z

    move-result p1

    return p1
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->g(J)V

    return-void
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/h1/u0/n;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 1
    array-length v3, v1

    new-array v14, v3, [I

    .line 2
    array-length v3, v1

    new-array v15, v3, [I

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    const/4 v10, -0x1

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lf/i/a/a/h1/u0/l;->h:Ljava/util/IdentityHashMap;

    aget-object v5, v2, v3

    .line 5
    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    aput v4, v14, v3

    .line 6
    aput v10, v15, v3

    .line 7
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, v1, v3

    invoke-interface {v4}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    :goto_2
    iget-object v6, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 10
    aget-object v6, v6, v5

    .line 11
    iget-object v6, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 12
    invoke-virtual {v6, v4}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 13
    aput v5, v15, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, v0, Lf/i/a/a/h1/u0/l;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 15
    array-length v8, v1

    new-array v9, v8, [Lf/i/a/a/h1/k0;

    .line 16
    array-length v6, v1

    new-array v7, v6, [Lf/i/a/a/h1/k0;

    .line 17
    array-length v4, v1

    new-array v5, v4, [Lf/i/a/a/j1/j;

    .line 18
    iget-object v3, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v3, v3

    new-array v3, v3, [Lf/i/a/a/h1/u0/n;

    move/from16 v16, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 19
    :goto_4
    iget-object v11, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v11, v11

    if-ge v8, v11, :cond_29

    const/4 v11, 0x0

    .line 20
    :goto_5
    array-length v10, v1

    if-ge v11, v10, :cond_6

    .line 21
    aget v10, v14, v11

    if-ne v10, v8, :cond_4

    aget-object v10, v2, v11

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    aput-object v10, v7, v11

    .line 22
    aget v10, v15, v11

    if-ne v10, v8, :cond_5

    aget-object v10, v1, v11

    goto :goto_7

    :cond_5
    const/4 v10, 0x0

    :goto_7
    aput-object v10, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 23
    :cond_6
    iget-object v10, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    aget-object v11, v10, v8

    .line 24
    iget-boolean v10, v11, Lf/i/a/a/h1/u0/n;->z:Z

    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 25
    iget v10, v11, Lf/i/a/a/h1/u0/n;->A:I

    move-object/from16 v22, v3

    move/from16 v23, v8

    const/4 v3, 0x0

    :goto_8
    const/4 v8, 0x1

    if-ge v3, v4, :cond_a

    .line 26
    aget-object v24, v7, v3

    if-eqz v24, :cond_9

    aget-object v24, v5, v3

    if-eqz v24, :cond_7

    aget-boolean v24, p2, v3

    if-nez v24, :cond_9

    :cond_7
    move/from16 v24, v6

    .line 27
    iget v6, v11, Lf/i/a/a/h1/u0/n;->A:I

    sub-int/2addr v6, v8

    iput v6, v11, Lf/i/a/a/h1/u0/n;->A:I

    .line 28
    aget-object v6, v7, v3

    check-cast v6, Lf/i/a/a/h1/u0/m;

    .line 29
    iget v8, v6, Lf/i/a/a/h1/u0/m;->c:I

    move-object/from16 v25, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 30
    iget-object v8, v6, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    iget v9, v6, Lf/i/a/a/h1/u0/m;->a:I

    .line 31
    iget-object v2, v8, Lf/i/a/a/h1/u0/n;->G:[I

    aget v2, v2, v9

    .line 32
    iget-object v9, v8, Lf/i/a/a/h1/u0/n;->J:[Z

    aget-boolean v9, v9, v2

    invoke-static {v9}, Lc/a/a/b/g/h;->v(Z)V

    .line 33
    iget-object v8, v8, Lf/i/a/a/h1/u0/n;->J:[Z

    const/16 v19, 0x0

    aput-boolean v19, v8, v2

    const/4 v2, -0x1

    .line 34
    iput v2, v6, Lf/i/a/a/h1/u0/m;->c:I

    goto :goto_9

    :cond_8
    const/16 v19, 0x0

    :goto_9
    const/4 v2, 0x0

    .line 35
    aput-object v2, v7, v3

    goto :goto_a

    :cond_9
    move/from16 v24, v6

    move-object/from16 v25, v9

    const/16 v19, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move/from16 v6, v24

    move-object/from16 v9, v25

    goto :goto_8

    :cond_a
    move/from16 v24, v6

    move-object/from16 v25, v9

    const/16 v19, 0x0

    if-nez v18, :cond_d

    .line 36
    iget-boolean v2, v11, Lf/i/a/a/h1/u0/n;->O:Z

    if-eqz v2, :cond_b

    if-nez v10, :cond_c

    goto :goto_b

    :cond_b
    iget-wide v2, v11, Lf/i/a/a/h1/u0/n;->L:J

    cmp-long v6, v12, v2

    if-eqz v6, :cond_c

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v2, 0x1

    .line 37
    :goto_c
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 38
    iget-object v3, v3, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    move-object v10, v3

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_13

    .line 39
    aget-object v9, v5, v6

    if-nez v9, :cond_e

    move/from16 v27, v4

    goto :goto_e

    .line 40
    :cond_e
    iget-object v8, v11, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    move/from16 v27, v4

    invoke-interface {v9}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v4

    invoke-virtual {v8, v4}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v4

    .line 41
    iget v8, v11, Lf/i/a/a/h1/u0/n;->H:I

    if-ne v4, v8, :cond_f

    .line 42
    iget-object v8, v11, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 43
    iput-object v9, v8, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    move-object v10, v9

    .line 44
    :cond_f
    aget-object v8, v7, v6

    if-nez v8, :cond_12

    .line 45
    iget v8, v11, Lf/i/a/a/h1/u0/n;->A:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v11, Lf/i/a/a/h1/u0/n;->A:I

    .line 46
    new-instance v8, Lf/i/a/a/h1/u0/m;

    invoke-direct {v8, v11, v4}, Lf/i/a/a/h1/u0/m;-><init>(Lf/i/a/a/h1/u0/n;I)V

    aput-object v8, v7, v6

    .line 47
    aput-boolean v9, p4, v6

    .line 48
    iget-object v8, v11, Lf/i/a/a/h1/u0/n;->G:[I

    if-eqz v8, :cond_10

    .line 49
    aget-object v8, v7, v6

    check-cast v8, Lf/i/a/a/h1/u0/m;

    invoke-virtual {v8}, Lf/i/a/a/h1/u0/m;->b()V

    .line 50
    :cond_10
    iget-boolean v8, v11, Lf/i/a/a/h1/u0/n;->y:Z

    if-eqz v8, :cond_12

    if-nez v2, :cond_12

    .line 51
    iget-object v2, v11, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    iget-object v8, v11, Lf/i/a/a/h1/u0/n;->G:[I

    aget v4, v8, v4

    aget-object v2, v2, v4

    .line 52
    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->v()V

    const/4 v4, 0x1

    .line 53
    invoke-virtual {v2, v12, v13, v4, v4}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_11

    .line 54
    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->m()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_f

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v9, -0x1

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v27

    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    move/from16 v27, v4

    const/4 v9, -0x1

    .line 55
    iget v4, v11, Lf/i/a/a/h1/u0/n;->A:I

    if-nez v4, :cond_16

    .line 56
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    const/4 v4, 0x0

    .line 57
    iput-object v4, v3, Lf/i/a/a/h1/u0/g;->m:Ljava/io/IOException;

    .line 58
    iput-object v4, v11, Lf/i/a/a/h1/u0/n;->C:Lf/i/a/a/b0;

    const/4 v8, 0x1

    .line 59
    iput-boolean v8, v11, Lf/i/a/a/h1/u0/n;->N:Z

    .line 60
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {v3}, Lf/i/a/a/l1/c0;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 62
    iget-boolean v3, v11, Lf/i/a/a/h1/u0/n;->y:Z

    if-eqz v3, :cond_14

    .line 63
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v4, :cond_14

    aget-object v10, v3, v6

    .line 64
    invoke-virtual {v10}, Lf/i/a/a/h1/j0;->j()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 65
    :cond_14
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {v3}, Lf/i/a/a/l1/c0;->b()V

    goto :goto_11

    .line 66
    :cond_15
    invoke-virtual {v11}, Lf/i/a/a/h1/u0/n;->E()V

    :goto_11
    move v8, v2

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v30, v22

    move/from16 v36, v23

    move/from16 v2, v24

    move-object/from16 v35, v25

    move/from16 v22, v27

    const/16 v20, -0x1

    move-object/from16 v27, v5

    move-object/from16 v24, v7

    goto/16 :goto_16

    :cond_16
    const/4 v8, 0x1

    .line 67
    iget-object v4, v11, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 68
    invoke-static {v10, v3}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 69
    iget-boolean v3, v11, Lf/i/a/a/h1/u0/n;->O:Z

    if-nez v3, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v6, v12, v3

    if-gez v6, :cond_17

    neg-long v3, v12

    :cond_17
    move-wide/from16 v20, v3

    .line 70
    invoke-virtual {v11}, Lf/i/a/a/h1/u0/n;->w()Lf/i/a/a/h1/u0/k;

    move-result-object v6

    .line 71
    iget-object v3, v11, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 72
    invoke-virtual {v3, v6, v12, v13}, Lf/i/a/a/h1/u0/g;->a(Lf/i/a/a/h1/u0/k;J)[Lf/i/a/a/h1/s0/m;

    move-result-object v26

    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    iget-object v4, v11, Lf/i/a/a/h1/u0/n;->k:Ljava/util/List;

    move-object/from16 v30, v22

    move-object v3, v10

    move-object/from16 v31, v4

    move/from16 v22, v27

    move-object/from16 v27, v5

    move-wide/from16 v4, p5

    move/from16 v32, v2

    move-object/from16 v33, v14

    move/from16 v2, v24

    move-object v14, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v20

    move/from16 v34, v16

    move/from16 v36, v23

    move-object/from16 v35, v25

    const/4 v0, 0x1

    const/16 v16, -0x1

    move-wide/from16 v8, v28

    move-object/from16 v16, v10

    const/16 v20, -0x1

    move-object/from16 v10, v31

    move-object v0, v11

    move-object/from16 v11, v26

    invoke-interface/range {v3 .. v11}, Lf/i/a/a/j1/j;->h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V

    .line 74
    iget-object v3, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 75
    iget-object v3, v3, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    .line 76
    iget-object v4, v14, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    invoke-virtual {v3, v4}, Lf/i/a/a/h1/o0;->a(Lf/i/a/a/b0;)I

    move-result v3

    .line 77
    invoke-interface/range {v16 .. v16}, Lf/i/a/a/j1/j;->i()I

    move-result v4

    if-eq v4, v3, :cond_18

    goto :goto_12

    :cond_18
    const/4 v11, 0x0

    goto :goto_13

    :cond_19
    move/from16 v32, v2

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v30, v22

    move/from16 v36, v23

    move/from16 v2, v24

    move-object/from16 v35, v25

    move/from16 v22, v27

    const/16 v20, -0x1

    move-object/from16 v27, v5

    move-object/from16 v24, v7

    :goto_12
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_1b

    const/4 v3, 0x1

    .line 78
    iput-boolean v3, v0, Lf/i/a/a/h1/u0/n;->N:Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_14

    :cond_1a
    move/from16 v32, v2

    move-object v0, v11

    move-object/from16 v33, v14

    move/from16 v34, v16

    move-object/from16 v30, v22

    move/from16 v36, v23

    move/from16 v2, v24

    move-object/from16 v35, v25

    move/from16 v22, v27

    const/16 v20, -0x1

    move-object/from16 v27, v5

    move-object/from16 v24, v7

    :cond_1b
    move/from16 v3, v18

    move/from16 v8, v32

    :goto_14
    if-eqz v8, :cond_1d

    .line 79
    invoke-virtual {v0, v12, v13, v3}, Lf/i/a/a/h1/u0/n;->F(JZ)Z

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v2, :cond_1d

    .line 80
    aget-object v3, v24, v11

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 81
    aput-boolean v3, p4, v11

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 82
    :cond_1d
    :goto_16
    iget-object v3, v0, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v2, :cond_1f

    .line 83
    aget-object v3, v24, v11

    if-eqz v3, :cond_1e

    .line 84
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    check-cast v3, Lf/i/a/a/h1/u0/m;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1f
    const/4 v3, 0x1

    .line 85
    iput-boolean v3, v0, Lf/i/a/a/h1/u0/n;->O:Z

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 86
    :goto_18
    array-length v5, v1

    if-ge v11, v5, :cond_24

    .line 87
    aget v5, v15, v11

    move/from16 v6, v36

    if-ne v5, v6, :cond_21

    .line 88
    aget-object v4, v24, v11

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_19

    :cond_20
    const/4 v4, 0x0

    :goto_19
    invoke-static {v4}, Lc/a/a/b/g/h;->v(Z)V

    .line 89
    aget-object v4, v24, v11

    move-object/from16 v5, v35

    aput-object v4, v5, v11

    const/4 v7, 0x1

    move-object/from16 v3, p0

    .line 90
    iget-object v4, v3, Lf/i/a/a/h1/u0/l;->h:Ljava/util/IdentityHashMap;

    aget-object v9, v24, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_1b

    :cond_21
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, v35

    .line 91
    aget v9, v33, v11

    if-ne v9, v6, :cond_23

    .line 92
    aget-object v9, v24, v11

    if-nez v9, :cond_22

    const/4 v9, 0x1

    goto :goto_1a

    :cond_22
    const/4 v9, 0x0

    :goto_1a
    invoke-static {v9}, Lc/a/a/b/g/h;->v(Z)V

    :cond_23
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v35, v5

    move/from16 v36, v6

    const/4 v3, 0x1

    goto :goto_18

    :cond_24
    move-object/from16 v3, p0

    move-object/from16 v5, v35

    move/from16 v6, v36

    const/4 v7, 0x1

    if-eqz v4, :cond_27

    move/from16 v11, v17

    move-object/from16 v4, v30

    .line 93
    aput-object v0, v4, v11

    add-int/lit8 v17, v11, 0x1

    if-nez v11, :cond_26

    .line 94
    iget-object v9, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 95
    iput-boolean v7, v9, Lf/i/a/a/h1/u0/g;->k:Z

    if-nez v8, :cond_25

    .line 96
    iget-object v8, v3, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    array-length v9, v8

    if-eqz v9, :cond_25

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eq v0, v8, :cond_28

    goto :goto_1c

    :cond_25
    const/4 v9, 0x0

    .line 97
    :goto_1c
    iget-object v0, v3, Lf/i/a/a/h1/u0/l;->i:Lf/i/a/a/h1/u0/q;

    .line 98
    iget-object v0, v0, Lf/i/a/a/h1/u0/q;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/16 v18, 0x1

    goto :goto_1d

    :cond_26
    const/4 v9, 0x0

    .line 99
    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 100
    iput-boolean v9, v0, Lf/i/a/a/h1/u0/g;->k:Z

    goto :goto_1d

    :cond_27
    move/from16 v11, v17

    move-object/from16 v4, v30

    const/4 v9, 0x0

    :cond_28
    :goto_1d
    add-int/lit8 v8, v6, 0x1

    move v6, v2

    move-object v0, v3

    move-object v3, v4

    move-object v9, v5

    move/from16 v4, v22

    move-object/from16 v7, v24

    move-object/from16 v5, v27

    move-object/from16 v14, v33

    move/from16 v16, v34

    const/4 v10, -0x1

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_29
    move-object v4, v3

    move-object v5, v9

    move/from16 v6, v16

    move/from16 v11, v17

    const/4 v9, 0x0

    move-object v3, v0

    move-object v0, v2

    .line 101
    invoke-static {v5, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/h1/u0/n;

    iput-object v0, v3, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    .line 103
    iget-object v1, v3, Lf/i/a/a/h1/u0/l;->j:Lf/i/a/a/h1/v;

    if-eqz v1, :cond_2a

    .line 104
    new-instance v1, Lf/i/a/a/h1/t;

    invoke-direct {v1, v0}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 105
    iput-object v1, v3, Lf/i/a/a/h1/u0/l;->s:Lf/i/a/a/h1/l0;

    return-wide v12

    :cond_2a
    const/4 v0, 0x0

    .line 106
    throw v0
.end method

.method public final k(I[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/b0;Ljava/util/List;Ljava/util/Map;J)Lf/i/a/a/h1/u0/n;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Lf/i/a/a/b0;",
            "Lf/i/a/a/b0;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/z0/e;",
            ">;J)",
            "Lf/i/a/a/h1/u0/n;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    new-instance v9, Lf/i/a/a/h1/u0/g;

    iget-object v1, v11, Lf/i/a/a/h1/u0/l;->a:Lf/i/a/a/h1/u0/i;

    iget-object v2, v11, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    iget-object v5, v11, Lf/i/a/a/h1/u0/l;->c:Lf/i/a/a/h1/u0/h;

    iget-object v6, v11, Lf/i/a/a/h1/u0/l;->d:Lf/i/a/a/l1/i0;

    iget-object v7, v11, Lf/i/a/a/h1/u0/l;->i:Lf/i/a/a/h1/u0/q;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lf/i/a/a/h1/u0/g;-><init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/u0/t/j;[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/i0;Lf/i/a/a/h1/u0/q;Ljava/util/List;)V

    .line 2
    new-instance v12, Lf/i/a/a/h1/u0/n;

    iget-object v5, v11, Lf/i/a/a/h1/u0/l;->g:Lf/i/a/a/l1/e;

    iget-object v10, v11, Lf/i/a/a/h1/u0/l;->e:Lf/i/a/a/l1/b0;

    iget-object v13, v11, Lf/i/a/a/h1/u0/l;->f:Lf/i/a/a/h1/f0$a;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lf/i/a/a/h1/u0/n;-><init>(ILf/i/a/a/h1/u0/n$a;Lf/i/a/a/h1/u0/g;Ljava/util/Map;Lf/i/a/a/l1/e;JLf/i/a/a/b0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;)V

    return-object v12
.end method

.method public l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/l;->t:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->f:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->B()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/l;->t:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public m(Lf/i/a/a/h1/d0$a;J)V
    .locals 33

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1
    iput-object v0, v9, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    .line 2
    iget-object v0, v9, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, v9, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    .line 5
    iget-object v10, v0, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    .line 6
    invoke-static {v10}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v0, v9, Lf/i/a/a/h1/u0/l;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v10, Lf/i/a/a/h1/u0/t/e;->k:Ljava/util/List;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 11
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/z0/e;

    .line 12
    iget-object v7, v6, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    move v8, v5

    .line 13
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_4

    .line 14
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/i/a/a/z0/e;

    .line 15
    iget-object v12, v11, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    invoke-static {v12, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 16
    iget-object v12, v6, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-eqz v12, :cond_1

    iget-object v13, v11, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 17
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v12, 0x1

    .line 18
    :goto_3
    invoke-static {v12}, Lc/a/a/b/g/h;->v(Z)V

    .line 19
    iget-object v12, v6, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    iget-object v12, v11, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    .line 20
    :goto_4
    iget-object v6, v6, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    iget-object v11, v11, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    .line 21
    invoke-static {v6, v11}, Lf/i/a/a/m1/h0;->b0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lf/i/a/a/z0/e$b;

    .line 22
    new-instance v11, Lf/i/a/a/z0/e;

    .line 23
    invoke-direct {v11, v12, v2, v6}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    .line 24
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v6, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_6
    move-object v11, v4

    .line 27
    iget-object v0, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 28
    iget-object v12, v10, Lf/i/a/a/h1/u0/t/e;->f:Ljava/util/List;

    .line 29
    iget-object v13, v10, Lf/i/a/a/h1/u0/t/e;->g:Ljava/util/List;

    .line 30
    iput v1, v9, Lf/i/a/a/h1/u0/l;->n:I

    .line 31
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1b

    .line 33
    iget-object v0, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 34
    :goto_5
    iget-object v6, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v3, v6, :cond_a

    .line 35
    iget-object v6, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/h1/u0/t/e$b;

    .line 36
    iget-object v6, v6, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    .line 37
    iget v8, v6, Lf/i/a/a/b0;->o:I

    if-gtz v8, :cond_9

    iget-object v8, v6, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v8, v7}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_6

    .line 38
    :cond_7
    iget-object v6, v6, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v6, v2}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 39
    aput v2, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, -0x1

    .line 40
    aput v6, v1, v3

    goto :goto_7

    .line 41
    :cond_9
    :goto_6
    aput v7, v1, v3

    add-int/lit8 v4, v4, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    if-lez v4, :cond_b

    const/4 v0, 0x1

    move v0, v4

    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    if-ge v5, v0, :cond_c

    sub-int/2addr v0, v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_8
    move v7, v0

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x0

    goto :goto_8

    .line 42
    :goto_a
    new-array v4, v7, [Landroid/net/Uri;

    .line 43
    new-array v8, v7, [Lf/i/a/a/b0;

    .line 44
    new-array v6, v7, [I

    const/4 v0, 0x0

    const/4 v5, 0x0

    move/from16 p1, v7

    .line 45
    :goto_b
    iget-object v7, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_10

    if-eqz v2, :cond_d

    .line 46
    aget v7, v1, v0

    move/from16 v16, v2

    const/4 v2, 0x2

    if-ne v7, v2, :cond_f

    goto :goto_c

    :cond_d
    move/from16 v16, v2

    :goto_c
    if-eqz v3, :cond_e

    aget v2, v1, v0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_f

    .line 47
    :cond_e
    iget-object v2, v10, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/t/e$b;

    .line 48
    iget-object v7, v2, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    aput-object v7, v4, v5

    .line 49
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    aput-object v2, v8, v5

    add-int/lit8 v2, v5, 0x1

    .line 50
    aput v0, v6, v5

    move v5, v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    .line 51
    aget-object v0, v8, v0

    iget-object v7, v0, Lf/i/a/a/b0;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iget-object v5, v10, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    iget-object v3, v10, Lf/i/a/a/h1/u0/t/e;->i:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v4

    move-object/from16 v16, v3

    move-object v3, v8

    move-object v4, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    move-object v6, v11

    move-object/from16 v18, v8

    move-object/from16 v16, v13

    move/from16 v13, p1

    move-object/from16 p1, v11

    move-object v11, v7

    move-wide/from16 v7, p2

    .line 53
    invoke-virtual/range {v0 .. v8}, Lf/i/a/a/h1/u0/l;->k(I[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/b0;Ljava/util/List;Ljava/util/Map;J)Lf/i/a/a/h1/u0/n;

    move-result-object v0

    .line 54
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    .line 55
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-boolean v1, v9, Lf/i/a/a/h1/u0/l;->k:Z

    if-eqz v1, :cond_1a

    if-eqz v11, :cond_1a

    const/4 v1, 0x2

    .line 57
    invoke-static {v11, v1}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x1

    .line 58
    invoke-static {v11, v2}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    .line 59
    :goto_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_16

    .line 60
    new-array v1, v13, [Lf/i/a/a/b0;

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v13, :cond_13

    .line 61
    aget-object v5, v18, v4

    .line 62
    iget-object v6, v5, Lf/i/a/a/b0;->f:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 63
    invoke-static/range {v23 .. v23}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 64
    iget-object v6, v5, Lf/i/a/a/b0;->a:Ljava/lang/String;

    iget-object v7, v5, Lf/i/a/a/b0;->b:Ljava/lang/String;

    iget-object v8, v5, Lf/i/a/a/b0;->h:Ljava/lang/String;

    iget v11, v5, Lf/i/a/a/b0;->e:I

    iget v9, v5, Lf/i/a/a/b0;->n:I

    move-object/from16 v17, v14

    iget v14, v5, Lf/i/a/a/b0;->o:I

    move-object/from16 v31, v15

    iget v15, v5, Lf/i/a/a/b0;->p:F

    move-object/from16 v32, v12

    iget v12, v5, Lf/i/a/a/b0;->c:I

    iget v5, v5, Lf/i/a/a/b0;->d:I

    const/16 v28, 0x0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v24, v11

    move/from16 v25, v9

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v29, v12

    move/from16 v30, v5

    invoke-static/range {v19 .. v30}, Lf/i/a/a/b0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lf/i/a/a/b0;

    move-result-object v5

    .line 65
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p0

    move-object/from16 v14, v17

    move-object/from16 v15, v31

    move-object/from16 v12, v32

    goto :goto_f

    :cond_13
    move-object/from16 v32, v12

    move-object/from16 v17, v14

    move-object/from16 v31, v15

    .line 66
    new-instance v4, Lf/i/a/a/h1/o0;

    invoke-direct {v4, v1}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_15

    .line 67
    iget-object v1, v10, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    if-nez v1, :cond_14

    iget-object v1, v10, Lf/i/a/a/h1/u0/t/e;->f:Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 69
    :cond_14
    new-instance v1, Lf/i/a/a/h1/o0;

    const/4 v2, 0x1

    new-array v2, v2, [Lf/i/a/a/b0;

    const/4 v4, 0x0

    aget-object v5, v18, v4

    iget-object v6, v10, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    .line 70
    invoke-static {v5, v6, v4}, Lf/i/a/a/h1/u0/l;->p(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {v1, v2}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    .line 71
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_15
    iget-object v1, v10, Lf/i/a/a/h1/u0/t/e;->i:Ljava/util/List;

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    .line 73
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    .line 74
    new-instance v4, Lf/i/a/a/h1/o0;

    const/4 v5, 0x1

    new-array v5, v5, [Lf/i/a/a/b0;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/b0;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v32, v12

    move-object/from16 v17, v14

    move-object/from16 v31, v15

    if-eqz v2, :cond_19

    .line 75
    new-array v1, v13, [Lf/i/a/a/b0;

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v13, :cond_17

    .line 76
    aget-object v4, v18, v2

    iget-object v5, v10, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    const/4 v6, 0x1

    .line 77
    invoke-static {v4, v5, v6}, Lf/i/a/a/h1/u0/l;->p(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_17
    const/4 v2, 0x1

    .line 78
    new-instance v4, Lf/i/a/a/h1/o0;

    invoke-direct {v4, v1}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const/4 v1, 0x1

    .line 79
    new-instance v2, Lf/i/a/a/h1/o0;

    new-array v1, v1, [Lf/i/a/a/b0;

    const/4 v4, 0x0

    const-string v5, "ID3"

    const-string v6, "application/id3"

    const/4 v7, -0x1

    .line 80
    invoke-static {v5, v6, v4, v7, v4}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-direct {v2, v1}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lf/i/a/a/h1/p0;

    new-array v4, v5, [Lf/i/a/a/h1/o0;

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lf/i/a/a/h1/o0;

    invoke-direct {v1, v3}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    new-instance v3, Lf/i/a/a/h1/p0;

    const/4 v4, 0x1

    new-array v4, v4, [Lf/i/a/a/h1/o0;

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    .line 84
    invoke-virtual {v0, v1, v5, v3}, Lf/i/a/a/h1/u0/n;->D(Lf/i/a/a/h1/p0;ILf/i/a/a/h1/p0;)V

    goto :goto_13

    .line 85
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-static {v1, v11}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v32, v12

    goto :goto_12

    :cond_1b
    move-object/from16 p1, v11

    move-object/from16 v32, v12

    move-object/from16 v16, v13

    :goto_12
    move-object/from16 v17, v14

    move-object/from16 v31, v15

    .line 86
    :goto_13
    new-instance v9, Ljava/util/ArrayList;

    .line 87
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    new-instance v10, Ljava/util/ArrayList;

    .line 89
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    new-instance v11, Ljava/util/ArrayList;

    .line 91
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 93
    :goto_14
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_21

    move-object/from16 v14, v32

    .line 94
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u0/t/e$a;

    iget-object v0, v0, Lf/i/a/a/h1/u0/t/e$a;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v6, p0

    move-object/from16 v8, v17

    move-object/from16 v7, v31

    goto/16 :goto_17

    .line 96
    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v15, 0x1

    .line 99
    :goto_15
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 100
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/t/e$a;

    iget-object v2, v2, Lf/i/a/a/h1/u0/t/e$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 101
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/t/e$a;

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, v2, Lf/i/a/a/h1/u0/t/e$a;->a:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, v2, Lf/i/a/a/h1/u0/t/e$a;->b:Lf/i/a/a/b0;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/e$a;->b:Lf/i/a/a/b0;

    iget-object v2, v2, Lf/i/a/a/b0;->f:Ljava/lang/String;

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_16

    :cond_1d
    const/4 v2, 0x0

    :goto_16
    and-int/2addr v2, v15

    move v15, v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1f
    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v0, [Landroid/net/Uri;

    .line 106
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    new-array v0, v0, [Lf/i/a/a/b0;

    .line 107
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lf/i/a/a/b0;

    const/4 v4, 0x0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    .line 109
    invoke-virtual/range {v0 .. v8}, Lf/i/a/a/h1/u0/l;->k(I[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/b0;Ljava/util/List;Ljava/util/Map;J)Lf/i/a/a/h1/u0/n;

    move-result-object v0

    .line 110
    invoke-static {v11}, Lf/i/a/a/m1/h0;->o0(Ljava/util/List;)[I

    move-result-object v1

    move-object/from16 v7, v31

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    .line 111
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p0

    .line 112
    iget-boolean v1, v6, Lf/i/a/a/h1/u0/l;->k:Z

    if-eqz v1, :cond_20

    if-eqz v15, :cond_20

    const/4 v1, 0x0

    new-array v2, v1, [Lf/i/a/a/b0;

    .line 113
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lf/i/a/a/b0;

    .line 114
    new-instance v3, Lf/i/a/a/h1/p0;

    const/4 v4, 0x1

    new-array v4, v4, [Lf/i/a/a/h1/o0;

    new-instance v5, Lf/i/a/a/h1/o0;

    invoke-direct {v5, v2}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v5, v4, v1

    invoke-direct {v3, v4}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    sget-object v2, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    invoke-virtual {v0, v3, v1, v2}, Lf/i/a/a/h1/u0/n;->D(Lf/i/a/a/h1/p0;ILf/i/a/a/h1/p0;)V

    :cond_20
    :goto_17
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v31, v7

    move-object/from16 v17, v8

    move-object/from16 v32, v14

    goto/16 :goto_14

    :cond_21
    move-object/from16 v6, p0

    move-object/from16 v8, v17

    move-object/from16 v7, v31

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 115
    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_22

    move-object/from16 v10, v16

    .line 116
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lf/i/a/a/h1/u0/t/e$a;

    const/4 v1, 0x3

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/net/Uri;

    .line 117
    iget-object v3, v11, Lf/i/a/a/h1/u0/t/e$a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Lf/i/a/a/b0;

    iget-object v0, v11, Lf/i/a/a/h1/u0/t/e$a;->b:Lf/i/a/a/b0;

    aput-object v0, v3, v4

    const/4 v4, 0x0

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v12, v6

    move-object/from16 v6, p1

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, p2

    .line 119
    invoke-virtual/range {v0 .. v8}, Lf/i/a/a/h1/u0/l;->k(I[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/b0;Ljava/util/List;Ljava/util/Map;J)Lf/i/a/a/h1/u0/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    .line 120
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lf/i/a/a/h1/p0;

    new-array v4, v1, [Lf/i/a/a/h1/o0;

    new-instance v5, Lf/i/a/a/h1/o0;

    new-array v1, v1, [Lf/i/a/a/b0;

    iget-object v6, v11, Lf/i/a/a/h1/u0/t/e$a;->b:Lf/i/a/a/b0;

    aput-object v6, v1, v3

    invoke-direct {v5, v1}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v5, v4, v3

    invoke-direct {v2, v4}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    sget-object v1, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    invoke-virtual {v0, v2, v3, v1}, Lf/i/a/a/h1/u0/n;->D(Lf/i/a/a/h1/p0;ILf/i/a/a/h1/p0;)V

    add-int/lit8 v9, v9, 0x1

    move-object v6, v12

    move-object v8, v13

    move-object v7, v14

    goto :goto_18

    :cond_22
    move-object v12, v6

    move-object v14, v7

    move-object v13, v8

    const/4 v0, 0x0

    new-array v1, v0, [Lf/i/a/a/h1/u0/n;

    .line 123
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lf/i/a/a/h1/u0/n;

    iput-object v1, v12, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    new-array v1, v0, [[I

    .line 124
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v12, Lf/i/a/a/h1/u0/l;->r:[[I

    .line 125
    iget-object v1, v12, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v2, v1

    iput v2, v12, Lf/i/a/a/h1/u0/l;->n:I

    .line 126
    aget-object v0, v1, v0

    .line 127
    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    const/4 v2, 0x1

    .line 128
    iput-boolean v2, v0, Lf/i/a/a/h1/u0/g;->k:Z

    .line 129
    array-length v0, v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_24

    aget-object v3, v1, v2

    .line 130
    iget-boolean v4, v3, Lf/i/a/a/h1/u0/n;->z:Z

    if-nez v4, :cond_23

    .line 131
    iget-wide v4, v3, Lf/i/a/a/h1/u0/n;->L:J

    invoke-virtual {v3, v4, v5}, Lf/i/a/a/h1/u0/n;->f(J)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 132
    :cond_24
    iget-object v0, v12, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    iput-object v0, v12, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    return-void
.end method

.method public n(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/j;",
            ">;)",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    check-cast v1, Lf/i/a/a/h1/u0/t/c;

    .line 2
    iget-object v1, v1, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    .line 3
    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 5
    iget-object v4, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v4, v4

    iget-object v5, v1, Lf/i/a/a/h1/u0/t/e;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget-object v6, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    aget-object v6, v6, v5

    .line 7
    iget-object v7, v0, Lf/i/a/a/h1/u0/l;->r:[[I

    aget-object v7, v7, v5

    .line 8
    iget-object v8, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 9
    iget v6, v6, Lf/i/a/a/h1/u0/n;->H:I

    goto :goto_0

    :cond_0
    new-array v7, v5, [I

    .line 10
    sget-object v8, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    const/4 v6, 0x0

    .line 11
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/i/a/a/j1/j;

    .line 13
    invoke-interface {v13}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v14

    .line 14
    invoke-virtual {v8, v14}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    if-ne v15, v6, :cond_2

    const/4 v3, 0x0

    .line 15
    :goto_2
    invoke-interface {v13}, Lf/i/a/a/j1/j;->length()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 16
    invoke-interface {v13, v3}, Lf/i/a/a/j1/j;->e(I)I

    move-result v12

    aget v12, v7, v12

    .line 17
    new-instance v14, Lf/i/a/a/e1/c0;

    .line 18
    invoke-direct {v14, v5, v5, v12}, Lf/i/a/a/e1/c0;-><init>(III)V

    .line 19
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move/from16 v16, v2

    const/4 v12, 0x1

    goto :goto_6

    :cond_2
    move/from16 v16, v2

    const/4 v11, 0x1

    goto :goto_6

    :cond_3
    move v15, v2

    .line 20
    :goto_3
    iget-object v5, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v3, v5

    if-ge v15, v3, :cond_6

    .line 21
    aget-object v3, v5, v15

    .line 22
    iget-object v3, v3, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 23
    invoke-virtual {v3, v14}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    if-ge v15, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x2

    .line 24
    :goto_4
    iget-object v5, v0, Lf/i/a/a/h1/u0/l;->r:[[I

    aget-object v5, v5, v15

    const/4 v14, 0x0

    .line 25
    :goto_5
    invoke-interface {v13}, Lf/i/a/a/j1/j;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 26
    invoke-interface {v13, v14}, Lf/i/a/a/j1/j;->e(I)I

    move-result v15

    aget v15, v5, v15

    .line 27
    new-instance v0, Lf/i/a/a/e1/c0;

    move/from16 v16, v2

    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v2, v3, v15}, Lf/i/a/a/e1/c0;-><init>(III)V

    .line 29
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    goto :goto_5

    :cond_5
    move/from16 v16, v2

    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_6
    move/from16 v16, v2

    :goto_6
    move-object/from16 v0, p0

    move/from16 v2, v16

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v11, :cond_a

    if-nez v12, :cond_a

    const/4 v0, 0x0

    .line 30
    aget v2, v7, v0

    .line 31
    iget-object v3, v1, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    aget v4, v7, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v0, v0, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    iget v0, v0, Lf/i/a/a/b0;->e:I

    const/4 v3, 0x1

    .line 32
    :goto_7
    array-length v4, v7

    if-ge v3, v4, :cond_9

    .line 33
    iget-object v4, v1, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    aget v5, v7, v3

    .line 34
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v4, v4, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    iget v4, v4, Lf/i/a/a/b0;->e:I

    if-ge v4, v0, :cond_8

    .line 35
    aget v0, v7, v3

    move v2, v0

    move v0, v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 36
    :cond_9
    new-instance v0, Lf/i/a/a/e1/c0;

    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1, v1, v2}, Lf/i/a/a/e1/c0;-><init>(III)V

    .line 38
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v9
.end method

.method public o()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->o:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public q()V
    .locals 11

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/l;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/i/a/a/h1/u0/l;->n:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    iget-object v5, v5, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 4
    iget v5, v5, Lf/i/a/a/h1/p0;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array v0, v4, [Lf/i/a/a/h1/o0;

    .line 6
    iget-object v1, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 7
    iget-object v7, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 8
    iget v7, v7, Lf/i/a/a/h1/p0;->a:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 9
    iget-object v10, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 10
    iget-object v10, v10, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v10, v10, v8

    .line 11
    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Lf/i/a/a/h1/p0;

    invoke-direct {v1, v0}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    iput-object v1, p0, Lf/i/a/a/h1/u0/l;->o:Lf/i/a/a/h1/p0;

    .line 13
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {v0, p0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    return-void
.end method

.method public s()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lf/i/a/a/h1/u0/n;->B()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, v4, Lf/i/a/a/h1/u0/n;->y:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, v4, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 4
    iget-object v7, v4, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v7, v7, v6

    iget-object v8, v4, Lf/i/a/a/h1/u0/n;->J:[Z

    aget-boolean v8, v8, v6

    invoke-virtual {v7, p1, p2, p3, v8}, Lf/i/a/a/h1/j0;->i(JZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public u(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lf/i/a/a/h1/u0/n;->F(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lf/i/a/a/h1/u0/l;->q:[Lf/i/a/a/h1/u0/n;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lf/i/a/a/h1/u0/n;->F(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/u0/l;->i:Lf/i/a/a/h1/u0/q;

    .line 6
    iget-object v0, v0, Lf/i/a/a/h1/u0/q;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method
