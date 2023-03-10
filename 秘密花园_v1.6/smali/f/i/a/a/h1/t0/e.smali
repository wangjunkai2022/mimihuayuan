.class public final Lf/i/a/a/h1/t0/e;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/d0;
.implements Lf/i/a/a/h1/l0$a;
.implements Lf/i/a/a/h1/s0/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/t0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/h1/d0;",
        "Lf/i/a/a/h1/l0$a<",
        "Lf/i/a/a/h1/s0/g<",
        "Lf/i/a/a/h1/t0/c;",
        ">;>;",
        "Lf/i/a/a/h1/s0/g$b<",
        "Lf/i/a/a/h1/t0/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final v:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:Lf/i/a/a/h1/t0/c$a;

.field public final c:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lf/i/a/a/l1/b0;

.field public final e:J

.field public final f:Lf/i/a/a/l1/d0;

.field public final g:Lf/i/a/a/l1/e;

.field public final h:Lf/i/a/a/h1/p0;

.field public final i:[Lf/i/a/a/h1/t0/e$a;

.field public final j:Lf/i/a/a/h1/v;

.field public final k:Lf/i/a/a/h1/t0/j;

.field public final l:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lf/i/a/a/h1/s0/g<",
            "Lf/i/a/a/h1/t0/c;",
            ">;",
            "Lf/i/a/a/h1/t0/j$c;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lf/i/a/a/h1/f0$a;

.field public n:Lf/i/a/a/h1/d0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:[Lf/i/a/a/h1/s0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/i/a/a/h1/s0/g<",
            "Lf/i/a/a/h1/t0/c;",
            ">;"
        }
    .end annotation
.end field

.field public p:[Lf/i/a/a/h1/t0/i;

.field public q:Lf/i/a/a/h1/l0;

.field public r:Lf/i/a/a/h1/t0/k/b;

.field public s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/e;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/t0/e;->v:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILf/i/a/a/h1/t0/k/b;ILf/i/a/a/h1/t0/c$a;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;JLf/i/a/a/l1/d0;Lf/i/a/a/l1/e;Lf/i/a/a/h1/v;Lf/i/a/a/h1/t0/j$b;)V
    .locals 22
    .param p5    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v5, p1

    .line 2
    iput v5, v0, Lf/i/a/a/h1/t0/e;->a:I

    .line 3
    iput-object v1, v0, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    .line 4
    iput v2, v0, Lf/i/a/a/h1/t0/e;->s:I

    move-object/from16 v5, p4

    .line 5
    iput-object v5, v0, Lf/i/a/a/h1/t0/e;->b:Lf/i/a/a/h1/t0/c$a;

    move-object/from16 v5, p5

    .line 6
    iput-object v5, v0, Lf/i/a/a/h1/t0/e;->c:Lf/i/a/a/l1/i0;

    move-object/from16 v5, p6

    .line 7
    iput-object v5, v0, Lf/i/a/a/h1/t0/e;->d:Lf/i/a/a/l1/b0;

    move-object/from16 v5, p7

    .line 8
    iput-object v5, v0, Lf/i/a/a/h1/t0/e;->m:Lf/i/a/a/h1/f0$a;

    move-wide/from16 v6, p8

    .line 9
    iput-wide v6, v0, Lf/i/a/a/h1/t0/e;->e:J

    move-object/from16 v6, p10

    .line 10
    iput-object v6, v0, Lf/i/a/a/h1/t0/e;->f:Lf/i/a/a/l1/d0;

    .line 11
    iput-object v3, v0, Lf/i/a/a/h1/t0/e;->g:Lf/i/a/a/l1/e;

    .line 12
    iput-object v4, v0, Lf/i/a/a/h1/t0/e;->j:Lf/i/a/a/h1/v;

    .line 13
    new-instance v6, Lf/i/a/a/h1/t0/j;

    move-object/from16 v7, p13

    invoke-direct {v6, v1, v7, v3}, Lf/i/a/a/h1/t0/j;-><init>(Lf/i/a/a/h1/t0/k/b;Lf/i/a/a/h1/t0/j$b;Lf/i/a/a/l1/e;)V

    iput-object v6, v0, Lf/i/a/a/h1/t0/e;->k:Lf/i/a/a/h1/t0/j;

    const/4 v3, 0x0

    new-array v6, v3, [Lf/i/a/a/h1/s0/g;

    .line 14
    iput-object v6, v0, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    new-array v3, v3, [Lf/i/a/a/h1/t0/i;

    .line 15
    iput-object v3, v0, Lf/i/a/a/h1/t0/e;->p:[Lf/i/a/a/h1/t0/i;

    .line 16
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v3, v0, Lf/i/a/a/h1/t0/e;->l:Ljava/util/IdentityHashMap;

    .line 17
    iget-object v3, v0, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    if-eqz v4, :cond_1e

    .line 18
    new-instance v4, Lf/i/a/a/h1/t;

    invoke-direct {v4, v3}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 19
    iput-object v4, v0, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    .line 20
    iget-object v1, v1, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/t0/k/f;

    .line 21
    iget-object v2, v1, Lf/i/a/a/h1/t0/k/f;->d:Ljava/util/List;

    iput-object v2, v0, Lf/i/a/a/h1/t0/e;->t:Ljava/util/List;

    .line 22
    iget-object v1, v1, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 24
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 25
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/t0/k/a;

    iget v7, v7, Lf/i/a/a/h1/t0/k/a;->a:I

    invoke-virtual {v4, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-array v6, v3, [[I

    .line 27
    new-array v7, v3, [Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v8, v3, :cond_8

    .line 28
    aget-boolean v11, v7, v8

    if-eqz v11, :cond_1

    goto :goto_6

    .line 29
    :cond_1
    aput-boolean v10, v7, v8

    .line 30
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/i/a/a/h1/t0/k/a;

    iget-object v11, v11, Lf/i/a/a/h1/t0/k/a;->e:Ljava/util/List;

    const/4 v12, 0x0

    .line 31
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 32
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/i/a/a/h1/t0/k/d;

    .line 33
    iget-object v14, v13, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    const-string v15, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_4

    add-int/lit8 v11, v9, 0x1

    new-array v10, v10, [I

    const/4 v12, 0x0

    aput v8, v10, v12

    .line 34
    aput-object v10, v6, v9

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 35
    iget-object v12, v13, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    const-string v13, ","

    invoke-static {v12, v13}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 36
    array-length v13, v12

    add-int/2addr v13, v10

    new-array v10, v13, [I

    .line 37
    aput v8, v10, v11

    const/4 v14, 0x1

    .line 38
    :goto_4
    array-length v15, v12

    if-ge v11, v15, :cond_6

    .line 39
    aget-object v15, v12, v11

    .line 40
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v5, -0x1

    .line 41
    invoke-virtual {v4, v15, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v5, :cond_5

    const/4 v5, 0x1

    .line 42
    aput-boolean v5, v7, v15

    .line 43
    aput v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p7

    goto :goto_4

    :cond_6
    if-ge v14, v13, :cond_7

    .line 44
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    :cond_7
    add-int/lit8 v11, v9, 0x1

    .line 45
    aput-object v10, v6, v9

    :goto_5
    move v9, v11

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p7

    goto :goto_1

    :cond_8
    if-ge v9, v3, :cond_9

    .line 46
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [[I

    .line 47
    :cond_9
    array-length v3, v6

    .line 48
    new-array v4, v3, [Z

    .line 49
    new-array v5, v3, [[Lf/i/a/a/b0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    if-ge v7, v3, :cond_15

    .line 50
    aget-object v9, v6, v7

    .line 51
    array-length v10, v9

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_c

    aget v12, v9, v11

    .line 52
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/h1/t0/k/a;

    iget-object v12, v12, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    const/4 v13, 0x0

    .line 53
    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 54
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf/i/a/a/h1/t0/k/i;

    .line 55
    iget-object v14, v14, Lf/i/a/a/h1/t0/k/i;->d:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v9, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_d

    const/4 v9, 0x1

    .line 56
    aput-boolean v9, v4, v7

    add-int/lit8 v8, v8, 0x1

    .line 57
    :cond_d
    aget-object v9, v6, v7

    .line 58
    array-length v10, v9

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v10, :cond_13

    aget v12, v9, v11

    .line 59
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/i/a/a/h1/t0/k/a;

    .line 60
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/h1/t0/k/a;

    iget-object v12, v12, Lf/i/a/a/h1/t0/k/a;->d:Ljava/util/List;

    const/4 v14, 0x0

    .line 61
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_12

    .line 62
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/i/a/a/h1/t0/k/d;

    move-object/from16 p1, v9

    .line 63
    iget-object v9, v15, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    move/from16 p2, v10

    const-string v10, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 64
    iget-object v9, v15, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    if-nez v9, :cond_e

    const/4 v9, 0x1

    new-array v9, v9, [Lf/i/a/a/b0;

    .line 65
    iget v10, v13, Lf/i/a/a/h1/t0/k/a;->a:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 66
    invoke-static {v10, v11, v12}, Lf/i/a/a/h1/t0/e;->a(ILjava/lang/String;I)Lf/i/a/a/b0;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    goto :goto_e

    :cond_e
    const/4 v10, -0x1

    const-string v11, ";"

    .line 67
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 68
    array-length v10, v9

    new-array v10, v10, [Lf/i/a/a/b0;

    const/4 v11, 0x0

    .line 69
    :goto_d
    array-length v12, v9

    if-ge v11, v12, :cond_10

    .line 70
    sget-object v12, Lf/i/a/a/h1/t0/e;->v:Ljava/util/regex/Pattern;

    aget-object v14, v9, v11

    invoke-virtual {v12, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 71
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_f

    const/4 v9, 0x1

    new-array v9, v9, [Lf/i/a/a/b0;

    .line 72
    iget v10, v13, Lf/i/a/a/h1/t0/k/a;->a:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 73
    invoke-static {v10, v11, v12}, Lf/i/a/a/h1/t0/e;->a(ILjava/lang/String;I)Lf/i/a/a/b0;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    goto :goto_e

    :cond_f
    const/4 v14, 0x1

    .line 74
    iget v15, v13, Lf/i/a/a/h1/t0/k/a;->a:I

    move-object/from16 p1, v9

    const/4 v9, 0x2

    .line 75
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 77
    invoke-static {v15, v9, v12}, Lf/i/a/a/h1/t0/e;->a(ILjava/lang/String;I)Lf/i/a/a/b0;

    move-result-object v9

    aput-object v9, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, p1

    goto :goto_d

    :cond_10
    move-object v9, v10

    goto :goto_e

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p1

    move/from16 v10, p2

    goto :goto_c

    :cond_12
    move-object/from16 p1, v9

    move/from16 p2, v10

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    :cond_13
    const/4 v9, 0x0

    new-array v9, v9, [Lf/i/a/a/b0;

    .line 78
    :goto_e
    aput-object v9, v5, v7

    .line 79
    aget-object v9, v5, v7

    array-length v9, v9

    if-eqz v9, :cond_14

    add-int/lit8 v8, v8, 0x1

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_15
    add-int/2addr v8, v3

    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v8

    .line 81
    new-array v8, v7, [Lf/i/a/a/h1/o0;

    .line 82
    new-array v7, v7, [Lf/i/a/a/h1/t0/e$a;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    const-string v15, "application/x-emsg"

    if-ge v10, v3, :cond_1c

    .line 83
    aget-object v14, v6, v10

    .line 84
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 85
    array-length v12, v14

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v12, :cond_16

    move/from16 p1, v3

    aget v3, v14, v13

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/t0/k/a;

    iget-object v3, v3, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p1

    goto :goto_10

    :cond_16
    move/from16 p1, v3

    .line 87
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Lf/i/a/a/b0;

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v3, :cond_17

    .line 88
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v3

    move-object/from16 v3, v16

    check-cast v3, Lf/i/a/a/h1/t0/k/i;

    iget-object v3, v3, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    aput-object v3, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p2

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    .line 89
    aget v3, v14, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/t0/k/a;

    add-int/lit8 v11, v9, 0x1

    .line 90
    aget-boolean v13, v4, v10

    if-eqz v13, :cond_18

    add-int/lit8 v13, v11, 0x1

    move-object/from16 p2, v1

    move/from16 v21, v13

    move v13, v11

    move/from16 v11, v21

    goto :goto_12

    :cond_18
    const/4 v13, -0x1

    move-object/from16 p2, v1

    .line 91
    :goto_12
    aget-object v1, v5, v10

    array-length v1, v1

    if-eqz v1, :cond_19

    add-int/lit8 v1, v11, 0x1

    move/from16 p3, v1

    goto :goto_13

    :cond_19
    const/4 v1, -0x1

    move/from16 p3, v11

    const/4 v11, -0x1

    .line 92
    :goto_13
    new-instance v1, Lf/i/a/a/h1/o0;

    invoke-direct {v1, v12}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v1, v8, v9

    .line 93
    iget v12, v3, Lf/i/a/a/h1/t0/k/a;->b:I

    .line 94
    new-instance v1, Lf/i/a/a/h1/t0/e$a;

    const/16 v16, 0x0

    const/16 v18, -0x1

    move/from16 p4, v11

    move-object v11, v1

    move/from16 p5, v13

    move/from16 v13, v16

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move v15, v9

    move/from16 v16, p5

    move/from16 v17, p4

    invoke-direct/range {v11 .. v18}, Lf/i/a/a/h1/t0/e$a;-><init>(II[IIIII)V

    .line 95
    aput-object v1, v7, v9

    const/4 v1, -0x1

    move/from16 v15, p5

    if-eq v15, v1, :cond_1a

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v3, Lf/i/a/a/h1/t0/k/a;->a:I

    const-string v12, ":emsg"

    invoke-static {v11, v3, v12}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    move-object/from16 v12, v20

    invoke-static {v3, v12, v11, v1, v11}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v1

    .line 97
    new-instance v3, Lf/i/a/a/h1/o0;

    const/4 v11, 0x1

    new-array v11, v11, [Lf/i/a/a/b0;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-direct {v3, v11}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v3, v8, v15

    .line 98
    new-instance v1, Lf/i/a/a/h1/t0/e$a;

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v11, v1

    move-object/from16 v14, v19

    move v3, v15

    move v15, v9

    invoke-direct/range {v11 .. v18}, Lf/i/a/a/h1/t0/e$a;-><init>(II[IIIII)V

    .line 99
    aput-object v1, v7, v3

    :cond_1a
    const/4 v1, -0x1

    move/from16 v3, p4

    if-eq v3, v1, :cond_1b

    .line 100
    new-instance v1, Lf/i/a/a/h1/o0;

    aget-object v11, v5, v10

    invoke-direct {v1, v11}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v1, v8, v3

    .line 101
    new-instance v1, Lf/i/a/a/h1/t0/e$a;

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v11, v1

    move-object/from16 v14, v19

    move v15, v9

    invoke-direct/range {v11 .. v18}, Lf/i/a/a/h1/t0/e$a;-><init>(II[IIIII)V

    .line 102
    aput-object v1, v7, v3

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, p1

    move-object/from16 v1, p2

    move/from16 v9, p3

    goto/16 :goto_f

    :cond_1c
    move-object v12, v15

    const/4 v1, 0x0

    .line 103
    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 104
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/t0/k/e;

    .line 105
    invoke-virtual {v3}, Lf/i/a/a/h1/t0/k/e;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v3, v12, v4, v5, v4}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v3

    .line 106
    new-instance v4, Lf/i/a/a/h1/o0;

    const/4 v5, 0x1

    new-array v5, v5, [Lf/i/a/a/b0;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-direct {v4, v5}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object v4, v8, v9

    add-int/lit8 v3, v9, 0x1

    .line 107
    new-instance v4, Lf/i/a/a/h1/t0/e$a;

    new-array v5, v6, [I

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object v13, v4

    move-object/from16 v16, v5

    move/from16 v20, v1

    invoke-direct/range {v13 .. v20}, Lf/i/a/a/h1/t0/e$a;-><init>(II[IIIII)V

    .line 108
    aput-object v4, v7, v9

    add-int/lit8 v1, v1, 0x1

    move v9, v3

    goto :goto_14

    .line 109
    :cond_1d
    new-instance v1, Lf/i/a/a/h1/p0;

    invoke-direct {v1, v8}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    invoke-static {v1, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 110
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lf/i/a/a/h1/p0;

    iput-object v2, v0, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    .line 111
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lf/i/a/a/h1/t0/e$a;

    iput-object v1, v0, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    .line 112
    invoke-virtual/range {p7 .. p7}, Lf/i/a/a/h1/f0$a;->y()V

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 113
    throw v1
.end method

.method public static a(ILjava/lang/String;I)Lf/i/a/a/b0;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":cea608"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    const-string p0, ":"

    invoke-static {p0, p2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x0

    const-string v2, "application/cea-608"

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v11}, Lf/i/a/a/b0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILf/i/a/a/z0/e;JLjava/util/List;)Lf/i/a/a/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(JLf/i/a/a/s0;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lf/i/a/a/h1/s0/g;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v0, v3, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/h1/s0/h;->b(JLf/i/a/a/s0;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I[I)I
    .locals 4

    .line 1
    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    aget-object p1, v1, p1

    iget p1, p1, Lf/i/a/a/h1/t0/e$a;->e:I

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    .line 5
    iget-object v3, p0, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    aget-object v2, v3, v2

    iget v2, v2, Lf/i/a/a/h1/t0/e$a;->c:I

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->f(J)Z

    move-result p1

    return p1
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->g(J)V

    return-void
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/h1/s0/g;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/t0/e;->n:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J
    .locals 35

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p3

    move-wide/from16 v14, p5

    .line 1
    array-length v1, v0

    new-array v11, v1, [I

    const/16 v16, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    const/4 v10, -0x1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v12, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    aget-object v3, v0, v1

    invoke-interface {v3}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v2

    aput v2, v11, v1

    goto :goto_1

    .line 5
    :cond_0
    aput v10, v11, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_2
    array-length v2, v0

    const/16 v17, 0x0

    if-ge v1, v2, :cond_6

    .line 7
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-boolean v2, p2, v1

    if-nez v2, :cond_5

    .line 8
    :cond_2
    aget-object v2, v13, v1

    instance-of v2, v2, Lf/i/a/a/h1/s0/g;

    if-eqz v2, :cond_3

    .line 9
    aget-object v2, v13, v1

    check-cast v2, Lf/i/a/a/h1/s0/g;

    .line 10
    invoke-virtual {v2, v12}, Lf/i/a/a/h1/s0/g;->B(Lf/i/a/a/h1/s0/g$b;)V

    goto :goto_3

    .line 11
    :cond_3
    aget-object v2, v13, v1

    instance-of v2, v2, Lf/i/a/a/h1/s0/g$a;

    if-eqz v2, :cond_4

    .line 12
    aget-object v2, v13, v1

    check-cast v2, Lf/i/a/a/h1/s0/g$a;

    invoke-virtual {v2}, Lf/i/a/a/h1/s0/g$a;->c()V

    .line 13
    :cond_4
    :goto_3
    aput-object v17, v13, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 14
    :goto_4
    array-length v2, v0

    const/4 v8, 0x1

    if-ge v1, v2, :cond_c

    .line 15
    aget-object v2, v13, v1

    instance-of v2, v2, Lf/i/a/a/h1/x;

    if-nez v2, :cond_7

    aget-object v2, v13, v1

    instance-of v2, v2, Lf/i/a/a/h1/s0/g$a;

    if-eqz v2, :cond_b

    .line 16
    :cond_7
    invoke-virtual {v12, v1, v11}, Lf/i/a/a/h1/t0/e;->d(I[I)I

    move-result v2

    if-ne v2, v10, :cond_8

    .line 17
    aget-object v2, v13, v1

    instance-of v8, v2, Lf/i/a/a/h1/x;

    goto :goto_5

    .line 18
    :cond_8
    aget-object v3, v13, v1

    instance-of v3, v3, Lf/i/a/a/h1/s0/g$a;

    if-eqz v3, :cond_9

    aget-object v3, v13, v1

    check-cast v3, Lf/i/a/a/h1/s0/g$a;

    iget-object v3, v3, Lf/i/a/a/h1/s0/g$a;->a:Lf/i/a/a/h1/s0/g;

    aget-object v2, v13, v2

    if-ne v3, v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_b

    .line 19
    aget-object v2, v13, v1

    instance-of v2, v2, Lf/i/a/a/h1/s0/g$a;

    if-eqz v2, :cond_a

    .line 20
    aget-object v2, v13, v1

    check-cast v2, Lf/i/a/a/h1/s0/g$a;

    invoke-virtual {v2}, Lf/i/a/a/h1/s0/g$a;->c()V

    .line 21
    :cond_a
    aput-object v17, v13, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    .line 22
    :goto_6
    array-length v1, v0

    if-ge v9, v1, :cond_19

    .line 23
    aget-object v1, v0, v9

    if-nez v1, :cond_d

    move v14, v9

    move-object/from16 v34, v11

    goto/16 :goto_e

    .line 24
    :cond_d
    aget-object v2, v13, v9

    if-nez v2, :cond_17

    .line 25
    aput-boolean v8, p4, v9

    .line 26
    aget v2, v11, v9

    .line 27
    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    aget-object v2, v3, v2

    .line 28
    iget v3, v2, Lf/i/a/a/h1/t0/e$a;->c:I

    if-nez v3, :cond_16

    .line 29
    iget v3, v2, Lf/i/a/a/h1/t0/e$a;->f:I

    if-eq v3, v10, :cond_e

    const/16 v27, 0x1

    goto :goto_7

    :cond_e
    const/16 v27, 0x0

    :goto_7
    if-eqz v27, :cond_f

    .line 30
    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    iget v4, v2, Lf/i/a/a/h1/t0/e$a;->f:I

    .line 31
    iget-object v3, v3, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v3, v3, v4

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v3, v17

    const/4 v4, 0x0

    .line 32
    :goto_8
    iget v5, v2, Lf/i/a/a/h1/t0/e$a;->g:I

    if-eq v5, v10, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_11

    .line 33
    iget-object v6, v12, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    iget v7, v2, Lf/i/a/a/h1/t0/e$a;->g:I

    .line 34
    iget-object v6, v6, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v6, v6, v7

    .line 35
    iget v7, v6, Lf/i/a/a/h1/o0;->a:I

    add-int/2addr v4, v7

    goto :goto_a

    :cond_11
    move-object/from16 v6, v17

    .line 36
    :goto_a
    new-array v7, v4, [Lf/i/a/a/b0;

    .line 37
    new-array v4, v4, [I

    if-eqz v27, :cond_12

    .line 38
    iget-object v3, v3, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v3, v3, v16

    .line 39
    aput-object v3, v7, v16

    const/4 v3, 0x4

    .line 40
    aput v3, v4, v16

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 41
    :goto_b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    .line 42
    :goto_c
    iget v8, v6, Lf/i/a/a/h1/o0;->a:I

    if-ge v5, v8, :cond_13

    .line 43
    iget-object v8, v6, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v8, v8, v5

    .line 44
    aput-object v8, v7, v3

    const/4 v8, 0x3

    .line 45
    aput v8, v4, v3

    .line 46
    aget-object v8, v7, v3

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    const/4 v8, 0x1

    .line 47
    :cond_14
    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v3, v3, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v3, :cond_15

    if-eqz v27, :cond_15

    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->k:Lf/i/a/a/h1/t0/j;

    .line 48
    new-instance v5, Lf/i/a/a/h1/t0/j$c;

    new-instance v6, Lf/i/a/a/h1/j0;

    iget-object v8, v3, Lf/i/a/a/h1/t0/j;->a:Lf/i/a/a/l1/e;

    invoke-direct {v6, v8}, Lf/i/a/a/h1/j0;-><init>(Lf/i/a/a/l1/e;)V

    invoke-direct {v5, v3, v6}, Lf/i/a/a/h1/t0/j$c;-><init>(Lf/i/a/a/h1/t0/j;Lf/i/a/a/h1/j0;)V

    move-object v8, v5

    goto :goto_d

    :cond_15
    move-object/from16 v8, v17

    .line 49
    :goto_d
    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->b:Lf/i/a/a/h1/t0/c$a;

    iget-object v5, v12, Lf/i/a/a/h1/t0/e;->f:Lf/i/a/a/l1/d0;

    iget-object v6, v12, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    move/from16 v31, v9

    iget v9, v12, Lf/i/a/a/h1/t0/e;->s:I

    move-object/from16 v32, v11

    iget-object v11, v2, Lf/i/a/a/h1/t0/e$a;->a:[I

    iget v14, v2, Lf/i/a/a/h1/t0/e$a;->b:I

    move-object v15, v7

    move-object/from16 v33, v8

    iget-wide v7, v12, Lf/i/a/a/h1/t0/e;->e:J

    iget-object v0, v12, Lf/i/a/a/h1/t0/e;->c:Lf/i/a/a/l1/i0;

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v23, v1

    move/from16 v24, v14

    move-wide/from16 v25, v7

    move-object/from16 v28, v10

    move-object/from16 v29, v33

    move-object/from16 v30, v0

    .line 50
    invoke-interface/range {v18 .. v30}, Lf/i/a/a/h1/t0/c$a;->a(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/t0/k/b;I[ILf/i/a/a/j1/j;IJZLjava/util/List;Lf/i/a/a/h1/t0/j$c;Lf/i/a/a/l1/i0;)Lf/i/a/a/h1/t0/c;

    move-result-object v5

    .line 51
    new-instance v0, Lf/i/a/a/h1/s0/g;

    iget v2, v2, Lf/i/a/a/h1/t0/e$a;->b:I

    iget-object v7, v12, Lf/i/a/a/h1/t0/e;->g:Lf/i/a/a/l1/e;

    iget-object v10, v12, Lf/i/a/a/h1/t0/e;->d:Lf/i/a/a/l1/b0;

    iget-object v11, v12, Lf/i/a/a/h1/t0/e;->m:Lf/i/a/a/h1/f0$a;

    move-object v1, v0

    move-object v3, v4

    move-object v4, v15

    move-object/from16 v6, p0

    move/from16 v14, v31

    move-object/from16 v15, v33

    move-wide/from16 v8, p5

    move-object/from16 v34, v32

    invoke-direct/range {v1 .. v11}, Lf/i/a/a/h1/s0/g;-><init>(I[I[Lf/i/a/a/b0;Lf/i/a/a/h1/s0/h;Lf/i/a/a/h1/l0$a;Lf/i/a/a/l1/e;JLf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;)V

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v1, v12, Lf/i/a/a/h1/t0/e;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    aput-object v0, v13, v14

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_16
    move v14, v9

    move-object/from16 v34, v11

    const/4 v0, 0x2

    if-ne v3, v0, :cond_18

    .line 57
    iget-object v0, v12, Lf/i/a/a/h1/t0/e;->t:Ljava/util/List;

    iget v2, v2, Lf/i/a/a/h1/t0/e$a;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/t0/k/e;

    .line 58
    invoke-interface {v1}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v1, v1, v16

    .line 60
    new-instance v2, Lf/i/a/a/h1/t0/i;

    iget-object v3, v12, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v3, v3, Lf/i/a/a/h1/t0/k/b;->d:Z

    invoke-direct {v2, v0, v1, v3}, Lf/i/a/a/h1/t0/i;-><init>(Lf/i/a/a/h1/t0/k/e;Lf/i/a/a/b0;Z)V

    aput-object v2, v13, v14

    goto :goto_e

    :cond_17
    move v14, v9

    move-object/from16 v34, v11

    .line 61
    aget-object v0, v13, v14

    instance-of v0, v0, Lf/i/a/a/h1/s0/g;

    if-eqz v0, :cond_18

    .line 62
    aget-object v0, v13, v14

    check-cast v0, Lf/i/a/a/h1/s0/g;

    .line 63
    iget-object v0, v0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    .line 64
    check-cast v0, Lf/i/a/a/h1/t0/c;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/t0/c;->c(Lf/i/a/a/j1/j;)V

    :cond_18
    :goto_e
    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v14, p5

    move-object/from16 v11, v34

    const/4 v8, 0x1

    const/4 v10, -0x1

    goto/16 :goto_6

    :cond_19
    move-object/from16 v34, v11

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 65
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 66
    aget-object v2, v13, v1

    if-nez v2, :cond_1e

    aget-object v2, v0, v1

    if-eqz v2, :cond_1e

    move-object/from16 v2, v34

    .line 67
    aget v3, v2, v1

    .line 68
    iget-object v4, v12, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    aget-object v3, v4, v3

    .line 69
    iget v4, v3, Lf/i/a/a/h1/t0/e$a;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 70
    invoke-virtual {v12, v1, v2}, Lf/i/a/a/h1/t0/e;->d(I[I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1a

    .line 71
    new-instance v3, Lf/i/a/a/h1/x;

    invoke-direct {v3}, Lf/i/a/a/h1/x;-><init>()V

    aput-object v3, v13, v1

    move-wide/from16 v8, p5

    goto :goto_12

    .line 72
    :cond_1a
    aget-object v4, v13, v4

    check-cast v4, Lf/i/a/a/h1/s0/g;

    iget v3, v3, Lf/i/a/a/h1/t0/e$a;->b:I

    const/4 v7, 0x0

    .line 73
    :goto_10
    iget-object v8, v4, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v8, v8

    if-ge v7, v8, :cond_1c

    .line 74
    iget-object v8, v4, Lf/i/a/a/h1/s0/g;->b:[I

    aget v8, v8, v7

    if-ne v8, v3, :cond_1b

    .line 75
    iget-object v3, v4, Lf/i/a/a/h1/s0/g;->d:[Z

    aget-boolean v3, v3, v7

    xor-int/2addr v3, v5

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 76
    iget-object v3, v4, Lf/i/a/a/h1/s0/g;->d:[Z

    aput-boolean v5, v3, v7

    .line 77
    iget-object v3, v4, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lf/i/a/a/h1/j0;->v()V

    .line 78
    iget-object v3, v4, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    aget-object v3, v3, v7

    move-wide/from16 v8, p5

    invoke-virtual {v3, v8, v9, v5, v5}, Lf/i/a/a/h1/j0;->e(JZZ)I

    .line 79
    new-instance v3, Lf/i/a/a/h1/s0/g$a;

    iget-object v10, v4, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    aget-object v10, v10, v7

    invoke-direct {v3, v4, v4, v10, v7}, Lf/i/a/a/h1/s0/g$a;-><init>(Lf/i/a/a/h1/s0/g;Lf/i/a/a/h1/s0/g;Lf/i/a/a/h1/j0;I)V

    .line 80
    aput-object v3, v13, v1

    goto :goto_12

    :cond_1b
    move-wide/from16 v8, p5

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 81
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1d
    move-wide/from16 v8, p5

    goto :goto_11

    :cond_1e
    move-wide/from16 v8, p5

    move-object/from16 v2, v34

    const/4 v5, 0x1

    :goto_11
    const/4 v6, -0x1

    :goto_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v34, v2

    goto :goto_f

    :cond_1f
    move-wide/from16 v8, p5

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v2, v13

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_22

    aget-object v4, v13, v3

    .line 85
    instance-of v5, v4, Lf/i/a/a/h1/s0/g;

    if-eqz v5, :cond_20

    .line 86
    check-cast v4, Lf/i/a/a/h1/s0/g;

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 88
    :cond_20
    instance-of v5, v4, Lf/i/a/a/h1/t0/i;

    if-eqz v5, :cond_21

    .line 89
    check-cast v4, Lf/i/a/a/h1/t0/i;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 90
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 91
    new-array v2, v2, [Lf/i/a/a/h1/s0/g;

    .line 92
    iput-object v2, v12, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/h1/t0/i;

    iput-object v0, v12, Lf/i/a/a/h1/t0/e;->p:[Lf/i/a/a/h1/t0/i;

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    iget-object v0, v12, Lf/i/a/a/h1/t0/e;->j:Lf/i/a/a/h1/v;

    iget-object v1, v12, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    if-eqz v0, :cond_23

    .line 97
    new-instance v0, Lf/i/a/a/h1/t;

    invoke-direct {v0, v1}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 98
    iput-object v0, v12, Lf/i/a/a/h1/t0/e;->q:Lf/i/a/a/h1/l0;

    return-wide v8

    .line 99
    :cond_23
    throw v17
.end method

.method public l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/t0/e;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->m:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->B()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/h1/t0/e;->u:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public m(Lf/i/a/a/h1/d0$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/t0/e;->n:Lf/i/a/a/h1/d0$a;

    .line 2
    invoke-interface {p1, p0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    return-void
.end method

.method public n(Ljava/util/List;)Ljava/util/List;
    .locals 13
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

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    iget v1, p0, Lf/i/a/a/h1/t0/e;->s:I

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v0

    iget-object v0, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/j1/j;

    .line 4
    iget-object v3, p0, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    invoke-interface {v2}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v3

    .line 5
    iget-object v4, p0, Lf/i/a/a/h1/t0/e;->i:[Lf/i/a/a/h1/t0/e$a;

    aget-object v3, v4, v3

    .line 6
    iget v4, v3, Lf/i/a/a/h1/t0/e$a;->c:I

    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v3, Lf/i/a/a/h1/t0/e$a;->a:[I

    .line 8
    invoke-interface {v2}, Lf/i/a/a/j1/j;->length()I

    move-result v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    :goto_1
    invoke-interface {v2}, Lf/i/a/a/j1/j;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 10
    invoke-interface {v2, v7}, Lf/i/a/a/j1/j;->e(I)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 12
    aget v2, v3, v6

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/a;

    iget-object v2, v2, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v6, v4, :cond_0

    .line 14
    :goto_3
    aget v9, v5, v6

    add-int v10, v8, v2

    if-lt v9, v10, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 15
    aget v2, v3, v7

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/a;

    iget-object v2, v2, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v8, v10

    goto :goto_3

    .line 18
    :cond_3
    new-instance v9, Lf/i/a/a/e1/c0;

    iget v10, p0, Lf/i/a/a/h1/t0/e;->s:I

    aget v11, v3, v7

    aget v12, v5, v6

    sub-int/2addr v12, v8

    invoke-direct {v9, v10, v11, v12}, Lf/i/a/a/e1/c0;-><init>(III)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public o()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->h:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->f:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void
.end method

.method public t(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2, p3}, Lf/i/a/a/h1/s0/g;->t(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1, p2}, Lf/i/a/a/h1/s0/g;->C(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/t0/e;->p:[Lf/i/a/a/h1/t0/i;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1, p2}, Lf/i/a/a/h1/t0/i;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method
