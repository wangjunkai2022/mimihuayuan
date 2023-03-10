.class public final Lf/i/a/a/h1/g0;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/d0;
.implements Lf/i/a/a/b1/h;
.implements Lf/i/a/a/l1/c0$b;
.implements Lf/i/a/a/l1/c0$f;
.implements Lf/i/a/a/h1/j0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/g0$f;,
        Lf/i/a/a/h1/g0$d;,
        Lf/i/a/a/h1/g0$b;,
        Lf/i/a/a/h1/g0$a;,
        Lf/i/a/a/h1/g0$e;,
        Lf/i/a/a/h1/g0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/h1/d0;",
        "Lf/i/a/a/b1/h;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/h1/g0$a;",
        ">;",
        "Lf/i/a/a/l1/c0$f;",
        "Lf/i/a/a/h1/j0$b;"
    }
.end annotation


# static fields
.field public static final K:Lf/i/a/a/b0;


# instance fields
.field public A:Z

.field public B:I

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Z

.field public final a:Landroid/net/Uri;

.field public final b:Lf/i/a/a/l1/m;

.field public final c:Lf/i/a/a/l1/b0;

.field public final d:Lf/i/a/a/h1/f0$a;

.field public final e:Lf/i/a/a/h1/g0$c;

.field public final f:Lf/i/a/a/l1/e;

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:J

.field public final i:Lf/i/a/a/l1/c0;

.field public final j:Lf/i/a/a/h1/g0$b;

.field public final k:Lf/i/a/a/m1/k;

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroid/os/Handler;

.field public o:Lf/i/a/a/h1/d0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Lf/i/a/a/b1/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Lf/i/a/a/d1/h/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:[Lf/i/a/a/h1/j0;

.field public s:[Lf/i/a/a/h1/g0$f;

.field public t:Z

.field public u:Z

.field public v:Lf/i/a/a/h1/g0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Z

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1, v2, v3}, Lf/i/a/a/b0;->m(Ljava/lang/String;Ljava/lang/String;J)Lf/i/a/a/b0;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/g0;->K:Lf/i/a/a/b0;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lf/i/a/a/l1/m;[Lf/i/a/a/b1/g;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/h1/g0$c;Lf/i/a/a/l1/e;Ljava/lang/String;I)V
    .locals 0
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/g0;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/g0;->b:Lf/i/a/a/l1/m;

    .line 4
    iput-object p4, p0, Lf/i/a/a/h1/g0;->c:Lf/i/a/a/l1/b0;

    .line 5
    iput-object p5, p0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    .line 6
    iput-object p6, p0, Lf/i/a/a/h1/g0;->e:Lf/i/a/a/h1/g0$c;

    .line 7
    iput-object p7, p0, Lf/i/a/a/h1/g0;->f:Lf/i/a/a/l1/e;

    .line 8
    iput-object p8, p0, Lf/i/a/a/h1/g0;->g:Ljava/lang/String;

    int-to-long p1, p9

    .line 9
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->h:J

    .line 10
    new-instance p1, Lf/i/a/a/l1/c0;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    .line 11
    new-instance p1, Lf/i/a/a/h1/g0$b;

    invoke-direct {p1, p3}, Lf/i/a/a/h1/g0$b;-><init>([Lf/i/a/a/b1/g;)V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->j:Lf/i/a/a/h1/g0$b;

    .line 12
    new-instance p1, Lf/i/a/a/m1/k;

    invoke-direct {p1}, Lf/i/a/a/m1/k;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->k:Lf/i/a/a/m1/k;

    .line 13
    new-instance p1, Lf/i/a/a/h1/b;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/b;-><init>(Lf/i/a/a/h1/g0;)V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->l:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Lf/i/a/a/h1/m;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/m;-><init>(Lf/i/a/a/h1/g0;)V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->m:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lf/i/a/a/h1/g0$f;

    .line 16
    iput-object p2, p0, Lf/i/a/a/h1/g0;->s:[Lf/i/a/a/h1/g0$f;

    new-array p1, p1, [Lf/i/a/a/h1/j0;

    .line 17
    iput-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->F:J

    const-wide/16 p3, -0x1

    .line 19
    iput-wide p3, p0, Lf/i/a/a/h1/g0;->D:J

    .line 20
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->C:J

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lf/i/a/a/h1/g0;->x:I

    .line 22
    invoke-virtual {p5}, Lf/i/a/a/h1/f0$a;->y()V

    return-void
.end method

.method public static synthetic v(Lf/i/a/a/h1/g0;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->x()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public synthetic A()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->J:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/h1/d0$a;

    .line 3
    invoke-interface {v0, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 43

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lf/i/a/a/h1/g0;->p:Lf/i/a/a/b1/n;

    .line 2
    iget-boolean v2, v1, Lf/i/a/a/h1/g0;->J:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lf/i/a/a/h1/g0;->u:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lf/i/a/a/h1/g0;->t:Z

    if-eqz v2, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v2, v1, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 4
    invoke-virtual {v6}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, v1, Lf/i/a/a/h1/g0;->k:Lf/i/a/a/m1/k;

    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iput-boolean v4, v2, Lf/i/a/a/m1/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v2

    .line 9
    iget-object v2, v1, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v2, v2

    .line 10
    new-array v3, v2, [Lf/i/a/a/h1/o0;

    .line 11
    new-array v5, v2, [Z

    .line 12
    invoke-interface {v0}, Lf/i/a/a/b1/n;->j()J

    move-result-wide v6

    iput-wide v6, v1, Lf/i/a/a/h1/g0;->C:J

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v2, :cond_9

    .line 13
    iget-object v8, v1, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v8

    .line 14
    iget-object v9, v8, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 15
    invoke-static {v9}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 16
    invoke-static {v9}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 17
    :goto_3
    aput-boolean v9, v5, v6

    .line 18
    iget-boolean v11, v1, Lf/i/a/a/h1/g0;->w:Z

    or-int/2addr v9, v11

    iput-boolean v9, v1, Lf/i/a/a/h1/g0;->w:Z

    .line 19
    iget-object v9, v1, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    .line 20
    iget-object v11, v1, Lf/i/a/a/h1/g0;->s:[Lf/i/a/a/h1/g0$f;

    aget-object v11, v11, v6

    iget-boolean v11, v11, Lf/i/a/a/h1/g0$f;->b:Z

    if-eqz v11, :cond_7

    .line 21
    :cond_5
    iget-object v11, v8, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    if-nez v11, :cond_6

    .line 22
    new-instance v11, Lf/i/a/a/d1/a;

    new-array v12, v7, [Lf/i/a/a/d1/a$b;

    aput-object v9, v12, v4

    invoke-direct {v11, v12}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    goto :goto_4

    :cond_6
    new-array v12, v7, [Lf/i/a/a/d1/a$b;

    aput-object v9, v12, v4

    .line 23
    invoke-virtual {v11, v12}, Lf/i/a/a/d1/a;->a([Lf/i/a/a/d1/a$b;)Lf/i/a/a/d1/a;

    move-result-object v11

    .line 24
    :goto_4
    invoke-virtual {v8, v11}, Lf/i/a/a/b0;->e(Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    .line 25
    iget v10, v8, Lf/i/a/a/b0;->e:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    iget v9, v9, Lf/i/a/a/d1/h/b;->a:I

    if-eq v9, v11, :cond_8

    .line 26
    new-instance v10, Lf/i/a/a/b0;

    move-object v12, v10

    iget-object v13, v8, Lf/i/a/a/b0;->a:Ljava/lang/String;

    iget-object v14, v8, Lf/i/a/a/b0;->b:Ljava/lang/String;

    iget v15, v8, Lf/i/a/a/b0;->c:I

    iget v11, v8, Lf/i/a/a/b0;->d:I

    move/from16 v16, v11

    iget-object v11, v8, Lf/i/a/a/b0;->f:Ljava/lang/String;

    move-object/from16 v18, v11

    iget-object v11, v8, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    move-object/from16 v19, v11

    iget-object v11, v8, Lf/i/a/a/b0;->h:Ljava/lang/String;

    move-object/from16 v20, v11

    iget-object v11, v8, Lf/i/a/a/b0;->i:Ljava/lang/String;

    move-object/from16 v21, v11

    iget v11, v8, Lf/i/a/a/b0;->j:I

    move/from16 v22, v11

    iget-object v11, v8, Lf/i/a/a/b0;->k:Ljava/util/List;

    move-object/from16 v23, v11

    iget-object v11, v8, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    move-object/from16 v24, v11

    move-object/from16 v42, v5

    iget-wide v4, v8, Lf/i/a/a/b0;->m:J

    move-wide/from16 v25, v4

    iget v4, v8, Lf/i/a/a/b0;->n:I

    move/from16 v27, v4

    iget v4, v8, Lf/i/a/a/b0;->o:I

    move/from16 v28, v4

    iget v4, v8, Lf/i/a/a/b0;->p:F

    move/from16 v29, v4

    iget v4, v8, Lf/i/a/a/b0;->q:I

    move/from16 v30, v4

    iget v4, v8, Lf/i/a/a/b0;->r:F

    move/from16 v31, v4

    iget-object v4, v8, Lf/i/a/a/b0;->t:[B

    move-object/from16 v32, v4

    iget v4, v8, Lf/i/a/a/b0;->s:I

    move/from16 v33, v4

    iget-object v4, v8, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    move-object/from16 v34, v4

    iget v4, v8, Lf/i/a/a/b0;->v:I

    move/from16 v35, v4

    iget v4, v8, Lf/i/a/a/b0;->w:I

    move/from16 v36, v4

    iget v4, v8, Lf/i/a/a/b0;->x:I

    move/from16 v37, v4

    iget v4, v8, Lf/i/a/a/b0;->y:I

    move/from16 v38, v4

    iget v4, v8, Lf/i/a/a/b0;->z:I

    move/from16 v39, v4

    iget-object v4, v8, Lf/i/a/a/b0;->A:Ljava/lang/String;

    move-object/from16 v40, v4

    iget v4, v8, Lf/i/a/a/b0;->B:I

    move/from16 v41, v4

    move/from16 v17, v9

    invoke-direct/range {v12 .. v41}, Lf/i/a/a/b0;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lf/i/a/a/d1/a;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lf/i/a/a/z0/e;JIIFIF[BILf/i/a/a/n1/i;IIIIILjava/lang/String;I)V

    goto :goto_5

    :cond_8
    move-object/from16 v42, v5

    move-object v10, v8

    .line 27
    :goto_5
    new-instance v4, Lf/i/a/a/h1/o0;

    new-array v5, v7, [Lf/i/a/a/b0;

    const/4 v8, 0x0

    aput-object v10, v5, v8

    invoke-direct {v4, v5}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v42

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v42, v5

    .line 28
    iget-wide v4, v1, Lf/i/a/a/h1/g0;->D:J

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_a

    .line 29
    invoke-interface {v0}, Lf/i/a/a/b1/n;->j()J

    move-result-wide v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v8

    if-nez v2, :cond_a

    const/4 v2, 0x7

    goto :goto_6

    :cond_a
    const/4 v2, 0x1

    :goto_6
    iput v2, v1, Lf/i/a/a/h1/g0;->x:I

    .line 30
    new-instance v2, Lf/i/a/a/h1/g0$d;

    new-instance v4, Lf/i/a/a/h1/p0;

    invoke-direct {v4, v3}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    move-object/from16 v3, v42

    invoke-direct {v2, v0, v4, v3}, Lf/i/a/a/h1/g0$d;-><init>(Lf/i/a/a/b1/n;Lf/i/a/a/h1/p0;[Z)V

    iput-object v2, v1, Lf/i/a/a/h1/g0;->v:Lf/i/a/a/h1/g0$d;

    .line 31
    iput-boolean v7, v1, Lf/i/a/a/h1/g0;->u:Z

    .line 32
    iget-object v2, v1, Lf/i/a/a/h1/g0;->e:Lf/i/a/a/h1/g0$c;

    iget-wide v3, v1, Lf/i/a/a/h1/g0;->C:J

    invoke-interface {v0}, Lf/i/a/a/b1/n;->g()Z

    move-result v0

    check-cast v2, Lf/i/a/a/h1/h0;

    invoke-virtual {v2, v3, v4, v0}, Lf/i/a/a/h1/h0;->q(JZ)V

    .line 33
    iget-object v0, v1, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 34
    monitor-exit v2

    throw v3

    :cond_b
    :goto_7
    return-void
.end method

.method public final C(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/g0$d;->e:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->b:Lf/i/a/a/h1/p0;

    .line 5
    iget-object v0, v0, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v5, v0, v2

    .line 7
    iget-object v3, p0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    iget-object v0, v5, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lf/i/a/a/h1/g0;->E:J

    .line 9
    invoke-virtual/range {v3 .. v9}, Lf/i/a/a/h1/f0$a;->b(ILf/i/a/a/b0;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 10
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final D(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->c:[Z

    .line 2
    iget-boolean v1, p0, Lf/i/a/a/h1/g0;->G:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object p1, v0, p1

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/h1/j0;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lf/i/a/a/h1/g0;->F:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lf/i/a/a/h1/g0;->G:Z

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lf/i/a/a/h1/g0;->z:Z

    .line 7
    iput-wide v0, p0, Lf/i/a/a/h1/g0;->E:J

    .line 8
    iput p1, p0, Lf/i/a/a/h1/g0;->H:I

    .line 9
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 10
    invoke-virtual {v3, p1}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final E(Lf/i/a/a/h1/g0$f;)Lf/i/a/a/b1/p;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lf/i/a/a/h1/g0;->s:[Lf/i/a/a/h1/g0$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lf/i/a/a/h1/g0$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lf/i/a/a/h1/j0;

    iget-object v2, p0, Lf/i/a/a/h1/g0;->f:Lf/i/a/a/l1/e;

    invoke-direct {v1, v2}, Lf/i/a/a/h1/j0;-><init>(Lf/i/a/a/l1/e;)V

    .line 5
    iput-object p0, v1, Lf/i/a/a/h1/j0;->o:Lf/i/a/a/h1/j0$b;

    .line 6
    iget-object v2, p0, Lf/i/a/a/h1/g0;->s:[Lf/i/a/a/h1/g0$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lf/i/a/a/h1/g0$f;

    .line 7
    aput-object p1, v2, v0

    .line 8
    iput-object v2, p0, Lf/i/a/a/h1/g0;->s:[Lf/i/a/a/h1/g0$f;

    .line 9
    iget-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf/i/a/a/h1/j0;

    .line 10
    aput-object v1, p1, v0

    .line 11
    iput-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    return-object v1
.end method

.method public final F()V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lf/i/a/a/h1/g0$a;

    iget-object v2, v7, Lf/i/a/a/h1/g0;->a:Landroid/net/Uri;

    iget-object v3, v7, Lf/i/a/a/h1/g0;->b:Lf/i/a/a/l1/m;

    iget-object v4, v7, Lf/i/a/a/h1/g0;->j:Lf/i/a/a/h1/g0$b;

    iget-object v6, v7, Lf/i/a/a/h1/g0;->k:Lf/i/a/a/m1/k;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/h1/g0$a;-><init>(Lf/i/a/a/h1/g0;Landroid/net/Uri;Lf/i/a/a/l1/m;Lf/i/a/a/h1/g0$b;Lf/i/a/a/b1/h;Lf/i/a/a/m1/k;)V

    .line 2
    iget-boolean v0, v7, Lf/i/a/a/h1/g0;->u:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->a:Lf/i/a/a/b1/n;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->z()Z

    move-result v1

    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 5
    iget-wide v1, v7, Lf/i/a/a/h1/g0;->C:J

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    iget-wide v9, v7, Lf/i/a/a/h1/g0;->F:J

    cmp-long v6, v9, v1

    if-lez v6, :cond_0

    .line 6
    iput-boolean v3, v7, Lf/i/a/a/h1/g0;->I:Z

    .line 7
    iput-wide v4, v7, Lf/i/a/a/h1/g0;->F:J

    return-void

    .line 8
    :cond_0
    iget-wide v1, v7, Lf/i/a/a/h1/g0;->F:J

    .line 9
    invoke-interface {v0, v1, v2}, Lf/i/a/a/b1/n;->h(J)Lf/i/a/a/b1/n$a;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/b1/n$a;->a:Lf/i/a/a/b1/o;

    iget-wide v0, v0, Lf/i/a/a/b1/o;->b:J

    iget-wide v9, v7, Lf/i/a/a/h1/g0;->F:J

    .line 10
    iget-object v2, v8, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    iput-wide v0, v2, Lf/i/a/a/b1/m;->a:J

    .line 11
    iput-wide v9, v8, Lf/i/a/a/h1/g0$a;->i:J

    .line 12
    iput-boolean v3, v8, Lf/i/a/a/h1/g0$a;->h:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, v8, Lf/i/a/a/h1/g0$a;->m:Z

    .line 14
    iput-wide v4, v7, Lf/i/a/a/h1/g0;->F:J

    .line 15
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->w()I

    move-result v0

    iput v0, v7, Lf/i/a/a/h1/g0;->H:I

    .line 16
    iget-object v0, v7, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    iget-object v1, v7, Lf/i/a/a/h1/g0;->c:Lf/i/a/a/l1/b0;

    iget v2, v7, Lf/i/a/a/h1/g0;->x:I

    .line 17
    check-cast v1, Lf/i/a/a/l1/w;

    invoke-virtual {v1, v2}, Lf/i/a/a/l1/w;->b(I)I

    move-result v1

    .line 18
    invoke-virtual {v0, v8, v7, v1}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v20

    .line 19
    iget-object v9, v7, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    .line 20
    iget-object v10, v8, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 21
    iget-wide v0, v8, Lf/i/a/a/h1/g0$a;->i:J

    .line 22
    iget-wide v2, v7, Lf/i/a/a/h1/g0;->C:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    .line 23
    invoke-virtual/range {v9 .. v21}, Lf/i/a/a/h1/f0$a;->w(Lf/i/a/a/l1/p;IILf/i/a/a/b0;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(Lf/i/a/a/b1/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lf/i/a/a/b1/n$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v1, v2, v3}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 3
    :goto_0
    iput-object p1, p0, Lf/i/a/a/h1/g0;->p:Lf/i/a/a/b1/n;

    .line 4
    iget-object p1, p0, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    iget-object v0, p0, Lf/i/a/a/h1/g0;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(JLf/i/a/a/s0;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->a:Lf/i/a/a/b1/n;

    .line 2
    invoke-interface {v0}, Lf/i/a/a/b1/n;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Lf/i/a/a/b1/n;->h(J)Lf/i/a/a/b1/n$a;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lf/i/a/a/b1/n$a;->a:Lf/i/a/a/b1/o;

    iget-wide v5, v1, Lf/i/a/a/b1/o;->a:J

    iget-object v0, v0, Lf/i/a/a/b1/n$a;->b:Lf/i/a/a/b1/o;

    iget-wide v7, v0, Lf/i/a/a/b1/o;->a:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lf/i/a/a/m1/h0;->g0(JLf/i/a/a/s0;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/g0;->B:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/g0;->t:Z

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    iget-object v1, p0, Lf/i/a/a/h1/g0;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->c:[Z

    .line 2
    iget-boolean v1, p0, Lf/i/a/a/h1/g0;->I:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-wide v0, p0, Lf/i/a/a/h1/g0;->F:J

    return-wide v0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lf/i/a/a/h1/g0;->w:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 7
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v9, v9, v6

    .line 8
    iget-object v9, v9, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 9
    monitor-enter v9

    .line 10
    :try_start_0
    iget-boolean v10, v9, Lf/i/a/a/h1/i0;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    .line 11
    iget-object v9, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v9, v9, v6

    .line 12
    invoke-virtual {v9}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v9

    .line 13
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v9

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->x()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 16
    iget-wide v7, p0, Lf/i/a/a/h1/g0;->E:J

    :cond_6
    return-wide v7
.end method

.method public f(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lf/i/a/a/h1/g0;->I:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lf/i/a/a/h1/g0;->G:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lf/i/a/a/h1/g0;->u:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lf/i/a/a/h1/g0;->B:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lf/i/a/a/h1/g0;->k:Lf/i/a/a/m1/k;

    invoke-virtual {p1}, Lf/i/a/a/m1/k;->a()Z

    move-result p1

    .line 3
    iget-object p2, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p2}, Lf/i/a/a/l1/c0;->d()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->F()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(J)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, v2}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/g0;->j:Lf/i/a/a/h1/g0$b;

    .line 4
    iget-object v1, v0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lf/i/a/a/b1/g;->a()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;

    :cond_1
    return-void
.end method

.method public i(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    iget-object v0, p0, Lf/i/a/a/h1/g0;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/g0$d;->b:Lf/i/a/a/h1/p0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->d:[Z

    .line 4
    iget v2, p0, Lf/i/a/a/h1/g0;->B:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 7
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lf/i/a/a/h1/g0$e;

    .line 8
    iget v5, v5, Lf/i/a/a/h1/g0$e;->a:I

    .line 9
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 10
    iget v7, p0, Lf/i/a/a/h1/g0;->B:I

    sub-int/2addr v7, v6

    iput v7, p0, Lf/i/a/a/h1/g0;->B:I

    .line 11
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 12
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p2, p0, Lf/i/a/a/h1/g0;->y:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 14
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 15
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 16
    aget-object v4, p1, v2

    .line 17
    invoke-interface {v4}, Lf/i/a/a/j1/j;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 18
    invoke-interface {v4, v3}, Lf/i/a/a/j1/j;->e(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 19
    invoke-interface {v4}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v4

    .line 20
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 21
    iget v5, p0, Lf/i/a/a/h1/g0;->B:I

    add-int/2addr v5, v6

    iput v5, p0, Lf/i/a/a/h1/g0;->B:I

    .line 22
    aput-boolean v6, v0, v4

    .line 23
    new-instance v5, Lf/i/a/a/h1/g0$e;

    invoke-direct {v5, p0, v4}, Lf/i/a/a/h1/g0$e;-><init>(Lf/i/a/a/h1/g0;I)V

    aput-object v5, p3, v2

    .line 24
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 25
    iget-object p2, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object p2, p2, v4

    .line 26
    invoke-virtual {p2}, Lf/i/a/a/h1/j0;->v()V

    .line 27
    invoke-virtual {p2, p5, p6, v6, v6}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 28
    invoke-virtual {p2}, Lf/i/a/a/h1/j0;->m()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 29
    :cond_9
    iget p1, p0, Lf/i/a/a/h1/g0;->B:I

    if-nez p1, :cond_c

    .line 30
    iput-boolean v3, p0, Lf/i/a/a/h1/g0;->G:Z

    .line 31
    iput-boolean v3, p0, Lf/i/a/a/h1/g0;->z:Z

    .line 32
    iget-object p1, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 33
    iget-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 34
    invoke-virtual {p3}, Lf/i/a/a/h1/j0;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 35
    :cond_a
    iget-object p1, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->b()V

    goto :goto_a

    .line 36
    :cond_b
    iget-object p1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 37
    invoke-virtual {p4, v3}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 38
    invoke-virtual {p0, p5, p6}, Lf/i/a/a/h1/g0;->u(J)J

    move-result-wide p5

    .line 39
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 40
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 41
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 42
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lf/i/a/a/h1/g0;->y:Z

    return-wide p5
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/g0$a;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    .line 3
    iget-object v3, v1, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    .line 4
    iget-object v10, v1, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    .line 5
    iget-object v4, v10, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 6
    iget-object v5, v10, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    iget-wide v11, v1, Lf/i/a/a/h1/g0$a;->i:J

    .line 8
    iget-wide v13, v0, Lf/i/a/a/h1/g0;->C:J

    .line 9
    iget-wide v6, v10, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v19, v6

    const/4 v10, 0x0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 10
    invoke-virtual/range {v2 .. v20}, Lf/i/a/a/h1/f0$a;->n(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_2

    .line 11
    iget-wide v2, v0, Lf/i/a/a/h1/g0;->D:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 12
    iget-wide v1, v1, Lf/i/a/a/h1/g0$a;->k:J

    .line 13
    iput-wide v1, v0, Lf/i/a/a/h1/g0;->D:J

    .line 14
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 15
    invoke-virtual {v5, v3}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget v1, v0, Lf/i/a/a/h1/g0;->B:I

    if-lez v1, :cond_2

    .line 17
    iget-object v1, v0, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    :cond_2
    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->A:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->B()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/h1/g0;->A:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->I:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->w()I

    move-result v0

    iget v1, p0, Lf/i/a/a/h1/g0;->H:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/h1/g0;->z:Z

    .line 7
    iget-wide v0, p0, Lf/i/a/a/h1/g0;->E:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public m(Lf/i/a/a/h1/d0$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/g0;->k:Lf/i/a/a/m1/k;

    invoke-virtual {p1}, Lf/i/a/a/m1/k;->a()Z

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->F()V

    return-void
.end method

.method public synthetic n(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1}, Lf/i/a/a/h1/c0;->a(Lf/i/a/a/h1/d0;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->b:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/g0$a;

    .line 2
    iget-wide v2, v0, Lf/i/a/a/h1/g0;->D:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iget-wide v2, v1, Lf/i/a/a/h1/g0$a;->k:J

    .line 4
    iput-wide v2, v0, Lf/i/a/a/h1/g0;->D:J

    .line 5
    :cond_0
    iget-object v2, v0, Lf/i/a/a/h1/g0;->c:Lf/i/a/a/l1/b0;

    iget v7, v0, Lf/i/a/a/h1/g0;->x:I

    .line 6
    move-object v6, v2

    check-cast v6, Lf/i/a/a/l1/w;

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    cmp-long v9, v2, v6

    if-nez v9, :cond_1

    .line 7
    sget-object v2, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    goto :goto_5

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->w()I

    move-result v9

    .line 9
    iget v10, v0, Lf/i/a/a/h1/g0;->H:I

    const/4 v11, 0x0

    if-le v9, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 10
    :goto_0
    iget-wide v12, v0, Lf/i/a/a/h1/g0;->D:J

    cmp-long v14, v12, v4

    if-nez v14, :cond_6

    iget-object v4, v0, Lf/i/a/a/h1/g0;->p:Lf/i/a/a/b1/n;

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4}, Lf/i/a/a/b1/n;->j()J

    move-result-wide v4

    cmp-long v12, v4, v6

    if-eqz v12, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-boolean v4, v0, Lf/i/a/a/h1/g0;->u:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->G()Z

    move-result v4

    if-nez v4, :cond_4

    .line 13
    iput-boolean v8, v0, Lf/i/a/a/h1/g0;->G:Z

    goto :goto_4

    .line 14
    :cond_4
    iget-boolean v4, v0, Lf/i/a/a/h1/g0;->u:Z

    iput-boolean v4, v0, Lf/i/a/a/h1/g0;->z:Z

    const-wide/16 v4, 0x0

    .line 15
    iput-wide v4, v0, Lf/i/a/a/h1/g0;->E:J

    .line 16
    iput v11, v0, Lf/i/a/a/h1/g0;->H:I

    .line 17
    iget-object v6, v0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v12, v6, v9

    .line 18
    invoke-virtual {v12, v11}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v6, v1, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    iput-wide v4, v6, Lf/i/a/a/b1/m;->a:J

    .line 20
    iput-wide v4, v1, Lf/i/a/a/h1/g0$a;->i:J

    .line 21
    iput-boolean v8, v1, Lf/i/a/a/h1/g0$a;->h:Z

    .line 22
    iput-boolean v11, v1, Lf/i/a/a/h1/g0$a;->m:Z

    goto :goto_3

    .line 23
    :cond_6
    :goto_2
    iput v9, v0, Lf/i/a/a/h1/g0;->H:I

    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_7

    .line 24
    invoke-static {v10, v2, v3}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v2

    goto :goto_5

    :cond_7
    sget-object v2, Lf/i/a/a/l1/c0;->d:Lf/i/a/a/l1/c0$c;

    .line 25
    :goto_5
    iget-object v9, v0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    .line 26
    iget-object v10, v1, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    .line 27
    iget-object v3, v1, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    .line 28
    iget-object v11, v3, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 29
    iget-object v12, v3, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 30
    iget-wide v4, v1, Lf/i/a/a/h1/g0$a;->i:J

    move-wide/from16 v18, v4

    .line 31
    iget-wide v4, v0, Lf/i/a/a/h1/g0;->C:J

    move-wide/from16 v20, v4

    .line 32
    iget-wide v3, v3, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v26, v3

    .line 33
    invoke-virtual {v2}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v1

    xor-int/lit8 v29, v1, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-wide/from16 v22, p2

    move-wide/from16 v24, p4

    move-object/from16 v28, p6

    .line 34
    invoke-virtual/range {v9 .. v29}, Lf/i/a/a/h1/f0$a;->t(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public q(II)Lf/i/a/a/b1/p;
    .locals 1

    .line 1
    new-instance p2, Lf/i/a/a/h1/g0$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lf/i/a/a/h1/g0$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lf/i/a/a/h1/g0;->E(Lf/i/a/a/h1/g0$f;)Lf/i/a/a/b1/p;

    move-result-object p1

    return-object p1
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/g0$a;

    .line 2
    iget-wide v2, v0, Lf/i/a/a/h1/g0;->C:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, v0, Lf/i/a/a/h1/g0;->p:Lf/i/a/a/b1/n;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Lf/i/a/a/b1/n;->g()Z

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/g0;->x()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 5
    :goto_0
    iput-wide v3, v0, Lf/i/a/a/h1/g0;->C:J

    .line 6
    iget-object v5, v0, Lf/i/a/a/h1/g0;->e:Lf/i/a/a/h1/g0$c;

    check-cast v5, Lf/i/a/a/h1/h0;

    invoke-virtual {v5, v3, v4, v2}, Lf/i/a/a/h1/h0;->q(JZ)V

    .line 7
    :cond_1
    iget-object v6, v0, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    .line 8
    iget-object v7, v1, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    .line 9
    iget-object v2, v1, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    .line 10
    iget-object v8, v2, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 11
    iget-object v9, v2, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 12
    iget-wide v3, v1, Lf/i/a/a/h1/g0$a;->i:J

    move-wide v15, v3

    .line 13
    iget-wide v3, v0, Lf/i/a/a/h1/g0;->C:J

    move-wide/from16 v17, v3

    .line 14
    iget-wide v2, v2, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v23, v2

    const/4 v14, 0x0

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    .line 15
    invoke-virtual/range {v6 .. v24}, Lf/i/a/a/h1/f0$a;->q(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    .line 16
    iget-wide v2, v0, Lf/i/a/a/h1/g0;->D:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 17
    iget-wide v1, v1, Lf/i/a/a/h1/g0$a;->k:J

    .line 18
    iput-wide v1, v0, Lf/i/a/a/h1/g0;->D:J

    :cond_2
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Lf/i/a/a/h1/g0;->I:Z

    .line 20
    iget-object v1, v0, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    iget-object v1, p0, Lf/i/a/a/h1/g0;->c:Lf/i/a/a/l1/b0;

    iget v2, p0, Lf/i/a/a/h1/g0;->x:I

    check-cast v1, Lf/i/a/a/l1/w;

    invoke-virtual {v1, v2}, Lf/i/a/a/l1/w;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/c0;->e(I)V

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->I:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf/i/a/a/h1/g0;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public t(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->d:[Z

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lf/i/a/a/h1/j0;->i(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(J)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->y()Lf/i/a/a/h1/g0$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/g0$d;->a:Lf/i/a/a/b1/n;

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/g0$d;->c:[Z

    .line 4
    invoke-interface {v1}, Lf/i/a/a/b1/n;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lf/i/a/a/h1/g0;->z:Z

    .line 6
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->E:J

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/h1/g0;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->F:J

    return-wide p1

    .line 9
    :cond_1
    iget v2, p0, Lf/i/a/a/h1/g0;->x:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    .line 10
    iget-object v2, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    .line 11
    iget-object v5, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v5, v5, v3

    .line 12
    invoke-virtual {v5}, Lf/i/a/a/h1/j0;->v()V

    .line 13
    invoke-virtual {v5, p1, p2, v4, v1}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 14
    aget-boolean v4, v0, v3

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lf/i/a/a/h1/g0;->w:Z

    if-nez v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    return-wide p1

    .line 15
    :cond_6
    iput-boolean v1, p0, Lf/i/a/a/h1/g0;->G:Z

    .line 16
    iput-wide p1, p0, Lf/i/a/a/h1/g0;->F:J

    .line 17
    iput-boolean v1, p0, Lf/i/a/a/h1/g0;->I:Z

    .line 18
    iget-object v0, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->b()V

    goto :goto_5

    .line 20
    :cond_7
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 21
    invoke-virtual {v4, v1}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public final w()I
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget-object v4, v4, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 3
    iget v5, v4, Lf/i/a/a/h1/i0;->j:I

    iget v4, v4, Lf/i/a/a/h1/i0;->i:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final x()J
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v5

    .line 3
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final y()Lf/i/a/a/h1/g0$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0;->v:Lf/i/a/a/h1/g0$d;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/h1/g0$d;

    return-object v0
.end method

.method public final z()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/g0;->F:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
