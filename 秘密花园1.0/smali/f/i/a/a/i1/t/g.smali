.class public final Lf/i/a/a/i1/t/g;
.super Lf/i/a/a/i1/c;
.source "WebvttDecoder.java"


# instance fields
.field public final n:Lf/i/a/a/i1/t/f;

.field public final o:Lf/i/a/a/m1/u;

.field public final p:Lf/i/a/a/i1/t/e$b;

.field public final q:Lf/i/a/a/i1/t/a;

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/t/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/i1/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lf/i/a/a/i1/t/f;

    invoke-direct {v0}, Lf/i/a/a/i1/t/f;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/g;->n:Lf/i/a/a/i1/t/f;

    .line 3
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    .line 4
    new-instance v0, Lf/i/a/a/i1/t/e$b;

    invoke-direct {v0}, Lf/i/a/a/i1/t/e$b;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/g;->p:Lf/i/a/a/i1/t/e$b;

    .line 5
    new-instance v0, Lf/i/a/a/i1/t/a;

    invoke-direct {v0}, Lf/i/a/a/i1/t/a;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/g;->q:Lf/i/a/a/i1/t/a;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/g;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public k([BIZ)Lf/i/a/a/i1/e;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lf/i/a/a/m1/u;->a:[B

    move/from16 v2, p2

    .line 3
    iput v2, v0, Lf/i/a/a/m1/u;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lf/i/a/a/m1/u;->b:I

    .line 5
    iget-object v0, v1, Lf/i/a/a/i1/t/g;->p:Lf/i/a/a/i1/t/e$b;

    invoke-virtual {v0}, Lf/i/a/a/i1/t/e$b;->b()V

    .line 6
    iget-object v0, v1, Lf/i/a/a/i1/t/g;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :try_start_0
    iget-object v0, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    invoke-static {v0}, Lf/i/a/a/i1/t/h;->d(Lf/i/a/a/m1/u;)V
    :try_end_0
    .catch Lf/i/a/a/h0; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    iget-object v0, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_1
    :goto_1
    iget-object v3, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_2
    if-ne v8, v6, :cond_5

    .line 11
    iget v9, v3, Lf/i/a/a/m1/u;->b:I

    .line 12
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const-string v10, "STYLE"

    .line 13
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    const-string v10, "NOTE"

    .line 14
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v3, v9}, Lf/i/a/a/m1/u;->A(I)V

    if-eqz v8, :cond_34

    if-ne v8, v7, :cond_6

    .line 16
    iget-object v3, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    .line 17
    :goto_3
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_6
    if-ne v8, v4, :cond_2d

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 19
    iget-object v4, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    invoke-virtual {v4}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    .line 20
    iget-object v4, v1, Lf/i/a/a/i1/t/g;->r:Ljava/util/List;

    iget-object v5, v1, Lf/i/a/a/i1/t/g;->q:Lf/i/a/a/i1/t/a;

    iget-object v8, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    .line 21
    iget-object v9, v5, Lf/i/a/a/i1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    iget v9, v8, Lf/i/a/a/m1/u;->b:I

    .line 23
    :cond_7
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 25
    iget-object v10, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    iget-object v11, v8, Lf/i/a/a/m1/u;->a:[B

    .line 26
    iget v8, v8, Lf/i/a/a/m1/u;->b:I

    .line 27
    invoke-virtual {v10, v11, v8}, Lf/i/a/a/m1/u;->y([BI)V

    .line 28
    iget-object v8, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/u;->A(I)V

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_4
    iget-object v9, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    iget-object v10, v5, Lf/i/a/a/i1/t/a;->b:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v9}, Lf/i/a/a/i1/t/a;->c(Lf/i/a/a/m1/u;)V

    .line 32
    invoke-virtual {v9}, Lf/i/a/a/m1/u;->a()I

    move-result v11

    const/4 v12, 0x5

    const-string v13, "{"

    const-string v14, ""

    if-ge v11, v12, :cond_8

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {v9, v12}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "::cue"

    .line 34
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_8

    .line 35
    :cond_9
    iget v11, v9, Lf/i/a/a/m1/u;->b:I

    .line 36
    invoke-static {v9, v10}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_a

    goto :goto_8

    .line 37
    :cond_a
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 38
    invoke-virtual {v9, v11}, Lf/i/a/a/m1/u;->A(I)V

    move-object v11, v14

    goto :goto_9

    :cond_b
    const-string v11, "("

    .line 39
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 40
    iget v11, v9, Lf/i/a/a/m1/u;->b:I

    .line 41
    iget v12, v9, Lf/i/a/a/m1/u;->c:I

    const/4 v15, 0x0

    :goto_5
    if-ge v11, v12, :cond_d

    if-nez v15, :cond_d

    .line 42
    iget-object v15, v9, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v16, v11, 0x1

    aget-byte v11, v15, v11

    int-to-char v11, v11

    const/16 v15, 0x29

    if-ne v11, v15, :cond_c

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    const/4 v15, 0x0

    :goto_6
    move/from16 v11, v16

    goto :goto_5

    :cond_d
    add-int/lit8 v11, v11, -0x1

    .line 43
    iget v12, v9, Lf/i/a/a/m1/u;->b:I

    sub-int/2addr v11, v12

    .line 44
    invoke-virtual {v9, v11}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    .line 45
    :goto_7
    invoke-static {v9, v10}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ")"

    .line 46
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez v9, :cond_10

    :cond_f
    :goto_8
    const/4 v11, 0x0

    :cond_10
    :goto_9
    if-eqz v11, :cond_2b

    .line 47
    iget-object v9, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    iget-object v10, v5, Lf/i/a/a/i1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_16

    .line 48
    :cond_11
    new-instance v9, Lf/i/a/a/i1/t/d;

    invoke-direct {v9}, Lf/i/a/a/i1/t/d;-><init>()V

    .line 49
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_b

    :cond_12
    const/16 v10, 0x5b

    .line 50
    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v6, :cond_14

    .line 51
    sget-object v12, Lf/i/a/a/i1/t/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 52
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 53
    invoke-virtual {v12, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 54
    iput-object v12, v9, Lf/i/a/a/i1/t/d;->d:Ljava/lang/String;

    .line 55
    :cond_13
    invoke-virtual {v11, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_14
    const-string v10, "\\."

    .line 56
    invoke-static {v11, v10}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 57
    aget-object v11, v10, v2

    const/16 v12, 0x23

    .line 58
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v6, :cond_15

    .line 59
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 60
    iput-object v13, v9, Lf/i/a/a/i1/t/d;->b:Ljava/lang/String;

    add-int/lit8 v12, v12, 0x1

    .line 61
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 62
    iput-object v11, v9, Lf/i/a/a/i1/t/d;->a:Ljava/lang/String;

    goto :goto_a

    .line 63
    :cond_15
    iput-object v11, v9, Lf/i/a/a/i1/t/d;->b:Ljava/lang/String;

    .line 64
    :goto_a
    array-length v11, v10

    if-le v11, v7, :cond_16

    .line 65
    array-length v11, v10

    invoke-static {v10, v7, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 66
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v9, Lf/i/a/a/i1/t/d;->c:Ljava/util/List;

    :cond_16
    :goto_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c
    const-string v12, "}"

    if-nez v10, :cond_29

    .line 67
    iget-object v10, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    .line 68
    iget v11, v10, Lf/i/a/a/m1/u;->b:I

    .line 69
    iget-object v13, v5, Lf/i/a/a/i1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v10, v13}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_18

    .line 70
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v13, 0x1

    :goto_e
    if-nez v13, :cond_26

    .line 71
    iget-object v15, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v15, v11}, Lf/i/a/a/m1/u;->A(I)V

    .line 72
    iget-object v11, v5, Lf/i/a/a/i1/t/a;->a:Lf/i/a/a/m1/u;

    iget-object v15, v5, Lf/i/a/a/i1/t/a;->b:Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v11}, Lf/i/a/a/i1/t/a;->c(Lf/i/a/a/m1/u;)V

    .line 74
    invoke-static {v11, v15}, Lf/i/a/a/i1/t/a;->a(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    goto/16 :goto_13

    .line 76
    :cond_19
    invoke-static {v11, v15}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v3, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_13

    .line 77
    :cond_1a
    invoke-static {v11}, Lf/i/a/a/i1/t/a;->c(Lf/i/a/a/m1/u;)V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_f
    const-string v7, ";"

    if-nez v6, :cond_1e

    move-object/from16 v17, v5

    .line 79
    iget v5, v11, Lf/i/a/a/m1/u;->b:I

    move/from16 v18, v6

    .line 80
    invoke-static {v11, v15}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    const/4 v3, 0x0

    goto :goto_11

    .line 81
    :cond_1b
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_10

    .line 82
    :cond_1c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    move/from16 v6, v18

    goto :goto_f

    .line 83
    :cond_1d
    :goto_10
    invoke-virtual {v11, v5}, Lf/i/a/a/m1/u;->A(I)V

    move-object/from16 v5, v17

    const/4 v6, 0x1

    goto :goto_f

    :cond_1e
    move-object/from16 v17, v5

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_11
    if-eqz v3, :cond_27

    .line 85
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto/16 :goto_14

    .line 86
    :cond_1f
    iget v5, v11, Lf/i/a/a/m1/u;->b:I

    .line 87
    invoke-static {v11, v15}, Lf/i/a/a/i1/t/a;->b(Lf/i/a/a/m1/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_12

    .line 89
    :cond_20
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 90
    invoke-virtual {v11, v5}, Lf/i/a/a/m1/u;->A(I)V

    :goto_12
    const-string v5, "color"

    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    .line 92
    invoke-static {v3, v5}, Lf/i/a/a/m1/j;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 93
    iput v2, v9, Lf/i/a/a/i1/t/d;->f:I

    .line 94
    iput-boolean v5, v9, Lf/i/a/a/i1/t/d;->g:Z

    goto :goto_15

    :cond_21
    const/4 v5, 0x1

    const-string v6, "background-color"

    .line 95
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 96
    invoke-static {v3, v5}, Lf/i/a/a/m1/j;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 97
    iput v2, v9, Lf/i/a/a/i1/t/d;->h:I

    .line 98
    iput-boolean v5, v9, Lf/i/a/a/i1/t/d;->i:Z

    goto :goto_15

    :cond_22
    const-string v6, "text-decoration"

    .line 99
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v2, "underline"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 101
    iput v5, v9, Lf/i/a/a/i1/t/d;->k:I

    goto :goto_15

    :cond_23
    const-string v5, "font-family"

    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 103
    invoke-static {v3}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lf/i/a/a/i1/t/d;->e:Ljava/lang/String;

    goto :goto_14

    :cond_24
    const-string v5, "font-weight"

    .line 104
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v2, "bold"

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v5, 0x1

    .line 106
    iput v5, v9, Lf/i/a/a/i1/t/d;->l:I

    goto :goto_15

    :cond_25
    const/4 v5, 0x1

    const-string v6, "font-style"

    .line 107
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "italic"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 109
    iput v5, v9, Lf/i/a/a/i1/t/d;->m:I

    goto :goto_15

    :cond_26
    :goto_13
    move-object/from16 v17, v5

    :cond_27
    :goto_14
    const/4 v5, 0x1

    :cond_28
    :goto_15
    move-object v11, v10

    move v10, v13

    move-object/from16 v5, v17

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_c

    :cond_29
    move-object/from16 v17, v5

    const/4 v5, 0x1

    .line 110
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 111
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object/from16 v5, v17

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 112
    :cond_2b
    :goto_16
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 113
    :cond_2c
    new-instance v0, Lf/i/a/a/i1/g;

    const-string v2, "A style block was found after the first cue."

    invoke-direct {v0, v2}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-ne v8, v5, :cond_33

    .line 114
    iget-object v2, v1, Lf/i/a/a/i1/t/g;->n:Lf/i/a/a/i1/t/f;

    iget-object v5, v1, Lf/i/a/a/i1/t/g;->o:Lf/i/a/a/m1/u;

    iget-object v6, v1, Lf/i/a/a/i1/t/g;->p:Lf/i/a/a/i1/t/e$b;

    iget-object v8, v1, Lf/i/a/a/i1/t/g;->r:Ljava/util/List;

    if-eqz v2, :cond_32

    .line 115
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_17

    .line 116
    :cond_2e
    sget-object v4, Lf/i/a/a/i1/t/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v3, 0x0

    .line 118
    iget-object v7, v2, Lf/i/a/a/i1/t/f;->a:Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v8}, Lf/i/a/a/i1/t/f;->b(Ljava/lang/String;Ljava/util/regex/Matcher;Lf/i/a/a/m1/u;Lf/i/a/a/i1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v2

    goto :goto_18

    .line 119
    :cond_2f
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_17

    .line 120
    :cond_30
    sget-object v7, Lf/i/a/a/i1/t/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v2, Lf/i/a/a/i1/t/f;->a:Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v8}, Lf/i/a/a/i1/t/f;->b(Ljava/lang/String;Ljava/util/regex/Matcher;Lf/i/a/a/m1/u;Lf/i/a/a/i1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v2

    goto :goto_18

    :cond_31
    :goto_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_33

    .line 123
    iget-object v2, v1, Lf/i/a/a/i1/t/g;->p:Lf/i/a/a/i1/t/e$b;

    invoke-virtual {v2}, Lf/i/a/a/i1/t/e$b;->a()Lf/i/a/a/i1/t/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, v1, Lf/i/a/a/i1/t/g;->p:Lf/i/a/a/i1/t/e$b;

    invoke-virtual {v2}, Lf/i/a/a/i1/t/e$b;->b()V

    goto :goto_19

    :cond_32
    const/4 v2, 0x0

    .line 125
    throw v2

    :cond_33
    :goto_19
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 126
    :cond_34
    new-instance v2, Lf/i/a/a/i1/t/i;

    invoke-direct {v2, v0}, Lf/i/a/a/i1/t/i;-><init>(Ljava/util/List;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 127
    new-instance v2, Lf/i/a/a/i1/g;

    invoke-direct {v2, v0}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
