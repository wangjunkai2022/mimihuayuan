.class public final Lf/i/a/a/h1/u0/k;
.super Lf/i/a/a/h1/s0/l;
.source "HlsMediaChunk.java"


# static fields
.field public static final H:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Lf/i/a/a/b1/g;

.field public B:Z

.field public C:Lf/i/a/a/h1/u0/n;

.field public D:I

.field public E:Z

.field public volatile F:Z

.field public G:Z

.field public final j:I

.field public final k:I

.field public final l:Landroid/net/Uri;

.field public final m:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Lf/i/a/a/l1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:Z

.field public final p:Z

.field public final q:Lf/i/a/a/m1/e0;

.field public final r:Z

.field public final s:Lf/i/a/a/h1/u0/i;

.field public final t:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lf/i/a/a/z0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final v:Lf/i/a/a/b1/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final w:Lf/i/a/a/d1/i/g;

.field public final x:Lf/i/a/a/m1/u;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lf/i/a/a/h1/u0/k;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ZLf/i/a/a/l1/m;Lf/i/a/a/l1/p;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLf/i/a/a/m1/e0;Lf/i/a/a/z0/e;Lf/i/a/a/b1/g;Lf/i/a/a/d1/i/g;Lf/i/a/a/m1/u;Z)V
    .locals 14
    .param p7    # Lf/i/a/a/l1/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lf/i/a/a/z0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p24    # Lf/i/a/a/b1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/i;",
            "Lf/i/a/a/l1/m;",
            "Lf/i/a/a/l1/p;",
            "Lf/i/a/a/b0;",
            "Z",
            "Lf/i/a/a/l1/m;",
            "Lf/i/a/a/l1/p;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lf/i/a/a/m1/e0;",
            "Lf/i/a/a/z0/e;",
            "Lf/i/a/a/b1/g;",
            "Lf/i/a/a/d1/i/g;",
            "Lf/i/a/a/m1/u;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Lf/i/a/a/h1/s0/l;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->y:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lf/i/a/a/h1/u0/k;->k:I

    move-object/from16 v0, p6

    .line 4
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->m:Lf/i/a/a/l1/m;

    .line 5
    iput-object v13, v12, Lf/i/a/a/h1/u0/k;->n:Lf/i/a/a/l1/p;

    move/from16 v0, p8

    .line 6
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->z:Z

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->l:Landroid/net/Uri;

    move/from16 v0, p21

    .line 8
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->o:Z

    move-object/from16 v0, p22

    .line 9
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->q:Lf/i/a/a/m1/e0;

    move/from16 v0, p20

    .line 10
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->p:Z

    move-object v0, p1

    .line 11
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->s:Lf/i/a/a/h1/u0/i;

    move-object/from16 v0, p10

    .line 12
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->t:Ljava/util/List;

    move-object/from16 v0, p23

    .line 13
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->u:Lf/i/a/a/z0/e;

    move-object/from16 v0, p24

    .line 14
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->v:Lf/i/a/a/b1/g;

    move-object/from16 v0, p25

    .line 15
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->w:Lf/i/a/a/d1/i/g;

    move-object/from16 v0, p26

    .line 16
    iput-object v0, v12, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    move/from16 v0, p27

    .line 17
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->r:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-boolean v0, v12, Lf/i/a/a/h1/u0/k;->E:Z

    .line 19
    sget-object v0, Lf/i/a/a/h1/u0/k;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lf/i/a/a/h1/u0/k;->j:I

    return-void
.end method

.method public static e(Lf/i/a/a/h1/u0/i;Lf/i/a/a/l1/m;Lf/i/a/a/b0;JLf/i/a/a/h1/u0/t/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLf/i/a/a/h1/u0/q;Lf/i/a/a/h1/u0/k;[B[B)Lf/i/a/a/h1/u0/k;
    .locals 36
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lf/i/a/a/h1/u0/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/i;",
            "Lf/i/a/a/l1/m;",
            "Lf/i/a/a/b0;",
            "J",
            "Lf/i/a/a/h1/u0/t/f;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lf/i/a/a/h1/u0/q;",
            "Lf/i/a/a/h1/u0/k;",
            "[B[B)",
            "Lf/i/a/a/h1/u0/k;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    .line 1
    iget-object v7, v1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/u0/t/f$a;

    .line 2
    new-instance v15, Lf/i/a/a/l1/p;

    iget-object v8, v1, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    iget-object v9, v7, Lf/i/a/a/h1/u0/t/f$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v8, v9}, Lc/a/a/b/g/h;->e1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-wide v10, v7, Lf/i/a/a/h1/u0/t/f$a;->i:J

    iget-wide v12, v7, Lf/i/a/a/h1/u0/t/f$a;->j:J

    const/4 v14, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v5, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_1

    .line 4
    iget-object v11, v7, Lf/i/a/a/h1/u0/t/f$a;->h:Ljava/lang/String;

    .line 5
    invoke-static {v11}, Lf/i/a/a/h1/u0/k;->g(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 6
    new-instance v12, Lf/i/a/a/h1/u0/d;

    invoke-direct {v12, v0, v5, v11}, Lf/i/a/a/h1/u0/d;-><init>(Lf/i/a/a/l1/m;[B[B)V

    goto :goto_2

    :cond_2
    move-object v12, v0

    .line 7
    :goto_2
    iget-object v5, v7, Lf/i/a/a/h1/u0/t/f$a;->b:Lf/i/a/a/h1/u0/t/f$a;

    if-eqz v5, :cond_6

    if-eqz v6, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_4

    .line 8
    iget-object v14, v5, Lf/i/a/a/h1/u0/t/f$a;->h:Ljava/lang/String;

    .line 9
    invoke-static {v14}, Lf/i/a/a/h1/u0/k;->g(Ljava/lang/String;)[B

    move-result-object v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 10
    :goto_4
    iget-object v8, v1, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    iget-object v9, v5, Lf/i/a/a/h1/u0/t/f$a;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lc/a/a/b/g/h;->e1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 11
    new-instance v8, Lf/i/a/a/l1/p;

    move/from16 p14, v11

    iget-wide v10, v5, Lf/i/a/a/h1/u0/t/f$a;->i:J

    move-wide/from16 v20, v10

    iget-wide v9, v5, Lf/i/a/a/h1/u0/t/f$a;->j:J

    const/16 v24, 0x0

    move-object/from16 v18, v8

    move-wide/from16 v22, v9

    invoke-direct/range {v18 .. v24}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v6, :cond_5

    .line 12
    new-instance v5, Lf/i/a/a/h1/u0/d;

    invoke-direct {v5, v0, v6, v14}, Lf/i/a/a/h1/u0/d;-><init>(Lf/i/a/a/l1/m;[B[B)V

    move-object v0, v5

    :cond_5
    move/from16 v5, p14

    move-object v14, v0

    move-object v0, v8

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 13
    :goto_5
    iget-wide v8, v7, Lf/i/a/a/h1/u0/t/f$a;->e:J

    add-long v21, p3, v8

    .line 14
    iget-wide v8, v7, Lf/i/a/a/h1/u0/t/f$a;->c:J

    add-long v23, v21, v8

    .line 15
    iget v6, v1, Lf/i/a/a/h1/u0/t/f;->h:I

    iget v8, v7, Lf/i/a/a/h1/u0/t/f$a;->d:I

    add-int/2addr v6, v8

    if-eqz v4, :cond_a

    .line 16
    iget-object v8, v4, Lf/i/a/a/h1/u0/k;->w:Lf/i/a/a/d1/i/g;

    .line 17
    iget-object v9, v4, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    .line 18
    iget-object v10, v4, Lf/i/a/a/h1/u0/k;->l:Landroid/net/Uri;

    move-object/from16 v11, p7

    .line 19
    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, v4, Lf/i/a/a/h1/u0/k;->G:Z

    if-nez v10, :cond_7

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v16, 0x1

    .line 20
    :goto_7
    iget-boolean v10, v4, Lf/i/a/a/h1/u0/k;->B:Z

    if-eqz v10, :cond_9

    iget v10, v4, Lf/i/a/a/h1/u0/k;->k:I

    if-ne v10, v6, :cond_9

    if-nez v16, :cond_9

    iget-object v10, v4, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v32, v10

    move/from16 v35, v16

    goto :goto_9

    :cond_a
    move-object/from16 v11, p7

    .line 21
    new-instance v4, Lf/i/a/a/d1/i/g;

    invoke-direct {v4}, Lf/i/a/a/d1/i/g;-><init>()V

    .line 22
    new-instance v8, Lf/i/a/a/m1/u;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Lf/i/a/a/m1/u;-><init>(I)V

    move-object/from16 v33, v4

    move-object/from16 v34, v8

    const/16 v32, 0x0

    const/16 v35, 0x0

    .line 23
    :goto_9
    new-instance v4, Lf/i/a/a/h1/u0/k;

    iget-wide v8, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    int-to-long v1, v2

    add-long v25, v8, v1

    iget-boolean v1, v7, Lf/i/a/a/h1/u0/t/f$a;->k:Z

    .line 24
    iget-object v2, v3, Lf/i/a/a/h1/u0/q;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/m1/e0;

    if-nez v2, :cond_b

    .line 25
    new-instance v2, Lf/i/a/a/m1/e0;

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v2, v8, v9}, Lf/i/a/a/m1/e0;-><init>(J)V

    .line 26
    iget-object v3, v3, Lf/i/a/a/h1/u0/q;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    move-object/from16 v30, v2

    .line 27
    iget-object v2, v7, Lf/i/a/a/h1/u0/t/f$a;->f:Lf/i/a/a/z0/e;

    move-object/from16 v31, v2

    move-object v8, v4

    move-object/from16 v9, p0

    move-object v10, v12

    move-object v11, v15

    move-object/from16 v12, p2

    move-object v15, v0

    move/from16 v16, v5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v27, v6

    move/from16 v28, v1

    move/from16 v29, p11

    invoke-direct/range {v8 .. v35}, Lf/i/a/a/h1/u0/k;-><init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ZLf/i/a/a/l1/m;Lf/i/a/a/l1/p;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLf/i/a/a/m1/e0;Lf/i/a/a/z0/e;Lf/i/a/a/b1/g;Lf/i/a/a/d1/i/g;Lf/i/a/a/m1/u;Z)V

    return-object v4
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 4
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->v:Lf/i/a/a/b1/g;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    .line 3
    iput-boolean v2, p0, Lf/i/a/a/h1/u0/k;->B:Z

    .line 4
    iput-boolean v1, p0, Lf/i/a/a/h1/u0/k;->E:Z

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->C:Lf/i/a/a/h1/u0/n;

    iget v3, p0, Lf/i/a/a/h1/u0/k;->j:I

    iget-boolean v4, p0, Lf/i/a/a/h1/u0/k;->r:Z

    invoke-virtual {v0, v3, v4, v2}, Lf/i/a/a/h1/u0/n;->y(IZZ)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->E:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->m:Lf/i/a/a/l1/m;

    iget-object v3, p0, Lf/i/a/a/h1/u0/k;->n:Lf/i/a/a/l1/p;

    iget-boolean v4, p0, Lf/i/a/a/h1/u0/k;->z:Z

    invoke-virtual {p0, v0, v3, v4}, Lf/i/a/a/h1/u0/k;->f(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Z)V

    .line 8
    iput v1, p0, Lf/i/a/a/h1/u0/k;->D:I

    .line 9
    iput-boolean v1, p0, Lf/i/a/a/h1/u0/k;->E:Z

    .line 10
    :goto_0
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->F:Z

    if-nez v0, :cond_6

    .line 11
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->p:Z

    if-nez v0, :cond_5

    .line 12
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->o:Z

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->q:Lf/i/a/a/m1/e0;

    .line 14
    monitor-enter v0

    .line 15
    :goto_1
    :try_start_0
    iget-wide v3, v0, Lf/i/a/a/m1/e0;->c:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 18
    :cond_3
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->q:Lf/i/a/a/m1/e0;

    .line 19
    iget-wide v3, v0, Lf/i/a/a/m1/e0;->a:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 20
    iget-wide v3, p0, Lf/i/a/a/h1/s0/d;->f:J

    invoke-virtual {v0, v3, v4}, Lf/i/a/a/m1/e0;->d(J)V

    .line 21
    :cond_4
    :goto_2
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-boolean v3, p0, Lf/i/a/a/h1/u0/k;->y:Z

    invoke-virtual {p0, v0, v1, v3}, Lf/i/a/a/h1/u0/k;->f(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Z)V

    .line 22
    :cond_5
    iput-boolean v2, p0, Lf/i/a/a/h1/u0/k;->G:Z

    :cond_6
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/k;->F:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->G:Z

    return v0
.end method

.method public final f(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget p3, p0, Lf/i/a/a/h1/u0/k;->D:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lf/i/a/a/h1/u0/k;->D:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lf/i/a/a/l1/p;->c(J)Lf/i/a/a/l1/p;

    move-result-object p3

    const/4 v1, 0x0

    .line 3
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/h1/u0/k;->h(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/b1/d;

    move-result-object p3

    if-eqz v1, :cond_2

    .line 4
    iget v1, p0, Lf/i/a/a/h1/u0/k;->D:I

    invoke-virtual {p3, v1}, Lf/i/a/a/b1/d;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 5
    :try_start_1
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/k;->F:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lf/i/a/a/b1/g;->c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    iget-wide v1, p3, Lf/i/a/a/b1/d;->d:J

    .line 8
    iget-wide p2, p2, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lf/i/a/a/h1/u0/k;->D:I

    .line 9
    throw v0

    .line 10
    :cond_3
    iget-wide v0, p3, Lf/i/a/a/b1/d;->d:J

    .line 11
    iget-wide p2, p2, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lf/i/a/a/h1/u0/k;->D:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-static {p1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 13
    throw p2
.end method

.method public final h(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/b1/d;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p2}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v6

    .line 2
    new-instance v15, Lf/i/a/a/b1/d;

    iget-wide v4, v1, Lf/i/a/a/l1/p;->d:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lf/i/a/a/b1/d;-><init>(Lf/i/a/a/l1/m;JJ)V

    .line 3
    iget-object v2, v0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 4
    iput v2, v15, Lf/i/a/a/b1/d;->f:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    :try_start_0
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    const/16 v6, 0xa

    .line 6
    invoke-virtual {v15, v5, v2, v6, v2}, Lf/i/a/a/b1/d;->d([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 8
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->r()I

    move-result v5

    .line 9
    sget v7, Lf/i/a/a/d1/i/g;->b:I

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lf/i/a/a/m1/u;->B(I)V

    .line 11
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->o()I

    move-result v5

    add-int/lit8 v7, v5, 0xa

    .line 12
    iget-object v8, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    .line 13
    iget-object v9, v8, Lf/i/a/a/m1/u;->a:[B

    array-length v10, v9

    if-le v7, v10, :cond_1

    .line 14
    invoke-virtual {v8, v7}, Lf/i/a/a/m1/u;->w(I)V

    .line 15
    iget-object v7, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v9, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_1
    iget-object v7, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    .line 17
    invoke-virtual {v15, v7, v6, v5, v2}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 18
    iget-object v6, v0, Lf/i/a/a/h1/u0/k;->w:Lf/i/a/a/d1/i/g;

    iget-object v7, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v6, v7, v5}, Lf/i/a/a/d1/i/g;->c([BI)Lf/i/a/a/d1/a;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    iget-object v6, v5, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    .line 20
    iget-object v8, v5, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    aget-object v8, v8, v7

    .line 21
    instance-of v9, v8, Lf/i/a/a/d1/i/k;

    if-eqz v9, :cond_3

    .line 22
    check-cast v8, Lf/i/a/a/d1/i/k;

    .line 23
    iget-object v9, v8, Lf/i/a/a/d1/i/k;->b:Ljava/lang/String;

    const-string v10, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 24
    iget-object v5, v8, Lf/i/a/a/d1/i/k;->c:[B

    iget-object v6, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    iget-object v6, v6, Lf/i/a/a/m1/u;->a:[B

    const/16 v7, 0x8

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v7}, Lf/i/a/a/m1/u;->w(I)V

    .line 26
    iget-object v5, v0, Lf/i/a/a/h1/u0/k;->x:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v5

    const-wide v7, 0x1ffffffffL

    and-long/2addr v5, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    move-wide v5, v3

    .line 27
    :goto_2
    iput v2, v15, Lf/i/a/a/b1/d;->f:I

    .line 28
    iget-object v8, v0, Lf/i/a/a/h1/u0/k;->s:Lf/i/a/a/h1/u0/i;

    iget-object v9, v0, Lf/i/a/a/h1/u0/k;->v:Lf/i/a/a/b1/g;

    iget-object v10, v1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iget-object v11, v0, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget-object v12, v0, Lf/i/a/a/h1/u0/k;->t:Ljava/util/List;

    iget-object v13, v0, Lf/i/a/a/h1/u0/k;->u:Lf/i/a/a/z0/e;

    iget-object v14, v0, Lf/i/a/a/h1/u0/k;->q:Lf/i/a/a/m1/e0;

    .line 29
    invoke-interface/range {p1 .. p1}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v1

    move-object v7, v15

    move-object v15, v1

    move-object/from16 v16, v7

    .line 30
    invoke-interface/range {v8 .. v16}, Lf/i/a/a/h1/u0/i;->a(Lf/i/a/a/b1/g;Landroid/net/Uri;Lf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/z0/e;Lf/i/a/a/m1/e0;Ljava/util/Map;Lf/i/a/a/b1/d;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v1

    .line 31
    iget-object v8, v1, Lf/i/a/a/h1/u0/i$a;->a:Lf/i/a/a/b1/g;

    iput-object v8, v0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    .line 32
    iget-boolean v8, v1, Lf/i/a/a/h1/u0/i$a;->c:Z

    iput-boolean v8, v0, Lf/i/a/a/h1/u0/k;->B:Z

    .line 33
    iget-boolean v1, v1, Lf/i/a/a/h1/u0/i$a;->b:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, v0, Lf/i/a/a/h1/u0/k;->C:Lf/i/a/a/h1/u0/n;

    cmp-long v8, v5, v3

    if-eqz v8, :cond_5

    iget-object v3, v0, Lf/i/a/a/h1/u0/k;->q:Lf/i/a/a/m1/e0;

    .line 35
    invoke-virtual {v3, v5, v6}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v3

    goto :goto_3

    :cond_5
    iget-wide v3, v0, Lf/i/a/a/h1/s0/d;->f:J

    .line 36
    :goto_3
    iput-wide v3, v1, Lf/i/a/a/h1/u0/n;->R:J

    .line 37
    iget-object v1, v1, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v5, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_7

    aget-object v8, v1, v6

    .line 38
    iget-wide v9, v8, Lf/i/a/a/h1/j0;->l:J

    cmp-long v11, v9, v3

    if-eqz v11, :cond_6

    .line 39
    iput-wide v3, v8, Lf/i/a/a/h1/j0;->l:J

    const/4 v9, 0x1

    .line 40
    iput-boolean v9, v8, Lf/i/a/a/h1/j0;->j:Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 41
    :cond_7
    iget-object v1, v0, Lf/i/a/a/h1/u0/k;->C:Lf/i/a/a/h1/u0/n;

    iget v3, v0, Lf/i/a/a/h1/u0/k;->j:I

    iget-boolean v4, v0, Lf/i/a/a/h1/u0/k;->r:Z

    invoke-virtual {v1, v3, v4, v2}, Lf/i/a/a/h1/u0/n;->y(IZZ)V

    .line 42
    iget-object v1, v0, Lf/i/a/a/h1/u0/k;->A:Lf/i/a/a/b1/g;

    iget-object v2, v0, Lf/i/a/a/h1/u0/k;->C:Lf/i/a/a/h1/u0/n;

    invoke-interface {v1, v2}, Lf/i/a/a/b1/g;->d(Lf/i/a/a/b1/h;)V

    goto :goto_5

    :cond_8
    move-object v7, v15

    :goto_5
    return-object v7
.end method
