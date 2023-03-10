.class public final Lf/i/a/a/h1/u0/n;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lf/i/a/a/l1/c0$b;
.implements Lf/i/a/a/l1/c0$f;
.implements Lf/i/a/a/h1/l0;
.implements Lf/i/a/a/b1/h;
.implements Lf/i/a/a/h1/j0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/n$b;,
        Lf/i/a/a/h1/u0/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/h1/s0/d;",
        ">;",
        "Lf/i/a/a/l1/c0$f;",
        "Lf/i/a/a/h1/l0;",
        "Lf/i/a/a/b1/h;",
        "Lf/i/a/a/h1/j0$b;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:Lf/i/a/a/b0;

.field public C:Lf/i/a/a/b0;

.field public D:Z

.field public E:Lf/i/a/a/h1/p0;

.field public F:Lf/i/a/a/h1/p0;

.field public G:[I

.field public H:I

.field public I:Z

.field public J:[Z

.field public K:[Z

.field public L:J

.field public M:J

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:J

.field public S:I

.field public final a:I

.field public final b:Lf/i/a/a/h1/u0/n$a;

.field public final c:Lf/i/a/a/h1/u0/g;

.field public final d:Lf/i/a/a/l1/e;

.field public final e:Lf/i/a/a/b0;

.field public final f:Lf/i/a/a/l1/b0;

.field public final g:Lf/i/a/a/l1/c0;

.field public final h:Lf/i/a/a/h1/f0$a;

.field public final i:Lf/i/a/a/h1/u0/g$c;

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/u0/k;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/k;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroid/os/Handler;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/u0/m;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/z0/e;",
            ">;"
        }
    .end annotation
.end field

.field public q:[Lf/i/a/a/h1/j0;

.field public r:[I

.field public s:Z

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(ILf/i/a/a/h1/u0/n$a;Lf/i/a/a/h1/u0/g;Ljava/util/Map;Lf/i/a/a/l1/e;JLf/i/a/a/b0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf/i/a/a/h1/u0/n$a;",
            "Lf/i/a/a/h1/u0/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/z0/e;",
            ">;",
            "Lf/i/a/a/l1/e;",
            "J",
            "Lf/i/a/a/b0;",
            "Lf/i/a/a/l1/b0;",
            "Lf/i/a/a/h1/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/h1/u0/n;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/u0/n;->p:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/u0/n;->d:Lf/i/a/a/l1/e;

    .line 7
    iput-object p8, p0, Lf/i/a/a/h1/u0/n;->e:Lf/i/a/a/b0;

    .line 8
    iput-object p9, p0, Lf/i/a/a/h1/u0/n;->f:Lf/i/a/a/l1/b0;

    .line 9
    iput-object p10, p0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    .line 10
    new-instance p1, Lf/i/a/a/l1/c0;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    .line 11
    new-instance p1, Lf/i/a/a/h1/u0/g$c;

    invoke-direct {p1}, Lf/i/a/a/h1/u0/g$c;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->i:Lf/i/a/a/h1/u0/g$c;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 12
    iput-object p2, p0, Lf/i/a/a/h1/u0/n;->r:[I

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lf/i/a/a/h1/u0/n;->t:I

    .line 14
    iput p2, p0, Lf/i/a/a/h1/u0/n;->v:I

    new-array p2, p1, [Lf/i/a/a/h1/j0;

    .line 15
    iput-object p2, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    new-array p2, p1, [Z

    .line 16
    iput-object p2, p0, Lf/i/a/a/h1/u0/n;->K:[Z

    new-array p1, p1, [Z

    .line 17
    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->J:[Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    .line 19
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->k:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lf/i/a/a/h1/u0/c;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/u0/c;-><init>(Lf/i/a/a/h1/u0/n;)V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->l:Ljava/lang/Runnable;

    .line 22
    new-instance p1, Lf/i/a/a/h1/u0/b;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/u0/b;-><init>(Lf/i/a/a/h1/u0/n;)V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->m:Ljava/lang/Runnable;

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->n:Landroid/os/Handler;

    .line 24
    iput-wide p6, p0, Lf/i/a/a/h1/u0/n;->L:J

    .line 25
    iput-wide p6, p0, Lf/i/a/a/h1/u0/n;->M:J

    return-void
.end method

.method public static v(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 1
    iget v3, v0, Lf/i/a/a/b0;->e:I

    move v9, v3

    goto :goto_0

    :cond_1
    const/4 v9, -0x1

    .line 2
    :goto_0
    iget v3, v0, Lf/i/a/a/b0;->v:I

    if-eq v3, v2, :cond_2

    move/from16 v27, v3

    goto :goto_1

    :cond_2
    iget v2, v1, Lf/i/a/a/b0;->v:I

    move/from16 v27, v2

    .line 3
    :goto_1
    iget-object v2, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-static {v2}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v2

    .line 4
    iget-object v3, v0, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v3, v2}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-static {v10}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6
    iget-object v2, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    :cond_3
    move-object v13, v2

    .line 7
    iget-object v5, v0, Lf/i/a/a/b0;->a:Ljava/lang/String;

    iget-object v6, v0, Lf/i/a/a/b0;->b:Ljava/lang/String;

    iget-object v2, v0, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    iget v3, v0, Lf/i/a/a/b0;->n:I

    iget v11, v0, Lf/i/a/a/b0;->o:I

    iget v7, v0, Lf/i/a/a/b0;->c:I

    iget-object v0, v0, Lf/i/a/a/b0;->A:Ljava/lang/String;

    .line 8
    iget-object v4, v1, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    if-eqz v4, :cond_5

    if-nez v2, :cond_4

    move-object v2, v4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v2, v2, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    invoke-virtual {v4, v2}, Lf/i/a/a/d1/a;->a([Lf/i/a/a/d1/a$b;)Lf/i/a/a/d1/a;

    move-result-object v2

    .line 10
    :cond_5
    :goto_2
    new-instance v34, Lf/i/a/a/b0;

    move-object/from16 v4, v34

    iget v8, v1, Lf/i/a/a/b0;->d:I

    iget-object v12, v1, Lf/i/a/a/b0;->h:Ljava/lang/String;

    iget v14, v1, Lf/i/a/a/b0;->j:I

    iget-object v15, v1, Lf/i/a/a/b0;->k:Ljava/util/List;

    move/from16 v19, v11

    iget-object v11, v1, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    move-object/from16 v16, v11

    move-object/from16 p0, v12

    iget-wide v11, v1, Lf/i/a/a/b0;->m:J

    move-wide/from16 v17, v11

    iget v11, v1, Lf/i/a/a/b0;->p:F

    move/from16 v21, v11

    iget v11, v1, Lf/i/a/a/b0;->q:I

    move/from16 v22, v11

    iget v11, v1, Lf/i/a/a/b0;->r:F

    move/from16 v23, v11

    iget-object v11, v1, Lf/i/a/a/b0;->t:[B

    move-object/from16 v24, v11

    iget v11, v1, Lf/i/a/a/b0;->s:I

    move/from16 v25, v11

    iget-object v11, v1, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    move-object/from16 v26, v11

    iget v11, v1, Lf/i/a/a/b0;->w:I

    move/from16 v28, v11

    iget v11, v1, Lf/i/a/a/b0;->x:I

    move/from16 v29, v11

    iget v11, v1, Lf/i/a/a/b0;->y:I

    move/from16 v30, v11

    iget v11, v1, Lf/i/a/a/b0;->z:I

    move/from16 v31, v11

    iget v1, v1, Lf/i/a/a/b0;->B:I

    move/from16 v33, v1

    move/from16 v1, v19

    move-object v11, v2

    move/from16 v19, v3

    move/from16 v20, v1

    move-object/from16 v32, v0

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v33}, Lf/i/a/a/b0;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lf/i/a/a/d1/a;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lf/i/a/a/z0/e;JIIFIF[BILf/i/a/a/n1/i;IIIIILjava/lang/String;I)V

    return-object v34
.end method

.method public static x(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final A()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->D:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->G:[I

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->y:Z

    if-nez v0, :cond_0

    goto/16 :goto_15

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    .line 5
    iget v0, v0, Lf/i/a/a/h1/p0;->a:I

    .line 6
    new-array v5, v0, [I

    iput-object v5, p0, Lf/i/a/a/h1/u0/n;->G:[I

    .line 7
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 9
    aget-object v6, v6, v5

    .line 10
    invoke-virtual {v6}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v6

    iget-object v7, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 11
    iget-object v7, v7, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v7, v7, v3

    .line 12
    iget-object v7, v7, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v7, v7, v2

    .line 13
    iget-object v8, v6, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 14
    iget-object v9, v7, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 15
    invoke-static {v8}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v1, :cond_3

    .line 16
    invoke-static {v9}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {v8, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    .line 18
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    :cond_5
    iget v6, v6, Lf/i/a/a/b0;->B:I

    iget v7, v7, Lf/i/a/a/b0;->B:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_8

    .line 21
    iget-object v6, p0, Lf/i/a/a/h1/u0/n;->G:[I

    aput v5, v6, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_a
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/m;

    .line 23
    invoke-virtual {v1}, Lf/i/a/a/h1/u0/m;->b()V

    goto :goto_7

    .line 24
    :cond_b
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v0, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, -0x1

    :goto_8
    const/4 v9, 0x2

    if-ge v6, v0, :cond_11

    .line 25
    iget-object v10, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v10

    iget-object v10, v10, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 26
    invoke-static {v10}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_9

    .line 27
    :cond_c
    invoke-static {v10}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    .line 28
    :cond_d
    invoke-static {v10}, Lf/i/a/a/m1/r;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x3

    goto :goto_9

    :cond_e
    const/4 v9, 0x6

    .line 29
    :goto_9
    invoke-static {v9}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result v10

    invoke-static {v7}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result v11

    if-le v10, v11, :cond_f

    move v8, v6

    move v7, v9

    goto :goto_a

    :cond_f
    if-ne v9, v7, :cond_10

    if-eq v8, v3, :cond_10

    const/4 v8, -0x1

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 30
    :cond_11
    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 31
    iget-object v1, v1, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    .line 32
    iget v5, v1, Lf/i/a/a/h1/o0;->a:I

    .line 33
    iput v3, p0, Lf/i/a/a/h1/u0/n;->H:I

    .line 34
    new-array v6, v0, [I

    iput-object v6, p0, Lf/i/a/a/h1/u0/n;->G:[I

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_12

    .line 35
    iget-object v10, p0, Lf/i/a/a/h1/u0/n;->G:[I

    aput v6, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 36
    :cond_12
    new-array v6, v0, [Lf/i/a/a/h1/o0;

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v0, :cond_17

    .line 37
    iget-object v11, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v11

    if-ne v10, v8, :cond_15

    .line 38
    new-array v12, v5, [Lf/i/a/a/b0;

    if-ne v5, v4, :cond_13

    .line 39
    iget-object v13, v1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v13, v13, v2

    .line 40
    invoke-virtual {v11, v13}, Lf/i/a/a/b0;->d(Lf/i/a/a/b0;)Lf/i/a/a/b0;

    move-result-object v11

    aput-object v11, v12, v2

    goto :goto_e

    :cond_13
    const/4 v13, 0x0

    :goto_d
    if-ge v13, v5, :cond_14

    .line 41
    iget-object v14, v1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v14, v14, v13

    .line 42
    invoke-static {v14, v11, v4}, Lf/i/a/a/h1/u0/n;->v(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 43
    :cond_14
    :goto_e
    new-instance v11, Lf/i/a/a/h1/o0;

    invoke-direct {v11, v12}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v11, v6, v10

    .line 44
    iput v10, p0, Lf/i/a/a/h1/u0/n;->H:I

    goto :goto_10

    :cond_15
    if-ne v7, v9, :cond_16

    .line 45
    iget-object v12, v11, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 46
    invoke-static {v12}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v12, p0, Lf/i/a/a/h1/u0/n;->e:Lf/i/a/a/b0;

    goto :goto_f

    :cond_16
    const/4 v12, 0x0

    .line 47
    :goto_f
    new-instance v13, Lf/i/a/a/h1/o0;

    new-array v14, v4, [Lf/i/a/a/b0;

    invoke-static {v12, v11, v2}, Lf/i/a/a/h1/u0/n;->v(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v11

    aput-object v11, v14, v2

    invoke-direct {v13, v14}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v13, v6, v10

    :goto_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 48
    :cond_17
    new-instance v0, Lf/i/a/a/h1/p0;

    invoke-direct {v0, v6}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    iput-object v0, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 49
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 50
    sget-object v0, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    iput-object v0, p0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    .line 51
    iput-boolean v4, p0, Lf/i/a/a/h1/u0/n;->z:Z

    .line 52
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v0, Lf/i/a/a/h1/u0/l;

    .line 53
    iget v1, v0, Lf/i/a/a/h1/u0/l;->n:I

    add-int/2addr v1, v3

    iput v1, v0, Lf/i/a/a/h1/u0/l;->n:I

    if-lez v1, :cond_19

    goto :goto_15

    .line 54
    :cond_19
    iget-object v1, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v4, v3, :cond_1a

    aget-object v6, v1, v4

    .line 55
    iget-object v6, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 56
    iget v6, v6, Lf/i/a/a/h1/p0;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 57
    :cond_1a
    new-array v1, v5, [Lf/i/a/a/h1/o0;

    .line 58
    iget-object v3, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    if-ge v5, v4, :cond_1c

    aget-object v7, v3, v5

    .line 59
    iget-object v8, v7, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 60
    iget v8, v8, Lf/i/a/a/h1/p0;->a:I

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v8, :cond_1b

    add-int/lit8 v10, v6, 0x1

    .line 61
    iget-object v11, v7, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 62
    iget-object v11, v11, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v11, v11, v9

    .line 63
    aput-object v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_14

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 64
    :cond_1c
    new-instance v2, Lf/i/a/a/h1/p0;

    invoke-direct {v2, v1}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    iput-object v2, v0, Lf/i/a/a/h1/u0/l;->o:Lf/i/a/a/h1/p0;

    .line 65
    iget-object v1, v0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    :cond_1d
    :goto_15
    return-void
.end method

.method public B()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/c0;->e(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 4
    iget-object v1, v0, Lf/i/a/a/h1/u0/g;->m:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v0, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lf/i/a/a/h1/u0/g;->r:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, v0, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/u0/t/c;->f(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    throw v1
.end method

.method public final C()V
    .locals 15

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->y:Z

    .line 2
    iget-boolean v1, p0, Lf/i/a/a/h1/u0/n;->D:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->G:[I

    if-nez v1, :cond_1d

    if-nez v0, :cond_0

    goto/16 :goto_15

    .line 3
    :cond_0
    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_15

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    const/4 v2, 0x3

    const/4 v4, -0x1

    if-eqz v1, :cond_b

    .line 6
    iget v1, v1, Lf/i/a/a/h1/p0;->a:I

    .line 7
    new-array v5, v1, [I

    iput-object v5, p0, Lf/i/a/a/h1/u0/n;->G:[I

    .line 8
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_a

    const/4 v5, 0x0

    .line 9
    :goto_2
    iget-object v6, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 10
    aget-object v6, v6, v5

    .line 11
    invoke-virtual {v6}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v6

    iget-object v7, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 12
    iget-object v7, v7, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v7, v7, v4

    .line 13
    iget-object v7, v7, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v7, v7, v3

    .line 14
    iget-object v8, v6, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 15
    iget-object v9, v7, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 16
    invoke-static {v8}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v2, :cond_3

    .line 17
    invoke-static {v9}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {v8, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    .line 20
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 21
    :cond_5
    iget v6, v6, Lf/i/a/a/b0;->B:I

    iget v7, v7, Lf/i/a/a/b0;->B:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_8

    .line 22
    iget-object v6, p0, Lf/i/a/a/h1/u0/n;->G:[I

    aput v5, v6, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 23
    :cond_a
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/m;

    .line 24
    invoke-virtual {v1}, Lf/i/a/a/h1/u0/m;->b()V

    goto :goto_7

    .line 25
    :cond_b
    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v1, v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, -0x1

    :goto_8
    const/4 v9, 0x2

    if-ge v6, v1, :cond_11

    .line 26
    iget-object v10, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v10

    iget-object v10, v10, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 27
    invoke-static {v10}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_9

    .line 28
    :cond_c
    invoke-static {v10}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    .line 29
    :cond_d
    invoke-static {v10}, Lf/i/a/a/m1/r;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x3

    goto :goto_9

    :cond_e
    const/4 v9, 0x6

    .line 30
    :goto_9
    invoke-static {v9}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result v10

    invoke-static {v7}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result v11

    if-le v10, v11, :cond_f

    move v8, v6

    move v7, v9

    goto :goto_a

    :cond_f
    if-ne v9, v7, :cond_10

    if-eq v8, v4, :cond_10

    const/4 v8, -0x1

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 31
    :cond_11
    iget-object v2, p0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 32
    iget-object v2, v2, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    .line 33
    iget v5, v2, Lf/i/a/a/h1/o0;->a:I

    .line 34
    iput v4, p0, Lf/i/a/a/h1/u0/n;->H:I

    .line 35
    new-array v6, v1, [I

    iput-object v6, p0, Lf/i/a/a/h1/u0/n;->G:[I

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v1, :cond_12

    .line 36
    iget-object v10, p0, Lf/i/a/a/h1/u0/n;->G:[I

    aput v6, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 37
    :cond_12
    new-array v6, v1, [Lf/i/a/a/h1/o0;

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v1, :cond_17

    .line 38
    iget-object v11, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lf/i/a/a/h1/j0;->n()Lf/i/a/a/b0;

    move-result-object v11

    if-ne v10, v8, :cond_15

    .line 39
    new-array v12, v5, [Lf/i/a/a/b0;

    if-ne v5, v0, :cond_13

    .line 40
    iget-object v13, v2, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v13, v13, v3

    .line 41
    invoke-virtual {v11, v13}, Lf/i/a/a/b0;->d(Lf/i/a/a/b0;)Lf/i/a/a/b0;

    move-result-object v11

    aput-object v11, v12, v3

    goto :goto_e

    :cond_13
    const/4 v13, 0x0

    :goto_d
    if-ge v13, v5, :cond_14

    .line 42
    iget-object v14, v2, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v14, v14, v13

    .line 43
    invoke-static {v14, v11, v0}, Lf/i/a/a/h1/u0/n;->v(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 44
    :cond_14
    :goto_e
    new-instance v11, Lf/i/a/a/h1/o0;

    invoke-direct {v11, v12}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v11, v6, v10

    .line 45
    iput v10, p0, Lf/i/a/a/h1/u0/n;->H:I

    goto :goto_10

    :cond_15
    if-ne v7, v9, :cond_16

    .line 46
    iget-object v12, v11, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 47
    invoke-static {v12}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v12, p0, Lf/i/a/a/h1/u0/n;->e:Lf/i/a/a/b0;

    goto :goto_f

    :cond_16
    const/4 v12, 0x0

    .line 48
    :goto_f
    new-instance v13, Lf/i/a/a/h1/o0;

    new-array v14, v0, [Lf/i/a/a/b0;

    invoke-static {v12, v11, v3}, Lf/i/a/a/h1/u0/n;->v(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Lf/i/a/a/b0;

    move-result-object v11

    aput-object v11, v14, v3

    invoke-direct {v13, v14}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v13, v6, v10

    :goto_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 49
    :cond_17
    new-instance v1, Lf/i/a/a/h1/p0;

    invoke-direct {v1, v6}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    iput-object v1, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 50
    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 51
    sget-object v1, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    iput-object v1, p0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    .line 52
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->z:Z

    .line 53
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v0, Lf/i/a/a/h1/u0/l;

    .line 54
    iget v1, v0, Lf/i/a/a/h1/u0/l;->n:I

    add-int/2addr v1, v4

    iput v1, v0, Lf/i/a/a/h1/u0/l;->n:I

    if-lez v1, :cond_19

    goto :goto_15

    .line 55
    :cond_19
    iget-object v1, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v4, v2, :cond_1a

    aget-object v6, v1, v4

    .line 56
    iget-object v6, v6, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 57
    iget v6, v6, Lf/i/a/a/h1/p0;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 58
    :cond_1a
    new-array v1, v5, [Lf/i/a/a/h1/o0;

    .line 59
    iget-object v2, v0, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    if-ge v5, v4, :cond_1c

    aget-object v7, v2, v5

    .line 60
    iget-object v8, v7, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 61
    iget v8, v8, Lf/i/a/a/h1/p0;->a:I

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v8, :cond_1b

    add-int/lit8 v10, v6, 0x1

    .line 62
    iget-object v11, v7, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 63
    iget-object v11, v11, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v11, v11, v9

    .line 64
    aput-object v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_14

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 65
    :cond_1c
    new-instance v2, Lf/i/a/a/h1/p0;

    invoke-direct {v2, v1}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    iput-object v2, v0, Lf/i/a/a/h1/u0/l;->o:Lf/i/a/a/h1/p0;

    .line 66
    iget-object v1, v0, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    :cond_1d
    :goto_15
    return-void
.end method

.method public D(Lf/i/a/a/h1/p0;ILf/i/a/a/h1/p0;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->z:Z

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 3
    iput-object p3, p0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    .line 4
    iput p2, p0, Lf/i/a/a/h1/u0/n;->H:I

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->n:Landroid/os/Handler;

    iget-object p2, p0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lf/i/a/a/h1/u0/a;

    invoke-direct {p3, p2}, Lf/i/a/a/h1/u0/a;-><init>(Lf/i/a/a/h1/u0/n$a;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, p0, Lf/i/a/a/h1/u0/n;->N:Z

    invoke-virtual {v4, v5}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p0, Lf/i/a/a/h1/u0/n;->N:Z

    return-void
.end method

.method public F(JZ)Z
    .locals 5

    .line 1
    iput-wide p1, p0, Lf/i/a/a/h1/u0/n;->L:J

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lf/i/a/a/h1/u0/n;->M:J

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->y:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 5
    iget-object p3, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length p3, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    .line 6
    iget-object v3, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v3, v3, v0

    .line 7
    invoke-virtual {v3}, Lf/i/a/a/h1/j0;->v()V

    .line 8
    invoke-virtual {v3, p1, p2, v1, v2}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 9
    iget-object v3, p0, Lf/i/a/a/h1/u0/n;->K:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lf/i/a/a/h1/u0/n;->I:Z

    if-nez v3, :cond_3

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x1

    :goto_2
    if-eqz p3, :cond_5

    return v2

    .line 10
    :cond_5
    iput-wide p1, p0, Lf/i/a/a/h1/u0/n;->M:J

    .line 11
    iput-boolean v2, p0, Lf/i/a/a/h1/u0/n;->P:Z

    .line 12
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->b()V

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->E()V

    :goto_3
    return v1
.end method

.method public a(Lf/i/a/a/b1/n;)V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lf/i/a/a/h1/u0/n;->M:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->P:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->w()Lf/i/a/a/h1/u0/k;

    move-result-object v0

    iget-wide v0, v0, Lf/i/a/a/h1/s0/d;->g:J

    :goto_0
    return-wide v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->Q:Z

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->n:Landroid/os/Handler;

    iget-object v1, p0, Lf/i/a/a/h1/u0/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->P:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lf/i/a/a/h1/u0/n;->M:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lf/i/a/a/h1/u0/n;->L:J

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->w()Lf/i/a/a/h1/u0/k;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, Lf/i/a/a/h1/u0/k;->G:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/k;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 9
    iget-wide v2, v2, Lf/i/a/a/h1/s0/d;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 10
    :cond_4
    iget-boolean v2, p0, Lf/i/a/a/h1/u0/n;->y:Z

    if-eqz v2, :cond_5

    .line 11
    iget-object v2, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 12
    invoke-virtual {v5}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public f(J)Z
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf/i/a/a/h1/u0/n;->P:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {v1}, Lf/i/a/a/l1/c0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-wide v2, v0, Lf/i/a/a/h1/u0/n;->M:J

    :goto_0
    move-object v8, v1

    move-wide v14, v2

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->k:Ljava/util/List;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/n;->w()Lf/i/a/a/h1/u0/k;

    move-result-object v2

    .line 7
    iget-boolean v3, v2, Lf/i/a/a/h1/u0/k;->G:Z

    if-eqz v3, :cond_2

    .line 8
    iget-wide v2, v2, Lf/i/a/a/h1/s0/d;->g:J

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Lf/i/a/a/h1/u0/n;->L:J

    iget-wide v5, v2, Lf/i/a/a/h1/s0/d;->f:J

    .line 9
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 10
    :goto_1
    iget-object v13, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    iget-object v12, v0, Lf/i/a/a/h1/u0/n;->i:Lf/i/a/a/h1/u0/g$c;

    if-eqz v13, :cond_19

    .line 11
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/k;

    move-object v6, v1

    :goto_2
    if-nez v6, :cond_4

    const/4 v1, -0x1

    const/4 v7, -0x1

    goto :goto_3

    .line 12
    :cond_4
    iget-object v1, v13, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    iget-object v2, v6, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    invoke-virtual {v1, v2}, Lf/i/a/a/h1/o0;->a(Lf/i/a/a/b0;)I

    move-result v1

    move v7, v1

    :goto_3
    sub-long v1, v14, p1

    .line 13
    iget-wide v3, v13, Lf/i/a/a/h1/u0/g;->q:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v10

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    .line 14
    iget-wide v3, v13, Lf/i/a/a/h1/u0/g;->q:J

    sub-long v3, v3, p1

    goto :goto_5

    :cond_6
    move-wide v3, v10

    :goto_5
    if-eqz v6, :cond_7

    .line 15
    iget-boolean v5, v13, Lf/i/a/a/h1/u0/g;->o:Z

    if-nez v5, :cond_7

    .line 16
    iget-wide v9, v6, Lf/i/a/a/h1/s0/d;->g:J

    move-object/from16 v20, v12

    iget-wide v11, v6, Lf/i/a/a/h1/s0/d;->f:J

    sub-long/2addr v9, v11

    sub-long/2addr v1, v9

    const-wide/16 v11, 0x0

    .line 17
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v18

    if-eqz v5, :cond_8

    sub-long/2addr v3, v9

    .line 18
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v10

    move-object/from16 v20, v12

    :cond_8
    :goto_6
    move-wide v9, v3

    move-wide v4, v1

    .line 19
    invoke-virtual {v13, v6, v14, v15}, Lf/i/a/a/h1/u0/g;->a(Lf/i/a/a/h1/u0/k;J)[Lf/i/a/a/h1/s0/m;

    move-result-object v11

    .line 20
    iget-object v1, v13, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    move-wide/from16 v2, p1

    move-object/from16 v29, v6

    move v12, v7

    move-wide v6, v9

    const/4 v10, 0x1

    move-object v9, v11

    invoke-interface/range {v1 .. v9}, Lf/i/a/a/j1/j;->h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V

    .line 21
    iget-object v1, v13, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    invoke-interface {v1}, Lf/i/a/a/j1/j;->i()I

    move-result v7

    if-eq v12, v7, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 22
    :goto_7
    iget-object v1, v13, Lf/i/a/a/h1/u0/g;->e:[Landroid/net/Uri;

    aget-object v1, v1, v7

    .line 23
    iget-object v2, v13, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    check-cast v2, Lf/i/a/a/h1/u0/t/c;

    invoke-virtual {v2, v1}, Lf/i/a/a/h1/u0/t/c;->e(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v2, v20

    .line 24
    iput-object v1, v2, Lf/i/a/a/h1/u0/g$c;->c:Landroid/net/Uri;

    .line 25
    iget-boolean v2, v13, Lf/i/a/a/h1/u0/g;->r:Z

    iget-object v3, v13, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v13, Lf/i/a/a/h1/u0/g;->r:Z

    .line 26
    iput-object v1, v13, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_a
    move-object/from16 v2, v20

    .line 27
    iget-object v3, v13, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 28
    check-cast v3, Lf/i/a/a/h1/u0/t/c;

    invoke-virtual {v3, v1, v10}, Lf/i/a/a/h1/u0/t/c;->d(Landroid/net/Uri;Z)Lf/i/a/a/h1/u0/t/f;

    move-result-object v3

    .line 29
    iget-boolean v4, v3, Lf/i/a/a/h1/u0/t/g;->c:Z

    iput-boolean v4, v13, Lf/i/a/a/h1/u0/g;->o:Z

    .line 30
    iget-boolean v4, v3, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v4, :cond_b

    move-wide/from16 v4, v18

    goto :goto_8

    .line 31
    :cond_b
    iget-wide v4, v3, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-wide v10, v3, Lf/i/a/a/h1/u0/t/f;->p:J

    add-long/2addr v4, v10

    .line 32
    iget-object v8, v13, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    check-cast v8, Lf/i/a/a/h1/u0/t/c;

    .line 33
    iget-wide v10, v8, Lf/i/a/a/h1/u0/t/c;->p:J

    sub-long/2addr v4, v10

    .line 34
    :goto_8
    iput-wide v4, v13, Lf/i/a/a/h1/u0/g;->q:J

    .line 35
    iget-wide v4, v3, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-object v8, v13, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 36
    check-cast v8, Lf/i/a/a/h1/u0/t/c;

    .line 37
    iget-wide v10, v8, Lf/i/a/a/h1/u0/t/c;->p:J

    sub-long/2addr v4, v10

    move/from16 p1, v7

    move-wide/from16 v6, v18

    const/4 v8, 0x0

    move-object v11, v13

    move/from16 v19, v12

    move-object/from16 v12, v29

    move-object v10, v13

    move v13, v9

    move-wide/from16 v17, v14

    move-object v14, v3

    move-wide v15, v4

    .line 38
    invoke-virtual/range {v11 .. v18}, Lf/i/a/a/h1/u0/g;->b(Lf/i/a/a/h1/u0/k;ZLf/i/a/a/h1/u0/t/f;JJ)J

    move-result-wide v11

    .line 39
    iget-wide v13, v3, Lf/i/a/a/h1/u0/t/f;->i:J

    cmp-long v15, v11, v13

    if-gez v15, :cond_c

    if-eqz v29, :cond_c

    if-eqz v9, :cond_c

    .line 40
    iget-object v1, v10, Lf/i/a/a/h1/u0/g;->e:[Landroid/net/Uri;

    aget-object v1, v1, v19

    .line 41
    iget-object v3, v10, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 42
    check-cast v3, Lf/i/a/a/h1/u0/t/c;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lf/i/a/a/h1/u0/t/c;->d(Landroid/net/Uri;Z)Lf/i/a/a/h1/u0/t/f;

    move-result-object v3

    .line 43
    iget-wide v4, v3, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-object v11, v10, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 44
    check-cast v11, Lf/i/a/a/h1/u0/t/c;

    .line 45
    iget-wide v11, v11, Lf/i/a/a/h1/u0/t/c;->p:J

    sub-long/2addr v4, v11

    .line 46
    invoke-virtual/range {v29 .. v29}, Lf/i/a/a/h1/s0/l;->c()J

    move-result-wide v11

    move-wide/from16 v32, v4

    move-object v4, v1

    move/from16 v1, v19

    move-wide/from16 v19, v32

    goto :goto_9

    :cond_c
    move-wide/from16 v19, v4

    move-object v4, v1

    move/from16 v1, p1

    .line 47
    :goto_9
    iget-wide v13, v3, Lf/i/a/a/h1/u0/t/f;->i:J

    cmp-long v5, v11, v13

    if-gez v5, :cond_d

    .line 48
    new-instance v1, Lf/i/a/a/h1/p;

    invoke-direct {v1}, Lf/i/a/a/h1/p;-><init>()V

    iput-object v1, v10, Lf/i/a/a/h1/u0/g;->m:Ljava/io/IOException;

    goto/16 :goto_d

    :cond_d
    sub-long/2addr v11, v13

    long-to-int v5, v11

    .line 49
    iget-object v11, v3, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v5, v11, :cond_f

    .line 50
    iget-boolean v1, v3, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, v2, Lf/i/a/a/h1/u0/g$c;->b:Z

    goto/16 :goto_d

    .line 52
    :cond_e
    iput-object v4, v2, Lf/i/a/a/h1/u0/g$c;->c:Landroid/net/Uri;

    .line 53
    iget-boolean v1, v10, Lf/i/a/a/h1/u0/g;->r:Z

    iget-object v2, v10, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    invoke-virtual {v4, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v10, Lf/i/a/a/h1/u0/g;->r:Z

    .line 54
    iput-object v4, v10, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    goto/16 :goto_d

    :cond_f
    const/4 v11, 0x0

    .line 55
    iput-boolean v11, v10, Lf/i/a/a/h1/u0/g;->r:Z

    .line 56
    iput-object v8, v10, Lf/i/a/a/h1/u0/g;->n:Landroid/net/Uri;

    .line 57
    iget-object v11, v3, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/i/a/a/h1/u0/t/f$a;

    .line 58
    iget-object v12, v11, Lf/i/a/a/h1/u0/t/f$a;->b:Lf/i/a/a/h1/u0/t/f$a;

    if-eqz v12, :cond_11

    .line 59
    iget-object v12, v12, Lf/i/a/a/h1/u0/t/f$a;->g:Ljava/lang/String;

    if-nez v12, :cond_10

    goto :goto_a

    .line 60
    :cond_10
    iget-object v13, v3, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    invoke-static {v13, v12}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_b

    :cond_11
    :goto_a
    move-object v12, v8

    .line 61
    :goto_b
    invoke-virtual {v10, v12, v1}, Lf/i/a/a/h1/u0/g;->c(Landroid/net/Uri;I)Lf/i/a/a/h1/s0/d;

    move-result-object v13

    iput-object v13, v2, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    if-eqz v13, :cond_12

    goto :goto_d

    .line 62
    :cond_12
    iget-object v11, v11, Lf/i/a/a/h1/u0/t/f$a;->g:Ljava/lang/String;

    if-nez v11, :cond_13

    move-object v11, v8

    goto :goto_c

    .line 63
    :cond_13
    iget-object v13, v3, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    invoke-static {v13, v11}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 64
    :goto_c
    invoke-virtual {v10, v11, v1}, Lf/i/a/a/h1/u0/g;->c(Landroid/net/Uri;I)Lf/i/a/a/h1/s0/d;

    move-result-object v13

    iput-object v13, v2, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    if-eqz v13, :cond_14

    goto :goto_d

    .line 65
    :cond_14
    iget-object v13, v10, Lf/i/a/a/h1/u0/g;->a:Lf/i/a/a/h1/u0/i;

    iget-object v14, v10, Lf/i/a/a/h1/u0/g;->b:Lf/i/a/a/l1/m;

    iget-object v15, v10, Lf/i/a/a/h1/u0/g;->f:[Lf/i/a/a/b0;

    aget-object v18, v15, v1

    iget-object v1, v10, Lf/i/a/a/h1/u0/g;->i:Ljava/util/List;

    iget-object v15, v10, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    .line 66
    invoke-interface {v15}, Lf/i/a/a/j1/j;->l()I

    move-result v25

    iget-object v15, v10, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    .line 67
    invoke-interface {v15}, Lf/i/a/a/j1/j;->p()Ljava/lang/Object;

    move-result-object v26

    iget-boolean v15, v10, Lf/i/a/a/h1/u0/g;->k:Z

    iget-object v9, v10, Lf/i/a/a/h1/u0/g;->d:Lf/i/a/a/h1/u0/q;

    iget-object v6, v10, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    .line 68
    invoke-virtual {v6, v11}, Lf/i/a/a/h1/u0/g$b;->a(Ljava/lang/Object;)[B

    move-result-object v30

    iget-object v6, v10, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    .line 69
    invoke-virtual {v6, v12}, Lf/i/a/a/h1/u0/g$b;->a(Ljava/lang/Object;)[B

    move-result-object v31

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    move/from16 v27, v15

    move-object/from16 v28, v9

    .line 70
    invoke-static/range {v16 .. v31}, Lf/i/a/a/h1/u0/k;->e(Lf/i/a/a/h1/u0/i;Lf/i/a/a/l1/m;Lf/i/a/a/b0;JLf/i/a/a/h1/u0/t/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLf/i/a/a/h1/u0/q;Lf/i/a/a/h1/u0/k;[B[B)Lf/i/a/a/h1/u0/k;

    move-result-object v1

    iput-object v1, v2, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    .line 71
    :goto_d
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->i:Lf/i/a/a/h1/u0/g$c;

    iget-boolean v2, v1, Lf/i/a/a/h1/u0/g$c;->b:Z

    .line 72
    iget-object v3, v1, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    .line 73
    iget-object v4, v1, Lf/i/a/a/h1/u0/g$c;->c:Landroid/net/Uri;

    .line 74
    iput-object v8, v1, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    const/4 v5, 0x0

    .line 75
    iput-boolean v5, v1, Lf/i/a/a/h1/u0/g$c;->b:Z

    .line 76
    iput-object v8, v1, Lf/i/a/a/h1/u0/g$c;->c:Landroid/net/Uri;

    if-eqz v2, :cond_15

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    iput-wide v1, v0, Lf/i/a/a/h1/u0/n;->M:J

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, v0, Lf/i/a/a/h1/u0/n;->P:Z

    return v1

    :cond_15
    if-nez v3, :cond_17

    if-eqz v4, :cond_16

    .line 79
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v1, Lf/i/a/a/h1/u0/l;

    .line 80
    iget-object v1, v1, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    check-cast v1, Lf/i/a/a/h1/u0/t/c;

    .line 81
    iget-object v1, v1, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/t/c$a;

    invoke-virtual {v1}, Lf/i/a/a/h1/u0/t/c$a;->b()V

    :cond_16
    const/4 v1, 0x0

    return v1

    .line 82
    :cond_17
    instance-of v2, v3, Lf/i/a/a/h1/u0/k;

    if-eqz v2, :cond_18

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    iput-wide v4, v0, Lf/i/a/a/h1/u0/n;->M:J

    .line 84
    move-object v2, v3

    check-cast v2, Lf/i/a/a/h1/u0/k;

    .line 85
    iput-object v0, v2, Lf/i/a/a/h1/u0/k;->C:Lf/i/a/a/h1/u0/n;

    .line 86
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, v2, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iput-object v2, v0, Lf/i/a/a/h1/u0/n;->B:Lf/i/a/a/b0;

    .line 88
    :cond_18
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->f:Lf/i/a/a/l1/b0;

    iget v5, v3, Lf/i/a/a/h1/s0/d;->b:I

    .line 89
    check-cast v4, Lf/i/a/a/l1/w;

    invoke-virtual {v4, v5}, Lf/i/a/a/l1/w;->b(I)I

    move-result v4

    .line 90
    invoke-virtual {v2, v3, v0, v4}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v16

    .line 91
    iget-object v5, v0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    iget-object v6, v3, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget v7, v3, Lf/i/a/a/h1/s0/d;->b:I

    iget v8, v0, Lf/i/a/a/h1/u0/n;->a:I

    iget-object v9, v3, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v10, v3, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v11, v3, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v12, v3, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v14, v3, Lf/i/a/a/h1/s0/d;->g:J

    invoke-virtual/range {v5 .. v17}, Lf/i/a/a/h1/f0$a;->w(Lf/i/a/a/l1/p;IILf/i/a/a/b0;ILjava/lang/Object;JJJ)V

    const/4 v1, 0x1

    return v1

    :cond_19
    const/4 v8, 0x0

    .line 92
    throw v8

    :cond_1a
    :goto_e
    const/4 v1, 0x0

    return v1
.end method

.method public g(J)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/n;->E()V

    return-void
.end method

.method public i(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->n:Landroid/os/Handler;

    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    iget-object v3, v1, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object v15, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 4
    iget-object v4, v15, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    iget-object v5, v15, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 6
    iget v6, v1, Lf/i/a/a/h1/s0/d;->b:I

    iget v7, v0, Lf/i/a/a/h1/u0/n;->a:I

    iget-object v8, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v9, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v10, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v13, v1, Lf/i/a/a/h1/s0/d;->g:J

    .line 7
    iget-wide v0, v15, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v19, v0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 8
    invoke-virtual/range {v2 .. v20}, Lf/i/a/a/h1/f0$a;->n(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/n;->E()V

    move-object/from16 v0, p0

    .line 10
    iget v1, v0, Lf/i/a/a/h1/u0/n;->A:I

    if-lez v1, :cond_1

    .line 11
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v1, Lf/i/a/a/h1/u0/l;

    invoke-virtual {v1, v0}, Lf/i/a/a/h1/u0/l;->i(Lf/i/a/a/h1/l0;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v2, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 3
    iget-wide v14, v2, Lf/i/a/a/l1/g0;->b:J

    .line 4
    instance-of v2, v1, Lf/i/a/a/h1/u0/k;

    .line 5
    iget-object v3, v0, Lf/i/a/a/h1/u0/n;->f:Lf/i/a/a/l1/b0;

    iget v5, v1, Lf/i/a/a/h1/s0/d;->b:I

    .line 6
    move-object v4, v3

    check-cast v4, Lf/i/a/a/l1/w;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lf/i/a/a/l1/w;->a(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    .line 7
    iget-object v8, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    .line 8
    iget-object v9, v8, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    iget-object v8, v8, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    iget-object v10, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 9
    invoke-virtual {v8, v10}, Lf/i/a/a/h1/o0;->a(Lf/i/a/a/b0;)I

    move-result v8

    invoke-interface {v9, v8}, Lf/i/a/a/j1/j;->r(I)I

    move-result v8

    .line 10
    invoke-interface {v9, v8, v3, v4}, Lf/i/a/a/j1/j;->a(IJ)Z

    move-result v3

    move/from16 v24, v3

    goto :goto_0

    :cond_0
    const/16 v24, 0x0

    :goto_0
    const/16 v16, 0x1

    if-eqz v24, :cond_3

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v14, v2

    if-nez v4, :cond_2

    .line 11
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/k;

    if-ne v2, v1, :cond_1

    const/4 v7, 0x1

    .line 12
    :cond_1
    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 13
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    iget-wide v2, v0, Lf/i/a/a/h1/u0/n;->L:J

    iput-wide v2, v0, Lf/i/a/a/h1/u0/n;->M:J

    .line 15
    :cond_2
    sget-object v2, Lf/i/a/a/l1/c0;->d:Lf/i/a/a/l1/c0$c;

    goto :goto_1

    .line 16
    :cond_3
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->f:Lf/i/a/a/l1/b0;

    iget v9, v1, Lf/i/a/a/h1/s0/d;->b:I

    .line 17
    move-object v8, v2

    check-cast v8, Lf/i/a/a/l1/w;

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v8 .. v13}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-eqz v4, :cond_4

    .line 18
    invoke-static {v7, v2, v3}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v2, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    .line 19
    :goto_1
    iget-object v3, v0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    iget-object v4, v1, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 20
    iget-object v6, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 21
    iget-object v5, v6, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 22
    iget-object v6, v6, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 23
    iget v7, v1, Lf/i/a/a/h1/s0/d;->b:I

    iget v8, v0, Lf/i/a/a/h1/u0/n;->a:I

    iget-object v9, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v10, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v11, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v12, v1, Lf/i/a/a/h1/s0/d;->f:J

    move-wide/from16 v17, v14

    iget-wide v14, v1, Lf/i/a/a/h1/s0/d;->g:J

    move-wide/from16 v20, v17

    .line 24
    invoke-virtual {v2}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v1

    xor-int/lit8 v23, v1, 0x1

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-object/from16 v22, p6

    .line 25
    invoke-virtual/range {v3 .. v23}, Lf/i/a/a/h1/f0$a;->t(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v24, :cond_6

    .line 26
    iget-boolean v1, v0, Lf/i/a/a/h1/u0/n;->z:Z

    if-nez v1, :cond_5

    .line 27
    iget-wide v3, v0, Lf/i/a/a/h1/u0/n;->L:J

    invoke-virtual {v0, v3, v4}, Lf/i/a/a/h1/u0/n;->f(J)Z

    goto :goto_2

    .line 28
    :cond_5
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v1, Lf/i/a/a/h1/u0/l;

    invoke-virtual {v1, v0}, Lf/i/a/a/h1/u0/l;->i(Lf/i/a/a/h1/l0;)V

    :cond_6
    :goto_2
    return-object v2
.end method

.method public q(II)Lf/i/a/a/b1/p;
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ne p2, v3, :cond_3

    .line 2
    iget v6, p0, Lf/i/a/a/h1/u0/n;->t:I

    if-eq v6, v4, :cond_2

    .line 3
    iget-boolean p2, p0, Lf/i/a/a/h1/u0/n;->s:Z

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lf/i/a/a/h1/u0/n;->r:[I

    aget p2, p2, v6

    if-ne p2, p1, :cond_0

    aget-object p1, v0, v6

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    :goto_0
    return-object p1

    .line 6
    :cond_1
    iput-boolean v3, p0, Lf/i/a/a/h1/u0/n;->s:Z

    .line 7
    iget-object p2, p0, Lf/i/a/a/h1/u0/n;->r:[I

    aput p1, p2, v6

    .line 8
    aget-object p1, v0, v6

    return-object p1

    .line 9
    :cond_2
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->Q:Z

    if-eqz v0, :cond_a

    .line 10
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    return-object p1

    :cond_3
    if-ne p2, v5, :cond_7

    .line 11
    iget v6, p0, Lf/i/a/a/h1/u0/n;->v:I

    if-eq v6, v4, :cond_6

    .line 12
    iget-boolean p2, p0, Lf/i/a/a/h1/u0/n;->u:Z

    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p0, Lf/i/a/a/h1/u0/n;->r:[I

    aget p2, p2, v6

    if-ne p2, p1, :cond_4

    aget-object p1, v0, v6

    goto :goto_1

    .line 14
    :cond_4
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    :goto_1
    return-object p1

    .line 15
    :cond_5
    iput-boolean v3, p0, Lf/i/a/a/h1/u0/n;->u:Z

    .line 16
    iget-object p2, p0, Lf/i/a/a/h1/u0/n;->r:[I

    aput p1, p2, v6

    .line 17
    aget-object p1, v0, v6

    return-object p1

    .line 18
    :cond_6
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->Q:Z

    if-eqz v0, :cond_a

    .line 19
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 20
    iget-object v4, p0, Lf/i/a/a/h1/u0/n;->r:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_8

    .line 21
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22
    :cond_9
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/n;->Q:Z

    if-eqz v0, :cond_a

    .line 23
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    return-object p1

    .line 24
    :cond_a
    new-instance v0, Lf/i/a/a/h1/u0/n$b;

    iget-object v4, p0, Lf/i/a/a/h1/u0/n;->d:Lf/i/a/a/l1/e;

    invoke-direct {v0, v4}, Lf/i/a/a/h1/u0/n$b;-><init>(Lf/i/a/a/l1/e;)V

    .line 25
    iget-wide v6, p0, Lf/i/a/a/h1/u0/n;->R:J

    invoke-virtual {v0, v6, v7}, Lf/i/a/a/h1/j0;->w(J)V

    .line 26
    iget v4, p0, Lf/i/a/a/h1/u0/n;->S:I

    .line 27
    iget-object v6, v0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 28
    iput v4, v6, Lf/i/a/a/h1/i0;->s:I

    .line 29
    iput-object p0, v0, Lf/i/a/a/h1/j0;->o:Lf/i/a/a/h1/j0$b;

    .line 30
    iget-object v4, p0, Lf/i/a/a/h1/u0/n;->r:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lf/i/a/a/h1/u0/n;->r:[I

    .line 31
    aput p1, v4, v1

    .line 32
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf/i/a/a/h1/j0;

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    .line 33
    aput-object v0, p1, v1

    .line 34
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->K:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->K:[Z

    if-eq p2, v3, :cond_b

    if-ne p2, v5, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 35
    :cond_c
    aput-boolean v2, p1, v1

    .line 36
    iget-boolean p1, p0, Lf/i/a/a/h1/u0/n;->I:Z

    iget-object v2, p0, Lf/i/a/a/h1/u0/n;->K:[Z

    aget-boolean v2, v2, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lf/i/a/a/h1/u0/n;->I:Z

    if-ne p2, v3, :cond_d

    .line 37
    iput-boolean v3, p0, Lf/i/a/a/h1/u0/n;->s:Z

    .line 38
    iput v1, p0, Lf/i/a/a/h1/u0/n;->t:I

    goto :goto_3

    :cond_d
    if-ne p2, v5, :cond_e

    .line 39
    iput-boolean v3, p0, Lf/i/a/a/h1/u0/n;->u:Z

    .line 40
    iput v1, p0, Lf/i/a/a/h1/u0/n;->v:I

    .line 41
    :cond_e
    :goto_3
    invoke-static {p2}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result p1

    iget v2, p0, Lf/i/a/a/h1/u0/n;->w:I

    invoke-static {v2}, Lf/i/a/a/h1/u0/n;->x(I)I

    move-result v2

    if-le p1, v2, :cond_f

    .line 42
    iput v1, p0, Lf/i/a/a/h1/u0/n;->x:I

    .line 43
    iput p2, p0, Lf/i/a/a/h1/u0/n;->w:I

    .line 44
    :cond_f
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->J:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/n;->J:[Z

    return-object v0
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->c:Lf/i/a/a/h1/u0/g;

    if-eqz v2, :cond_2

    .line 3
    instance-of v3, v1, Lf/i/a/a/h1/u0/g$a;

    if-eqz v3, :cond_0

    .line 4
    move-object v3, v1

    check-cast v3, Lf/i/a/a/h1/u0/g$a;

    .line 5
    iget-object v4, v3, Lf/i/a/a/h1/s0/j;->i:[B

    .line 6
    iput-object v4, v2, Lf/i/a/a/h1/u0/g;->l:[B

    .line 7
    iget-object v2, v2, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    iget-object v4, v3, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-object v4, v4, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    .line 8
    iget-object v3, v3, Lf/i/a/a/h1/u0/g$a;->k:[B

    .line 9
    invoke-virtual {v2, v4, v3}, Lf/i/a/a/h1/u0/g$b;->b(Landroid/net/Uri;[B)[B

    .line 10
    :cond_0
    iget-object v5, v0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    iget-object v6, v1, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 11
    iget-object v2, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 12
    iget-object v7, v2, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 13
    iget-object v8, v2, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 14
    iget v9, v1, Lf/i/a/a/h1/s0/d;->b:I

    iget v10, v0, Lf/i/a/a/h1/u0/n;->a:I

    iget-object v11, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v12, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v13, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v14, v1, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v3, v1, Lf/i/a/a/h1/s0/d;->g:J

    move-wide/from16 v16, v3

    .line 15
    iget-wide v1, v2, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v22, v1

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 16
    invoke-virtual/range {v5 .. v23}, Lf/i/a/a/h1/f0$a;->q(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    .line 17
    iget-boolean v1, v0, Lf/i/a/a/h1/u0/n;->z:Z

    if-nez v1, :cond_1

    .line 18
    iget-wide v1, v0, Lf/i/a/a/h1/u0/n;->L:J

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/u0/n;->f(J)Z

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->b:Lf/i/a/a/h1/u0/n$a;

    check-cast v1, Lf/i/a/a/h1/u0/l;

    invoke-virtual {v1, v0}, Lf/i/a/a/h1/u0/l;->i(Lf/i/a/a/h1/l0;)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    .line 20
    throw v1
.end method

.method public final w()Lf/i/a/a/h1/u0/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u0/k;

    return-object v0
.end method

.method public y(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->s:Z

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/n;->u:Z

    .line 3
    :cond_0
    iput p1, p0, Lf/i/a/a/h1/u0/n;->S:I

    .line 4
    iget-object p3, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 5
    iget-object v3, v3, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 6
    iput p1, v3, Lf/i/a/a/h1/i0;->s:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p3, Lf/i/a/a/h1/j0;->n:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final z()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/u0/n;->M:J

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
