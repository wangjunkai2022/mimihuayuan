.class public final Li/e$a;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_1

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p2, v1, v2, v3}, Lh/s/d;->a(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public final b(Li/w;)Li/e;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_16

    .line 1
    invoke-virtual/range {p1 .. p1}, Li/w;->size()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    if-ge v7, v3, :cond_14

    .line 2
    invoke-virtual {v1, v7}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v7}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cache-Control"

    .line 4
    invoke-static {v2, v5, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move-object v9, v4

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    .line 5
    invoke-static {v2, v5, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 6
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_12

    const-string v5, "=,;"

    .line 7
    invoke-virtual {v0, v4, v5, v2}, Li/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 8
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v5, v1, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v24, v3

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 10
    invoke-static {v4, v5}, Li/m0/b;->u(Ljava/lang/String;I)I

    move-result v1

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    move-object/from16 v25, v9

    const/4 v9, 0x0

    .line 12
    invoke-static {v4, v5, v1, v9, v3}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    .line 13
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_5

    :cond_3
    move-object/from16 v25, v9

    const/4 v9, 0x0

    const-string v3, ",;"

    .line 14
    invoke-virtual {v0, v4, v3, v1}, Li/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 15
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_4
    move/from16 v24, v3

    :cond_5
    :goto_4
    move-object/from16 v25, v9

    const/4 v9, 0x0

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    const/4 v1, 0x0

    :goto_5
    const-string v5, "no-cache"

    const/4 v6, 0x1

    .line 16
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_6
    const-string v5, "no-store"

    .line 17
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, -0x1

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_7
    const-string v5, "max-age"

    .line 18
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    .line 19
    invoke-static {v1, v5}, Li/m0/b;->G(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_6

    :cond_8
    const/4 v5, -0x1

    const-string v9, "s-maxage"

    .line 20
    invoke-static {v9, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 21
    invoke-static {v1, v5}, Li/m0/b;->G(Ljava/lang/String;I)I

    move-result v13

    goto :goto_6

    :cond_9
    const-string v5, "private"

    .line 22
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    const-string v5, "public"

    .line 23
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const-string v5, "must-revalidate"

    .line 24
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, -0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_c
    const-string v5, "max-stale"

    .line 25
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    const v2, 0x7fffffff

    .line 26
    invoke-static {v1, v2}, Li/m0/b;->G(Ljava/lang/String;I)I

    move-result v17

    const/4 v5, -0x1

    goto :goto_6

    :cond_d
    const-string v5, "min-fresh"

    .line 27
    invoke-static {v5, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    .line 28
    invoke-static {v1, v5}, Li/m0/b;->G(Ljava/lang/String;I)I

    move-result v18

    goto :goto_6

    :cond_e
    const/4 v5, -0x1

    const-string v1, "only-if-cached"

    .line 29
    invoke-static {v1, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v19, 0x1

    goto :goto_6

    :cond_f
    const-string v1, "no-transform"

    .line 30
    invoke-static {v1, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v20, 0x1

    goto :goto_6

    :cond_10
    const-string v1, "immutable"

    .line 31
    invoke-static {v1, v2, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v21, 0x1

    :cond_11
    :goto_6
    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v24

    move-object/from16 v9, v25

    goto/16 :goto_3

    :cond_12
    move/from16 v24, v3

    move-object/from16 v25, v9

    goto :goto_7

    :cond_13
    move/from16 v24, v3

    move-object v2, v9

    :goto_7
    const/4 v5, -0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v24

    goto/16 :goto_0

    :cond_14
    move-object v2, v9

    if-nez v8, :cond_15

    const/16 v22, 0x0

    goto :goto_8

    :cond_15
    move-object/from16 v22, v2

    .line 32
    :goto_8
    new-instance v1, Li/e;

    const/16 v23, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v23}, Li/e;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lh/o/c/f;)V

    return-object v1

    :cond_16
    const-string v1, "headers"

    .line 33
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
