.class public final Lf/i/a/a/w0/v;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lf/i/a/a/w0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/w0/v$c;,
        Lf/i/a/a/w0/v$f;,
        Lf/i/a/a/w0/v$e;,
        Lf/i/a/a/w0/v$d;,
        Lf/i/a/a/w0/v$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:F

.field public E:[Lf/i/a/a/w0/m;

.field public F:[Ljava/nio/ByteBuffer;

.field public G:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public H:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public I:[B

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:Lf/i/a/a/w0/s;

.field public Q:Z

.field public R:J

.field public final a:Lf/i/a/a/w0/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lf/i/a/a/w0/v$b;

.field public final c:Z

.field public final d:Lf/i/a/a/w0/u;

.field public final e:Lf/i/a/a/w0/e0;

.field public final f:[Lf/i/a/a/w0/m;

.field public final g:[Lf/i/a/a/w0/m;

.field public final h:Landroid/os/ConditionVariable;

.field public final i:Lf/i/a/a/w0/r;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/w0/v$e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lf/i/a/a/w0/p$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lf/i/a/a/w0/v$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lf/i/a/a/w0/v$c;

.field public o:Landroid/media/AudioTrack;

.field public p:Lf/i/a/a/w0/i;

.field public q:Lf/i/a/a/j0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Lf/i/a/a/j0;

.field public s:J

.field public t:J

.field public u:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lf/i/a/a/w0/j;[Lf/i/a/a/w0/m;)V
    .locals 5
    .param p1    # Lf/i/a/a/w0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lf/i/a/a/w0/v$d;

    invoke-direct {v0, p2}, Lf/i/a/a/w0/v$d;-><init>([Lf/i/a/a/w0/m;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf/i/a/a/w0/v;->a:Lf/i/a/a/w0/j;

    const/4 p1, 0x0

    .line 4
    iput-object v0, p0, Lf/i/a/a/w0/v;->b:Lf/i/a/a/w0/v$b;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lf/i/a/a/w0/v;->c:Z

    .line 6
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lf/i/a/a/w0/v;->h:Landroid/os/ConditionVariable;

    .line 7
    new-instance v1, Lf/i/a/a/w0/r;

    new-instance v3, Lf/i/a/a/w0/v$f;

    invoke-direct {v3, p0, p1}, Lf/i/a/a/w0/v$f;-><init>(Lf/i/a/a/w0/v;Lf/i/a/a/w0/v$a;)V

    invoke-direct {v1, v3}, Lf/i/a/a/w0/r;-><init>(Lf/i/a/a/w0/r$a;)V

    iput-object v1, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    .line 8
    new-instance p1, Lf/i/a/a/w0/u;

    invoke-direct {p1}, Lf/i/a/a/w0/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/v;->d:Lf/i/a/a/w0/u;

    .line 9
    new-instance p1, Lf/i/a/a/w0/e0;

    invoke-direct {p1}, Lf/i/a/a/w0/e0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/v;->e:Lf/i/a/a/w0/e0;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lf/i/a/a/w0/t;

    .line 11
    new-instance v3, Lf/i/a/a/w0/a0;

    invoke-direct {v3}, Lf/i/a/a/w0/a0;-><init>()V

    aput-object v3, v1, p2

    iget-object v3, p0, Lf/i/a/a/w0/v;->d:Lf/i/a/a/w0/u;

    aput-object v3, v1, v2

    const/4 v3, 0x2

    iget-object v4, p0, Lf/i/a/a/w0/v;->e:Lf/i/a/a/w0/e0;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Lf/i/a/a/w0/v$d;->d()[Lf/i/a/a/w0/m;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array v0, p2, [Lf/i/a/a/w0/m;

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf/i/a/a/w0/m;

    iput-object p1, p0, Lf/i/a/a/w0/v;->f:[Lf/i/a/a/w0/m;

    new-array p1, v2, [Lf/i/a/a/w0/m;

    .line 14
    new-instance v0, Lf/i/a/a/w0/y;

    invoke-direct {v0}, Lf/i/a/a/w0/y;-><init>()V

    aput-object v0, p1, p2

    iput-object p1, p0, Lf/i/a/a/w0/v;->g:[Lf/i/a/a/w0/m;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lf/i/a/a/w0/v;->D:F

    .line 16
    iput p2, p0, Lf/i/a/a/w0/v;->B:I

    .line 17
    sget-object p1, Lf/i/a/a/w0/i;->e:Lf/i/a/a/w0/i;

    iput-object p1, p0, Lf/i/a/a/w0/v;->p:Lf/i/a/a/w0/i;

    .line 18
    iput p2, p0, Lf/i/a/a/w0/v;->O:I

    .line 19
    new-instance p1, Lf/i/a/a/w0/s;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lf/i/a/a/w0/s;-><init>(IF)V

    iput-object p1, p0, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    .line 20
    sget-object p1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    iput-object p1, p0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lf/i/a/a/w0/v;->K:I

    new-array p1, p2, [Lf/i/a/a/w0/m;

    .line 22
    iput-object p1, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    new-array p1, p2, [Ljava/nio/ByteBuffer;

    .line 23
    iput-object p1, p0, Lf/i/a/a/w0/v;->F:[Ljava/nio/ByteBuffer;

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lf/i/a/a/j0;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v0, v0, Lf/i/a/a/w0/v$c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/w0/v;->b:Lf/i/a/a/w0/v$b;

    .line 2
    invoke-interface {v0, p1}, Lf/i/a/a/w0/v$b;->a(Lf/i/a/a/j0;)Lf/i/a/a/j0;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    :goto_0
    move-object v1, p1

    .line 3
    iget-object p1, p0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    new-instance v7, Lf/i/a/a/w0/v$e;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lf/i/a/a/w0/v$c;->b(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/w0/v$e;-><init>(Lf/i/a/a/j0;JJLf/i/a/a/w0/v$a;)V

    .line 6
    invoke-virtual {p1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-object p1, p1, Lf/i/a/a/w0/v$c;->k:[Lf/i/a/a/w0/m;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v1, p1, v0

    .line 10
    invoke-interface {v1}, Lf/i/a/a/w0/m;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v1}, Lf/i/a/a/w0/m;->flush()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 14
    new-array p3, p1, [Lf/i/a/a/w0/m;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lf/i/a/a/w0/m;

    iput-object p2, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    .line 15
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lf/i/a/a/w0/v;->F:[Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->e()V

    return-void
.end method

.method public b(IIII[III)V
    .locals 18
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/p$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x15

    if-ge v2, v5, :cond_0

    if-ne v0, v4, :cond_0

    if-nez p5, :cond_0

    new-array v2, v3, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 2
    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p5

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lf/i/a/a/m1/h0;->T(I)Z

    move-result v7

    const/4 v3, 0x4

    const/4 v4, 0x1

    move/from16 v6, p1

    if-eqz v7, :cond_2

    if-eq v6, v3, :cond_2

    const/4 v8, 0x1

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 4
    :goto_1
    iget-boolean v8, v1, Lf/i/a/a/w0/v;->c:Z

    if-eqz v8, :cond_3

    .line 5
    invoke-virtual {v1, v0, v3}, Lf/i/a/a/w0/v;->o(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6
    invoke-static/range {p1 .. p1}, Lf/i/a/a/m1/h0;->S(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 7
    iget-object v9, v1, Lf/i/a/a/w0/v;->g:[Lf/i/a/a/w0/m;

    goto :goto_3

    :cond_4
    iget-object v9, v1, Lf/i/a/a/w0/v;->f:[Lf/i/a/a/w0/m;

    :goto_3
    move-object v14, v9

    if-eqz v15, :cond_7

    .line 8
    iget-object v9, v1, Lf/i/a/a/w0/v;->e:Lf/i/a/a/w0/e0;

    move/from16 v10, p6

    .line 9
    iput v10, v9, Lf/i/a/a/w0/e0;->i:I

    move/from16 v10, p7

    .line 10
    iput v10, v9, Lf/i/a/a/w0/e0;->j:I

    .line 11
    iget-object v9, v1, Lf/i/a/a/w0/v;->d:Lf/i/a/a/w0/u;

    .line 12
    iput-object v2, v9, Lf/i/a/a/w0/u;->h:[I

    .line 13
    array-length v2, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v12, p3

    move v11, v0

    move v13, v6

    :goto_4
    if-ge v9, v2, :cond_6

    aget-object v5, v14, v9

    .line 14
    :try_start_0
    invoke-interface {v5, v12, v11, v13}, Lf/i/a/a/w0/m;->f(III)Z

    move-result v17
    :try_end_0
    .catch Lf/i/a/a/w0/m$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int v10, v10, v17

    .line 15
    invoke-interface {v5}, Lf/i/a/a/w0/m;->isActive()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 16
    invoke-interface {v5}, Lf/i/a/a/w0/m;->e()I

    move-result v11

    .line 17
    invoke-interface {v5}, Lf/i/a/a/w0/m;->g()I

    move-result v12

    .line 18
    invoke-interface {v5}, Lf/i/a/a/w0/m;->h()I

    move-result v13

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x15

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 19
    new-instance v0, Lf/i/a/a/w0/p$a;

    invoke-direct {v0, v2}, Lf/i/a/a/w0/p$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v2, v10

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    move/from16 v12, p3

    move v11, v0

    move v13, v6

    const/4 v2, 0x0

    .line 20
    :goto_5
    sget v5, Lf/i/a/a/m1/h0;->a:I

    const/16 v9, 0x1c

    if-gt v5, v9, :cond_a

    if-nez v7, :cond_a

    const/4 v5, 0x7

    if-ne v11, v5, :cond_8

    const/16 v3, 0x8

    goto :goto_6

    :cond_8
    const/4 v5, 0x3

    if-eq v11, v5, :cond_9

    if-eq v11, v3, :cond_9

    const/4 v3, 0x5

    if-ne v11, v3, :cond_a

    :cond_9
    const/4 v3, 0x6

    goto :goto_6

    :cond_a
    move v3, v11

    .line 21
    :goto_6
    sget v5, Lf/i/a/a/m1/h0;->a:I

    const/16 v9, 0x1a

    if-gt v5, v9, :cond_b

    sget-object v5, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v9, "fugu"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v7, :cond_b

    if-ne v3, v4, :cond_b

    const/4 v3, 0x2

    :cond_b
    packed-switch v3, :pswitch_data_0

    goto :goto_8

    .line 22
    :pswitch_0
    sget v3, Lf/i/a/a/m1/h0;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_c

    goto :goto_7

    :cond_c
    const/16 v4, 0x15

    if-lt v3, v4, :cond_d

    :goto_7
    const/16 v3, 0x18fc

    goto :goto_9

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_9

    :pswitch_2
    const/16 v3, 0xfc

    goto :goto_9

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_9

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_9

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_9

    :pswitch_6
    const/16 v3, 0xc

    goto :goto_9

    :pswitch_7
    const/4 v3, 0x4

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_15

    if-eqz v7, :cond_e

    .line 23
    invoke-static/range {p1 .. p2}, Lf/i/a/a/m1/h0;->H(II)I

    move-result v0

    goto :goto_a

    :cond_e
    const/4 v0, -0x1

    :goto_a
    if-eqz v7, :cond_f

    .line 24
    invoke-static {v13, v11}, Lf/i/a/a/m1/h0;->H(II)I

    move-result v4

    move v10, v4

    goto :goto_b

    :cond_f
    const/4 v4, -0x1

    const/4 v10, -0x1

    :goto_b
    if-eqz v15, :cond_10

    if-nez v8, :cond_10

    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 25
    :goto_c
    new-instance v4, Lf/i/a/a/w0/v$c;

    move-object v6, v4

    move v8, v0

    move/from16 v9, p3

    move v11, v12

    move v12, v3

    move-object v0, v14

    move/from16 v14, p4

    move-object/from16 v17, v0

    invoke-direct/range {v6 .. v17}, Lf/i/a/a/w0/v$c;-><init>(ZIIIIIIIZZ[Lf/i/a/a/w0/m;)V

    if-nez v2, :cond_12

    .line 26
    iget-object v0, v1, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v0, 0x1

    .line 27
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 28
    invoke-virtual {v4, v2}, Lf/i/a/a/w0/v$c;->a(Lf/i/a/a/w0/v$c;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_14

    .line 29
    :cond_13
    iput-object v4, v1, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    goto :goto_f

    .line 30
    :cond_14
    iput-object v4, v1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    :goto_f
    return-void

    .line 31
    :cond_15
    new-instance v0, Lf/i/a/a/w0/p$a;

    const-string v2, "Unsupported channel count: "

    invoke-static {v2, v11}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/i/a/a/w0/p$a;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/p$d;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/w0/v;->K:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v0, v0, Lf/i/a/a/w0/v$c;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lf/i/a/a/w0/v;->K:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_2
    iget v4, p0, Lf/i/a/a/w0/v;->K:I

    iget-object v5, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Lf/i/a/a/w0/m;->c()V

    .line 6
    :cond_2
    invoke-virtual {p0, v7, v8}, Lf/i/a/a/w0/v;->l(J)V

    .line 7
    invoke-interface {v4}, Lf/i/a/a/w0/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 8
    :cond_3
    iget v0, p0, Lf/i/a/a/w0/v;->K:I

    add-int/2addr v0, v2

    iput v0, p0, Lf/i/a/a/w0/v;->K:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lf/i/a/a/w0/v;->p(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 12
    :cond_5
    iput v1, p0, Lf/i/a/a/w0/v;->K:I

    return v2
.end method

.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/i/a/a/w0/v;->w:J

    .line 3
    iput-wide v0, p0, Lf/i/a/a/w0/v;->x:J

    .line 4
    iput-wide v0, p0, Lf/i/a/a/w0/v;->y:J

    .line 5
    iput-wide v0, p0, Lf/i/a/a/w0/v;->z:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lf/i/a/a/w0/v;->A:I

    .line 7
    iget-object v3, p0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iput-object v3, p0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    .line 9
    iput-object v4, p0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/w0/v$e;

    .line 12
    iget-object v3, v3, Lf/i/a/a/w0/v$e;->a:Lf/i/a/a/j0;

    .line 13
    iput-object v3, p0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    .line 14
    :cond_1
    :goto_0
    iget-object v3, p0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 15
    iput-wide v0, p0, Lf/i/a/a/w0/v;->s:J

    .line 16
    iput-wide v0, p0, Lf/i/a/a/w0/v;->t:J

    .line 17
    iget-object v3, p0, Lf/i/a/a/w0/v;->e:Lf/i/a/a/w0/e0;

    .line 18
    iput-wide v0, v3, Lf/i/a/a/w0/e0;->p:J

    .line 19
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->e()V

    .line 20
    iput-object v4, p0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    .line 21
    iput-object v4, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    .line 22
    iput-boolean v2, p0, Lf/i/a/a/w0/v;->M:Z

    .line 23
    iput-boolean v2, p0, Lf/i/a/a/w0/v;->L:Z

    const/4 v3, -0x1

    .line 24
    iput v3, p0, Lf/i/a/a/w0/v;->K:I

    .line 25
    iput-object v4, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    .line 26
    iput v2, p0, Lf/i/a/a/w0/v;->v:I

    .line 27
    iput v2, p0, Lf/i/a/a/w0/v;->B:I

    .line 28
    iget-object v3, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    .line 29
    iget-object v3, v3, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    invoke-static {v3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 30
    iget-object v3, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 31
    :cond_3
    iget-object v3, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    .line 32
    iput-object v4, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    .line 33
    iget-object v5, p0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    if-eqz v5, :cond_4

    .line 34
    iput-object v5, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 35
    iput-object v4, p0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    .line 36
    :cond_4
    iget-object v5, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    .line 37
    iput-wide v0, v5, Lf/i/a/a/w0/r;->j:J

    .line 38
    iput v2, v5, Lf/i/a/a/w0/r;->u:I

    .line 39
    iput v2, v5, Lf/i/a/a/w0/r;->t:I

    .line 40
    iput-wide v0, v5, Lf/i/a/a/w0/r;->k:J

    .line 41
    iput-object v4, v5, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    .line 42
    iput-object v4, v5, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    .line 43
    iget-object v0, p0, Lf/i/a/a/w0/v;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 44
    new-instance v0, Lf/i/a/a/w0/v$a;

    invoke-direct {v0, p0, v3}, Lf/i/a/a/w0/v$a;-><init>(Lf/i/a/a/w0/v;Landroid/media/AudioTrack;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lf/i/a/a/w0/m;->flush()V

    .line 4
    iget-object v2, p0, Lf/i/a/a/w0/v;->F:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lf/i/a/a/w0/m;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()J
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v1, v0, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lf/i/a/a/w0/v;->y:J

    iget v0, v0, Lf/i/a/a/w0/v$c;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lf/i/a/a/w0/v;->z:J

    :goto_0
    return-wide v1
.end method

.method public g(Ljava/nio/ByteBuffer;J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/p$b;,
            Lf/i/a/a/w0/p$d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1
    iget-object v4, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iget-object v4, v0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->c()Z

    move-result v4

    if-nez v4, :cond_2

    return v6

    .line 4
    :cond_2
    iget-object v4, v0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    iget-object v8, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    invoke-virtual {v4, v8}, Lf/i/a/a/w0/v$c;->a(Lf/i/a/a/w0/v$c;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->k()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    .line 7
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->d()V

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, v0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    iput-object v4, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 9
    iput-object v7, v0, Lf/i/a/a/w0/v;->m:Lf/i/a/a/w0/v$c;

    .line 10
    :goto_2
    iget-object v4, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    invoke-virtual {v0, v4, v2, v3}, Lf/i/a/a/w0/v;->a(Lf/i/a/a/j0;J)V

    .line 11
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v4

    const/4 v6, 0x6

    const/16 v8, 0x10

    const/4 v9, 0x3

    const/4 v10, 0x5

    if-nez v4, :cond_12

    .line 12
    iget-object v4, v0, Lf/i/a/a/w0/v;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 13
    iget-object v4, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 14
    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v11, v0, Lf/i/a/a/w0/v;->Q:Z

    iget-object v12, v0, Lf/i/a/a/w0/v;->p:Lf/i/a/a/w0/i;

    iget v15, v0, Lf/i/a/a/w0/v;->O:I

    .line 15
    sget v13, Lf/i/a/a/m1/h0;->a:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_8

    if-eqz v11, :cond_6

    .line 16
    new-instance v11, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v11}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 17
    invoke-virtual {v11, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 18
    invoke-virtual {v9, v8}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 19
    invoke-virtual {v9, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v9

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {v12}, Lf/i/a/a/w0/i;->a()Landroid/media/AudioAttributes;

    move-result-object v9

    :goto_3
    move-object/from16 v17, v9

    .line 22
    new-instance v9, Landroid/media/AudioFormat$Builder;

    invoke-direct {v9}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v11, v4, Lf/i/a/a/w0/v$c;->f:I

    .line 23
    invoke-virtual {v9, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    iget v11, v4, Lf/i/a/a/w0/v$c;->g:I

    .line 24
    invoke-virtual {v9, v11}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    iget v11, v4, Lf/i/a/a/w0/v$c;->e:I

    .line 25
    invoke-virtual {v9, v11}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    .line 26
    invoke-virtual {v9}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v18

    .line 27
    new-instance v9, Landroid/media/AudioTrack;

    iget v11, v4, Lf/i/a/a/w0/v$c;->h:I

    const/16 v20, 0x1

    if-eqz v15, :cond_7

    move/from16 v21, v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v16, v9

    move/from16 v19, v11

    invoke-direct/range {v16 .. v21}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_5

    .line 28
    :cond_8
    iget v9, v12, Lf/i/a/a/w0/i;->c:I

    invoke-static {v9}, Lf/i/a/a/m1/h0;->K(I)I

    move-result v17

    if-nez v15, :cond_9

    .line 29
    new-instance v9, Landroid/media/AudioTrack;

    iget v11, v4, Lf/i/a/a/w0/v$c;->e:I

    iget v12, v4, Lf/i/a/a/w0/v$c;->f:I

    iget v13, v4, Lf/i/a/a/w0/v$c;->g:I

    iget v14, v4, Lf/i/a/a/w0/v$c;->h:I

    const/16 v22, 0x1

    move-object/from16 v16, v9

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_5

    .line 30
    :cond_9
    new-instance v9, Landroid/media/AudioTrack;

    iget v11, v4, Lf/i/a/a/w0/v$c;->e:I

    iget v12, v4, Lf/i/a/a/w0/v$c;->f:I

    iget v14, v4, Lf/i/a/a/w0/v$c;->g:I

    iget v13, v4, Lf/i/a/a/w0/v$c;->h:I

    const/16 v19, 0x1

    move/from16 v18, v13

    move-object v13, v9

    move/from16 v20, v14

    move/from16 v14, v17

    move/from16 v21, v15

    move v15, v11

    move/from16 v16, v12

    move/from16 v17, v20

    move/from16 v20, v21

    invoke-direct/range {v13 .. v20}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 31
    :goto_5
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getState()I

    move-result v11

    if-ne v11, v5, :cond_11

    .line 32
    iput-object v9, v0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    .line 33
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 34
    iget v9, v0, Lf/i/a/a/w0/v;->O:I

    if-eq v9, v4, :cond_c

    .line 35
    iput v4, v0, Lf/i/a/a/w0/v;->O:I

    .line 36
    iget-object v9, v0, Lf/i/a/a/w0/v;->k:Lf/i/a/a/w0/p$c;

    if-eqz v9, :cond_c

    .line 37
    check-cast v9, Lf/i/a/a/w0/z$b;

    .line 38
    iget-object v11, v9, Lf/i/a/a/w0/z$b;->a:Lf/i/a/a/w0/z;

    .line 39
    iget-object v11, v11, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 40
    iget-object v12, v11, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v12, :cond_a

    .line 41
    iget-object v12, v11, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v13, Lf/i/a/a/w0/d;

    invoke-direct {v13, v11, v4}, Lf/i/a/a/w0/d;-><init>(Lf/i/a/a/w0/o$a;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :cond_a
    iget-object v4, v9, Lf/i/a/a/w0/z$b;->a:Lf/i/a/a/w0/z;

    if-eqz v4, :cond_b

    goto :goto_6

    .line 43
    :cond_b
    throw v7

    .line 44
    :cond_c
    :goto_6
    iget-object v4, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    invoke-virtual {v0, v4, v2, v3}, Lf/i/a/a/w0/v;->a(Lf/i/a/a/j0;J)V

    .line 45
    iget-object v4, v0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    iget-object v9, v0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    iget-object v11, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget v12, v11, Lf/i/a/a/w0/v$c;->g:I

    iget v13, v11, Lf/i/a/a/w0/v$c;->d:I

    iget v11, v11, Lf/i/a/a/w0/v$c;->h:I

    .line 46
    iput-object v9, v4, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    .line 47
    iput v13, v4, Lf/i/a/a/w0/r;->d:I

    .line 48
    iput v11, v4, Lf/i/a/a/w0/r;->e:I

    .line 49
    new-instance v14, Lf/i/a/a/w0/q;

    invoke-direct {v14, v9}, Lf/i/a/a/w0/q;-><init>(Landroid/media/AudioTrack;)V

    iput-object v14, v4, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    .line 50
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v9

    iput v9, v4, Lf/i/a/a/w0/r;->g:I

    .line 51
    sget v9, Lf/i/a/a/m1/h0;->a:I

    const/16 v14, 0x17

    if-ge v9, v14, :cond_e

    if-eq v12, v10, :cond_d

    if-ne v12, v6, :cond_e

    :cond_d
    const/4 v9, 0x1

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    .line 52
    :goto_7
    iput-boolean v9, v4, Lf/i/a/a/w0/r;->h:Z

    .line 53
    invoke-static {v12}, Lf/i/a/a/m1/h0;->T(I)Z

    move-result v9

    iput-boolean v9, v4, Lf/i/a/a/w0/r;->o:Z

    if-eqz v9, :cond_f

    .line 54
    div-int/2addr v11, v13

    int-to-long v11, v11

    invoke-virtual {v4, v11, v12}, Lf/i/a/a/w0/r;->a(J)J

    move-result-wide v11

    goto :goto_8

    :cond_f
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    iput-wide v11, v4, Lf/i/a/a/w0/r;->i:J

    const-wide/16 v11, 0x0

    .line 55
    iput-wide v11, v4, Lf/i/a/a/w0/r;->q:J

    .line 56
    iput-wide v11, v4, Lf/i/a/a/w0/r;->r:J

    .line 57
    iput-wide v11, v4, Lf/i/a/a/w0/r;->s:J

    const/4 v9, 0x0

    .line 58
    iput-boolean v9, v4, Lf/i/a/a/w0/r;->n:Z

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    iput-wide v13, v4, Lf/i/a/a/w0/r;->v:J

    .line 60
    iput-wide v13, v4, Lf/i/a/a/w0/r;->w:J

    .line 61
    iput-wide v11, v4, Lf/i/a/a/w0/r;->m:J

    .line 62
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->n()V

    .line 63
    iget-object v4, v0, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    iget v4, v4, Lf/i/a/a/w0/s;->a:I

    if-eqz v4, :cond_10

    .line 64
    iget-object v9, v0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v9, v4}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 65
    iget-object v4, v0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    iget-object v9, v0, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    iget v9, v9, Lf/i/a/a/w0/s;->b:F

    invoke-virtual {v4, v9}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 66
    :cond_10
    iget-boolean v4, v0, Lf/i/a/a/w0/v;->N:Z

    if-eqz v4, :cond_12

    .line 67
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->j()V

    goto :goto_9

    .line 68
    :cond_11
    :try_start_0
    invoke-virtual {v9}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    new-instance v1, Lf/i/a/a/w0/p$b;

    iget v2, v4, Lf/i/a/a/w0/v$c;->e:I

    iget v3, v4, Lf/i/a/a/w0/v$c;->f:I

    iget v4, v4, Lf/i/a/a/w0/v$c;->h:I

    invoke-direct {v1, v11, v2, v3, v4}, Lf/i/a/a/w0/p$b;-><init>(IIII)V

    throw v1

    .line 70
    :cond_12
    :goto_9
    iget-object v4, v0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v11

    .line 71
    iget-object v9, v4, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    invoke-static {v9}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v9

    .line 72
    iget-boolean v13, v4, Lf/i/a/a/w0/r;->h:Z

    const/4 v14, 0x2

    if-eqz v13, :cond_14

    if-ne v9, v14, :cond_13

    const/4 v9, 0x0

    .line 73
    iput-boolean v9, v4, Lf/i/a/a/w0/r;->n:Z

    goto :goto_a

    :cond_13
    if-ne v9, v5, :cond_14

    .line 74
    invoke-virtual {v4}, Lf/i/a/a/w0/r;->b()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-nez v13, :cond_14

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    .line 75
    :cond_14
    iget-boolean v13, v4, Lf/i/a/a/w0/r;->n:Z

    .line 76
    invoke-virtual {v4, v11, v12}, Lf/i/a/a/w0/r;->c(J)Z

    move-result v11

    iput-boolean v11, v4, Lf/i/a/a/w0/r;->n:Z

    if-eqz v13, :cond_15

    if-nez v11, :cond_15

    if-eq v9, v5, :cond_15

    .line 77
    iget-object v9, v4, Lf/i/a/a/w0/r;->a:Lf/i/a/a/w0/r$a;

    if-eqz v9, :cond_15

    .line 78
    iget v11, v4, Lf/i/a/a/w0/r;->e:I

    iget-wide v12, v4, Lf/i/a/a/w0/r;->i:J

    invoke-static {v12, v13}, Lf/i/a/a/q;->b(J)J

    move-result-wide v12

    invoke-interface {v9, v11, v12, v13}, Lf/i/a/a/w0/r$a;->a(IJ)V

    :cond_15
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_16

    const/4 v1, 0x0

    return v1

    .line 79
    :cond_16
    iget-object v4, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_31

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_17

    return v5

    .line 81
    :cond_17
    iget-object v4, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v9, v4, Lf/i/a/a/w0/v$c;->a:Z

    if-nez v9, :cond_28

    iget v9, v0, Lf/i/a/a/w0/v;->A:I

    if-nez v9, :cond_28

    .line 82
    iget v4, v4, Lf/i/a/a/w0/v$c;->g:I

    const/4 v9, 0x7

    const/4 v11, -0x1

    if-eq v4, v9, :cond_24

    const/16 v12, 0x8

    if-ne v4, v12, :cond_18

    goto/16 :goto_11

    :cond_18
    if-ne v4, v10, :cond_19

    const/16 v4, 0x600

    goto/16 :goto_15

    :cond_19
    if-eq v4, v6, :cond_22

    const/16 v10, 0x12

    if-ne v4, v10, :cond_1a

    goto/16 :goto_f

    :cond_1a
    const/16 v6, 0x11

    if-ne v4, v6, :cond_1b

    new-array v4, v8, [B

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 84
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    new-instance v6, Lf/i/a/a/m1/t;

    invoke-direct {v6, v4}, Lf/i/a/a/m1/t;-><init>([B)V

    invoke-static {v6}, Lf/i/a/a/w0/h;->b(Lf/i/a/a/m1/t;)Lf/i/a/a/w0/h$b;

    move-result-object v4

    iget v4, v4, Lf/i/a/a/w0/h$b;->d:I

    goto/16 :goto_15

    :cond_1b
    const/16 v6, 0xe

    if-ne v4, v6, :cond_21

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    move v8, v4

    :goto_c
    if-gt v8, v6, :cond_1d

    add-int/lit8 v10, v8, 0x4

    .line 89
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v13, -0x1000001

    and-int/2addr v10, v13

    const v13, -0x45908d08

    if-ne v10, v13, :cond_1c

    sub-int/2addr v8, v4

    goto :goto_d

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1d
    const/4 v8, -0x1

    :goto_d
    if-ne v8, v11, :cond_1e

    const/4 v4, 0x0

    goto/16 :goto_15

    .line 90
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v8

    add-int/2addr v4, v9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xbb

    if-ne v4, v6, :cond_1f

    const/4 v4, 0x1

    goto :goto_e

    :cond_1f
    const/4 v4, 0x0

    :goto_e
    const/16 v6, 0x28

    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    if-eqz v4, :cond_20

    const/16 v12, 0x9

    :cond_20
    add-int/2addr v10, v12

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v9

    shl-int v4, v6, v4

    mul-int/lit8 v4, v4, 0x10

    goto/16 :goto_15

    .line 92
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected audio encoding: "

    invoke-static {v2, v4}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_22
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v6

    const/4 v8, 0x3

    if-ne v4, v8, :cond_23

    goto :goto_10

    .line 94
    :cond_23
    sget-object v4, Lf/i/a/a/w0/g;->a:[I

    .line 95
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v6, v6, 0x4

    aget v6, v4, v6

    :goto_10
    mul-int/lit16 v4, v6, 0x100

    goto :goto_15

    .line 96
    :cond_24
    :goto_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 97
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v12, -0x2

    if-eq v8, v12, :cond_27

    if-eq v8, v11, :cond_26

    const/16 v11, 0x1f

    if-eq v8, v11, :cond_25

    add-int/lit8 v8, v4, 0x4

    .line 98
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v5

    shl-int/lit8 v6, v8, 0x6

    add-int/2addr v4, v10

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_13

    :cond_25
    add-int/lit8 v8, v4, 0x5

    .line 99
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_12

    :cond_26
    add-int/lit8 v6, v4, 0x4

    .line 100
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/2addr v6, v9

    shl-int/lit8 v8, v6, 0x4

    add-int/2addr v4, v9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_12
    and-int/lit8 v4, v4, 0x3c

    goto :goto_14

    :cond_27
    add-int/lit8 v8, v4, 0x5

    .line 101
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v5

    shl-int/lit8 v6, v8, 0x6

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_13
    and-int/lit16 v4, v4, 0xfc

    move v8, v6

    :goto_14
    shr-int/2addr v4, v14

    or-int/2addr v4, v8

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x20

    .line 102
    :goto_15
    iput v4, v0, Lf/i/a/a/w0/v;->A:I

    if-nez v4, :cond_28

    return v5

    .line 103
    :cond_28
    iget-object v4, v0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    if-eqz v4, :cond_2a

    .line 104
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->c()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v1, 0x0

    return v1

    .line 105
    :cond_29
    iget-object v4, v0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    .line 106
    iput-object v7, v0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    .line 107
    invoke-virtual {v0, v4, v2, v3}, Lf/i/a/a/w0/v;->a(Lf/i/a/a/j0;J)V

    .line 108
    :cond_2a
    iget v4, v0, Lf/i/a/a/w0/v;->B:I

    if-nez v4, :cond_2b

    const-wide/16 v8, 0x0

    .line 109
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lf/i/a/a/w0/v;->C:J

    .line 110
    iput v5, v0, Lf/i/a/a/w0/v;->B:I

    goto :goto_17

    .line 111
    :cond_2b
    iget-wide v8, v0, Lf/i/a/a/w0/v;->C:J

    iget-object v4, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    .line 112
    iget-boolean v6, v4, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz v6, :cond_2c

    iget-wide v10, v0, Lf/i/a/a/w0/v;->w:J

    iget v6, v4, Lf/i/a/a/w0/v$c;->b:I

    int-to-long v12, v6

    div-long/2addr v10, v12

    goto :goto_16

    :cond_2c
    iget-wide v10, v0, Lf/i/a/a/w0/v;->x:J

    .line 113
    :goto_16
    iget-object v6, v0, Lf/i/a/a/w0/v;->e:Lf/i/a/a/w0/e0;

    .line 114
    iget-wide v12, v6, Lf/i/a/a/w0/e0;->p:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    .line 115
    iget v4, v4, Lf/i/a/a/w0/v$c;->c:I

    int-to-long v12, v4

    div-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 116
    iget v4, v0, Lf/i/a/a/w0/v;->B:I

    if-ne v4, v5, :cond_2d

    sub-long v8, v10, v2

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v12, 0x30d40

    cmp-long v4, v8, v12

    if-lez v4, :cond_2d

    .line 118
    iput v14, v0, Lf/i/a/a/w0/v;->B:I

    .line 119
    :cond_2d
    iget v4, v0, Lf/i/a/a/w0/v;->B:I

    if-ne v4, v14, :cond_2f

    sub-long v8, v2, v10

    .line 120
    iget-wide v10, v0, Lf/i/a/a/w0/v;->C:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lf/i/a/a/w0/v;->C:J

    .line 121
    iput v5, v0, Lf/i/a/a/w0/v;->B:I

    .line 122
    iget-object v4, v0, Lf/i/a/a/w0/v;->k:Lf/i/a/a/w0/p$c;

    if-eqz v4, :cond_2f

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2f

    .line 123
    check-cast v4, Lf/i/a/a/w0/z$b;

    .line 124
    iget-object v4, v4, Lf/i/a/a/w0/z$b;->a:Lf/i/a/a/w0/z;

    if-eqz v4, :cond_2e

    .line 125
    iput-boolean v5, v4, Lf/i/a/a/w0/z;->E0:Z

    goto :goto_17

    .line 126
    :cond_2e
    throw v7

    .line 127
    :cond_2f
    :goto_17
    iget-object v4, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v4, v4, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz v4, :cond_30

    .line 128
    iget-wide v8, v0, Lf/i/a/a/w0/v;->w:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v0, Lf/i/a/a/w0/v;->w:J

    goto :goto_18

    .line 129
    :cond_30
    iget-wide v8, v0, Lf/i/a/a/w0/v;->x:J

    iget v4, v0, Lf/i/a/a/w0/v;->A:I

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v0, Lf/i/a/a/w0/v;->x:J

    .line 130
    :goto_18
    iput-object v1, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    .line 131
    :cond_31
    iget-object v1, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean v1, v1, Lf/i/a/a/w0/v$c;->i:Z

    if-eqz v1, :cond_32

    .line 132
    invoke-virtual {v0, v2, v3}, Lf/i/a/a/w0/v;->l(J)V

    goto :goto_19

    .line 133
    :cond_32
    iget-object v1, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/w0/v;->p(Ljava/nio/ByteBuffer;J)V

    .line 134
    :goto_19
    iget-object v1, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_33

    .line 135
    iput-object v7, v0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    return v5

    .line 136
    :cond_33
    iget-object v1, v0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v2

    .line 137
    iget-wide v6, v1, Lf/i/a/a/w0/r;->w:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_34

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_34

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lf/i/a/a/w0/r;->w:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xc8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1a

    :cond_34
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_35

    .line 139
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/v;->d()V

    return v5

    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method public h()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    invoke-virtual {p0}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/w0/r;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/w0/v;->N:Z

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    .line 4
    iget-object v0, v0, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lf/i/a/a/w0/q;->a()V

    .line 5
    iget-object v0, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/w0/v;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/w0/v;->M:Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    invoke-virtual {p0}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/w0/r;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lf/i/a/a/w0/r;->x:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    iput-wide v3, v0, Lf/i/a/a/w0/r;->v:J

    .line 6
    iput-wide v1, v0, Lf/i/a/a/w0/r;->y:J

    .line 7
    iget-object v0, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lf/i/a/a/w0/v;->v:I

    :cond_0
    return-void
.end method

.method public final l(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/p$d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lf/i/a/a/w0/v;->F:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lf/i/a/a/w0/v;->G:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lf/i/a/a/w0/m;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lf/i/a/a/w0/v;->p(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object v3, p0, Lf/i/a/a/w0/v;->E:[Lf/i/a/a/w0/m;

    aget-object v3, v3, v1

    .line 5
    invoke-interface {v3, v2}, Lf/i/a/a/w0/m;->d(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-interface {v3}, Lf/i/a/a/w0/m;->b()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lf/i/a/a/w0/v;->F:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public m()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->d()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/v;->l:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lf/i/a/a/w0/v;->l:Landroid/media/AudioTrack;

    .line 4
    new-instance v1, Lf/i/a/a/w0/w;

    invoke-direct {v1, p0, v0}, Lf/i/a/a/w0/w;-><init>(Lf/i/a/a/w0/v;Landroid/media/AudioTrack;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    :goto_0
    iget-object v0, p0, Lf/i/a/a/w0/v;->f:[Lf/i/a/a/w0/m;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-interface {v4}, Lf/i/a/a/w0/m;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lf/i/a/a/w0/v;->g:[Lf/i/a/a/w0/m;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 9
    invoke-interface {v4}, Lf/i/a/a/w0/m;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10
    :cond_2
    iput v2, p0, Lf/i/a/a/w0/v;->O:I

    .line 11
    iput-boolean v2, p0, Lf/i/a/a/w0/v;->N:Z

    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/w0/v;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lf/i/a/a/w0/v;->D:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lf/i/a/a/w0/v;->D:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public o(II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Lf/i/a/a/m1/h0;->T(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 2
    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Lf/i/a/a/w0/v;->a:Lf/i/a/a/w0/j;

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Lf/i/a/a/w0/j;->a:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 5
    iget-object p2, p0, Lf/i/a/a/w0/v;->a:Lf/i/a/a/w0/j;

    .line 6
    iget p2, p2, Lf/i/a/a/w0/j;->b:I

    if-gt p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return v1
.end method

.method public final p(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/p$d;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Lf/i/a/a/m1/h0;->a:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Lf/i/a/a/w0/v;->I:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lf/i/a/a/w0/v;->I:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Lf/i/a/a/w0/v;->I:[B

    invoke-virtual {p1, v5, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v2, p0, Lf/i/a/a/w0/v;->J:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Lf/i/a/a/m1/h0;->a:I

    if-ge v4, v1, :cond_6

    .line 15
    iget-object p2, p0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    iget-wide v3, p0, Lf/i/a/a/w0/v;->y:J

    .line 16
    invoke-virtual {p2}, Lf/i/a/a/w0/r;->b()J

    move-result-wide v5

    iget p3, p2, Lf/i/a/a/w0/r;->d:I

    int-to-long v7, p3

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int p3, v3

    .line 17
    iget p2, p2, Lf/i/a/a/w0/r;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_f

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lf/i/a/a/w0/v;->I:[B

    iget v2, p0, Lf/i/a/a/w0/v;->J:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    if-lez v2, :cond_f

    .line 20
    iget p2, p0, Lf/i/a/a/w0/v;->J:I

    add-int/2addr p2, v2

    iput p2, p0, Lf/i/a/a/w0/v;->J:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    .line 22
    :cond_6
    iget-boolean v1, p0, Lf/i/a/a/w0/v;->Q:Z

    if-eqz v1, :cond_e

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 23
    :goto_2
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 24
    iget-object v6, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    .line 25
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const-wide/16 v4, 0x3e8

    const/16 v7, 0x1a

    if-lt v1, v7, :cond_8

    const/4 v9, 0x1

    mul-long v10, p2, v4

    move-object v7, p1

    move v8, v0

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v2

    goto :goto_4

    .line 27
    :cond_8
    iget-object v1, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const/16 v1, 0x10

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    .line 29
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v1, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    const v7, 0x55550001

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    :cond_9
    iget v1, p0, Lf/i/a/a/w0/v;->v:I

    if-nez v1, :cond_a

    .line 32
    iget-object v1, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v1, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    mul-long p2, p2, v4

    invoke-virtual {v1, v7, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p2, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iput v0, p0, Lf/i/a/a/w0/v;->v:I

    .line 36
    :cond_a
    iget-object p2, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_c

    .line 37
    iget-object p3, p0, Lf/i/a/a/w0/v;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p3, p2, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 38
    iput v2, p0, Lf/i/a/a/w0/v;->v:I

    move v2, p3

    goto :goto_4

    :cond_b
    if-ge p3, p2, :cond_c

    goto :goto_4

    .line 39
    :cond_c
    invoke-virtual {v6, p1, v0, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_d

    .line 40
    iput v2, p0, Lf/i/a/a/w0/v;->v:I

    goto :goto_3

    .line 41
    :cond_d
    iget p2, p0, Lf/i/a/a/w0/v;->v:I

    sub-int/2addr p2, p1

    iput p2, p0, Lf/i/a/a/w0/v;->v:I

    :goto_3
    move v2, p1

    goto :goto_4

    .line 42
    :cond_e
    iget-object p2, p0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    .line 43
    invoke-virtual {p2, p1, v0, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 44
    :cond_f
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lf/i/a/a/w0/v;->R:J

    if-ltz v2, :cond_13

    .line 45
    iget-object p1, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean p1, p1, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz p1, :cond_10

    .line 46
    iget-wide p1, p0, Lf/i/a/a/w0/v;->y:J

    int-to-long v3, v2

    add-long/2addr p1, v3

    iput-wide p1, p0, Lf/i/a/a/w0/v;->y:J

    :cond_10
    if-ne v2, v0, :cond_12

    .line 47
    iget-object p1, p0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean p1, p1, Lf/i/a/a/w0/v$c;->a:Z

    if-nez p1, :cond_11

    .line 48
    iget-wide p1, p0, Lf/i/a/a/w0/v;->z:J

    iget p3, p0, Lf/i/a/a/w0/v;->A:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lf/i/a/a/w0/v;->z:J

    :cond_11
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lf/i/a/a/w0/v;->H:Ljava/nio/ByteBuffer;

    :cond_12
    return-void

    .line 50
    :cond_13
    new-instance p1, Lf/i/a/a/w0/p$d;

    invoke-direct {p1, v2}, Lf/i/a/a/w0/p$d;-><init>(I)V

    throw p1
.end method
