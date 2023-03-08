.class public Lf/i/a/a/j1/b$d;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lf/i/a/a/j1/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:J

.field public final h:Lf/i/a/a/m1/h;

.field public i:Lf/i/a/a/j1/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lf/i/a/a/m1/h;->a:Lf/i/a/a/m1/h;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lf/i/a/a/j1/b$d;->a:Lf/i/a/a/l1/g;

    const/16 v1, 0x2710

    .line 4
    iput v1, p0, Lf/i/a/a/j1/b$d;->b:I

    const/16 v1, 0x61a8

    .line 5
    iput v1, p0, Lf/i/a/a/j1/b$d;->c:I

    .line 6
    iput v1, p0, Lf/i/a/a/j1/b$d;->d:I

    const/high16 v1, 0x3f400000    # 0.75f

    .line 7
    iput v1, p0, Lf/i/a/a/j1/b$d;->e:F

    .line 8
    iput v1, p0, Lf/i/a/a/j1/b$d;->f:F

    const-wide/16 v1, 0x7d0

    .line 9
    iput-wide v1, p0, Lf/i/a/a/j1/b$d;->g:J

    .line 10
    iput-object v0, p0, Lf/i/a/a/j1/b$d;->h:Lf/i/a/a/m1/h;

    .line 11
    sget-object v0, Lf/i/a/a/j1/h;->a:Lf/i/a/a/j1/h;

    iput-object v0, p0, Lf/i/a/a/j1/b$d;->i:Lf/i/a/a/j1/h;

    return-void
.end method


# virtual methods
.method public final a([Lf/i/a/a/j1/j$a;Lf/i/a/a/l1/g;)[Lf/i/a/a/j1/j;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/j1/b$d;->a:Lf/i/a/a/l1/g;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 2
    :goto_0
    array-length v3, v1

    new-array v3, v3, [Lf/i/a/a/j1/j;

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 4
    :goto_1
    array-length v7, v1

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 5
    aget-object v7, v1, v6

    if-nez v7, :cond_1

    move-object/from16 v25, v2

    move/from16 v24, v6

    goto :goto_2

    .line 6
    :cond_1
    iget-object v11, v7, Lf/i/a/a/j1/j$a;->b:[I

    array-length v9, v11

    if-le v9, v8, :cond_2

    .line 7
    iget-object v10, v7, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    .line 8
    new-instance v7, Lf/i/a/a/j1/b;

    new-instance v12, Lf/i/a/a/j1/b$c;

    iget v8, v0, Lf/i/a/a/j1/b$d;->e:F

    invoke-direct {v12, v2, v8}, Lf/i/a/a/j1/b$c;-><init>(Lf/i/a/a/l1/g;F)V

    iget v8, v0, Lf/i/a/a/j1/b$d;->b:I

    int-to-long v13, v8

    iget v8, v0, Lf/i/a/a/j1/b$d;->c:I

    int-to-long v8, v8

    iget v15, v0, Lf/i/a/a/j1/b$d;->d:I

    move/from16 v24, v6

    int-to-long v5, v15

    iget v15, v0, Lf/i/a/a/j1/b$d;->f:F

    move-object/from16 v25, v2

    iget-wide v1, v0, Lf/i/a/a/j1/b$d;->g:J

    move-wide/from16 v16, v8

    iget-object v8, v0, Lf/i/a/a/j1/b$d;->h:Lf/i/a/a/m1/h;

    const/16 v23, 0x0

    move-object v9, v7

    move/from16 v19, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v5

    move-wide/from16 v20, v1

    move-object/from16 v22, v8

    invoke-direct/range {v9 .. v23}, Lf/i/a/a/j1/b;-><init>(Lf/i/a/a/h1/o0;[ILf/i/a/a/j1/b$b;JJJFJLf/i/a/a/m1/h;Lf/i/a/a/j1/b$a;)V

    .line 9
    iget-object v1, v0, Lf/i/a/a/j1/b$d;->i:Lf/i/a/a/j1/h;

    .line 10
    iput-object v1, v7, Lf/i/a/a/j1/b;->q:Lf/i/a/a/j1/h;

    .line 11
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    aput-object v7, v3, v24

    goto :goto_2

    :cond_2
    move-object/from16 v25, v2

    move/from16 v24, v6

    .line 13
    new-instance v1, Lf/i/a/a/j1/e;

    iget-object v2, v7, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    const/4 v5, 0x0

    aget v6, v11, v5

    iget v8, v7, Lf/i/a/a/j1/j$a;->c:I

    iget-object v9, v7, Lf/i/a/a/j1/j$a;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, v6, v8, v9}, Lf/i/a/a/j1/e;-><init>(Lf/i/a/a/h1/o0;IILjava/lang/Object;)V

    aput-object v1, v3, v24

    .line 14
    iget-object v1, v7, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    iget-object v2, v7, Lf/i/a/a/j1/j$a;->b:[I

    aget v2, v2, v5

    .line 15
    iget-object v1, v1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v1, v1, v2

    .line 16
    iget v1, v1, Lf/i/a/a/b0;->e:I

    :goto_2
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v8, :cond_15

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [[J

    const/4 v5, 0x0

    .line 19
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 20
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/j1/b;

    .line 21
    iget-object v7, v6, Lf/i/a/a/j1/c;->c:[I

    array-length v7, v7

    .line 22
    new-array v7, v7, [J

    aput-object v7, v2, v5

    const/4 v7, 0x0

    .line 23
    :goto_4
    iget-object v9, v6, Lf/i/a/a/j1/c;->c:[I

    array-length v10, v9

    if-ge v7, v10, :cond_4

    .line 24
    aget-object v10, v2, v5

    .line 25
    array-length v9, v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    .line 26
    iget-object v11, v6, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object v9, v11, v9

    .line 27
    iget v9, v9, Lf/i/a/a/b0;->e:I

    int-to-long v11, v9

    aput-wide v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 28
    :cond_5
    new-array v5, v1, [[D

    const/4 v6, 0x0

    :goto_5
    const-wide/16 v9, 0x0

    if-ge v6, v1, :cond_8

    .line 29
    aget-object v7, v2, v6

    array-length v7, v7

    new-array v7, v7, [D

    aput-object v7, v5, v6

    const/4 v7, 0x0

    .line 30
    :goto_6
    aget-object v11, v2, v6

    array-length v11, v11

    if-ge v7, v11, :cond_7

    .line 31
    aget-object v11, v5, v6

    aget-object v12, v2, v6

    aget-wide v13, v12, v7

    const-wide/16 v15, -0x1

    cmp-long v12, v13, v15

    if-nez v12, :cond_6

    move-wide v12, v9

    goto :goto_7

    :cond_6
    aget-object v12, v2, v6

    aget-wide v13, v12, v7

    long-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    :goto_7
    aput-wide v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 32
    :cond_8
    new-array v6, v1, [[D

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v1, :cond_c

    .line 33
    aget-object v11, v5, v7

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    new-array v11, v11, [D

    aput-object v11, v6, v7

    .line 34
    aget-object v11, v6, v7

    array-length v11, v11

    if-nez v11, :cond_9

    goto :goto_b

    .line 35
    :cond_9
    aget-object v11, v5, v7

    aget-object v12, v5, v7

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-wide v12, v11, v12

    aget-object v11, v5, v7

    const/4 v14, 0x0

    aget-wide v15, v11, v14

    sub-double/2addr v12, v15

    const/4 v11, 0x0

    .line 36
    :goto_9
    aget-object v14, v5, v7

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ge v11, v14, :cond_b

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 37
    aget-object v16, v5, v7

    aget-wide v17, v16, v11

    aget-object v16, v5, v7

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, v16, v19

    add-double v17, v17, v20

    mul-double v17, v17, v14

    .line 38
    aget-object v14, v6, v7

    cmpl-double v15, v12, v9

    if-nez v15, :cond_a

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_a
    aget-object v15, v5, v7

    const/16 v16, 0x0

    aget-wide v20, v15, v16

    sub-double v17, v17, v20

    div-double v15, v17, v12

    :goto_a
    aput-wide v15, v14, v11

    move/from16 v11, v19

    goto :goto_9

    :cond_b
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c
    if-ge v7, v1, :cond_d

    .line 39
    aget-object v10, v6, v7

    .line 40
    array-length v10, v10

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_d
    const/4 v7, 0x3

    add-int/2addr v9, v7

    new-array v7, v7, [I

    const/4 v10, 0x2

    aput v10, v7, v10

    aput v9, v7, v8

    const/4 v11, 0x0

    aput v1, v7, v11

    .line 41
    const-class v11, J

    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[J

    .line 42
    new-array v11, v1, [I

    .line 43
    invoke-static {v7, v8, v2, v11}, Lf/i/a/a/j1/b;->u([[[JI[[J[I)V

    const/4 v12, 0x2

    :goto_d
    add-int/lit8 v13, v9, -0x1

    if-ge v12, v13, :cond_11

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v15, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_e
    if-ge v13, v1, :cond_10

    .line 44
    aget v17, v11, v13

    add-int/lit8 v10, v17, 0x1

    aget-object v8, v5, v13

    array-length v8, v8

    if-ne v10, v8, :cond_e

    goto :goto_f

    .line 45
    :cond_e
    aget-object v8, v6, v13

    aget v10, v11, v13

    aget-wide v18, v8, v10

    cmpg-double v8, v18, v15

    if-gez v8, :cond_f

    move v14, v13

    move-wide/from16 v15, v18

    :cond_f
    :goto_f
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x2

    goto :goto_e

    .line 46
    :cond_10
    aget v8, v11, v14

    const/4 v10, 0x1

    add-int/2addr v8, v10

    aput v8, v11, v14

    .line 47
    invoke-static {v7, v12, v2, v11}, Lf/i/a/a/j1/b;->u([[[JI[[J[I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x2

    goto :goto_d

    .line 48
    :cond_11
    array-length v1, v7

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_12

    aget-object v2, v7, v5

    .line 49
    aget-object v6, v2, v13

    add-int/lit8 v8, v9, -0x2

    aget-object v10, v2, v8

    const/4 v11, 0x0

    aget-wide v14, v10, v11

    const-wide/16 v18, 0x2

    mul-long v14, v14, v18

    aput-wide v14, v6, v11

    .line 50
    aget-object v6, v2, v13

    aget-object v2, v2, v8

    const/4 v8, 0x1

    aget-wide v14, v2, v8

    mul-long v14, v14, v18

    aput-wide v14, v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_12
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 51
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_15

    .line 52
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/j1/b;

    aget-object v2, v7, v5

    .line 53
    iget-object v1, v1, Lf/i/a/a/j1/b;->g:Lf/i/a/a/j1/b$b;

    check-cast v1, Lf/i/a/a/j1/b$c;

    if-eqz v1, :cond_14

    .line 54
    array-length v6, v2

    const/4 v9, 0x2

    if-lt v6, v9, :cond_13

    const/4 v6, 0x1

    goto :goto_12

    :cond_13
    const/4 v6, 0x0

    :goto_12
    invoke-static {v6}, Lc/a/a/b/g/h;->m(Z)V

    .line 55
    iput-object v2, v1, Lf/i/a/a/j1/b$c;->d:[[J

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    .line 56
    throw v1

    :cond_15
    return-object v3
.end method
