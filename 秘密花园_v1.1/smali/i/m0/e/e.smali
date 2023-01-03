.class public final Li/m0/e/e;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lj/k;->e:Lj/k$a;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    .line 2
    sget-object v0, Lj/k;->e:Lj/k$a;

    const-string v1, "\t ,="

    invoke-virtual {v0, v1}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    return-void
.end method

.method public static final a(Li/h0;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Li/h0;->b:Li/e0;

    .line 2
    iget-object v0, v0, Li/e0;->c:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Li/h0;->e:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Li/m0/b;->n(Li/h0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const-string v2, "Transfer-Encoding"

    const/4 v4, 0x0

    .line 6
    invoke-static {p0, v2, v4, v0}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0, v3}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static final b(Li/p;Li/x;Li/w;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    if-eqz v1, :cond_26

    if-eqz v2, :cond_25

    if-eqz v0, :cond_24

    .line 1
    sget-object v3, Li/p;->a:Li/p;

    if-ne v1, v3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Li/n;->n:Li/n;

    const-string v3, "Set-Cookie"

    .line 3
    invoke-virtual {v0, v3}, Li/w;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_21

    .line 5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_20

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v10, 0x3b

    const/4 v11, 0x6

    .line 7
    invoke-static {v7, v10, v0, v0, v11}, Li/m0/b;->j(Ljava/lang/String;CIII)I

    move-result v11

    const/16 v12, 0x3d

    .line 8
    invoke-static {v7, v12, v0, v11}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v12

    if-ne v12, v11, :cond_2

    :cond_1
    :goto_1
    move-object/from16 p2, v3

    move/from16 v33, v4

    goto/16 :goto_e

    .line 9
    :cond_2
    invoke-static {v7, v0, v12}, Li/m0/b;->H(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 10
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_1

    invoke-static {v14}, Li/m0/b;->q(Ljava/lang/String;)I

    move-result v0

    const/4 v13, -0x1

    if-eq v0, v13, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 11
    invoke-static {v7, v12, v11}, Li/m0/b;->H(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-static {v15}, Li/m0/b;->q(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v13, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const-wide v16, 0xe677d21fdbffL

    const-wide/16 v18, -0x1

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object v10, v0

    move-wide/from16 v26, v16

    move-wide/from16 v24, v18

    const/16 v0, 0x3b

    :goto_3
    const-wide v28, 0x7fffffffffffffffL

    const-wide/high16 v30, -0x8000000000000000L

    if-ge v11, v12, :cond_10

    move-object/from16 p2, v3

    .line 14
    invoke-static {v7, v0, v11, v12}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v3

    const/16 v0, 0x3d

    .line 15
    invoke-static {v7, v0, v11, v3}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v0

    .line 16
    invoke-static {v7, v11, v0}, Li/m0/b;->H(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    if-ge v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 17
    invoke-static {v7, v0, v3}, Li/m0/b;->H(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v0, ""

    :goto_4
    move-object/from16 v32, v0

    const-string v0, "expires"

    move/from16 v33, v4

    const/4 v4, 0x1

    .line 18
    invoke-static {v11, v0, v4}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    :try_start_0
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    move-object/from16 v11, v32

    invoke-static {v11, v4, v0}, Li/n;->c(Ljava/lang/String;II)J

    move-result-wide v26
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v32, v7

    goto :goto_6

    :catch_0
    move-object/from16 v32, v7

    goto/16 :goto_7

    :cond_7
    const-string v0, "max-age"

    .line 20
    invoke-static {v11, v0, v4}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    :try_start_1
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v28, 0x0

    cmp-long v0, v24, v28

    if-gtz v0, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v30, v24

    :goto_5
    move-object/from16 v32, v7

    move-wide/from16 v24, v30

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_2
    const-string v0, "-?\\d+"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v11, "Pattern.compile(pattern)"

    invoke-static {v0, v11}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v32

    .line 23
    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "-"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x2

    move-object/from16 v32, v7

    const/4 v7, 0x0

    .line 24
    :try_start_3
    invoke-static {v11, v0, v7, v4}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide/from16 v28, v30

    :cond_9
    move-wide/from16 v24, v28

    :goto_6
    const/16 v22, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v32, v7

    .line 25
    throw v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    move-object/from16 v4, v32

    move-object/from16 v32, v7

    const-string v0, "domain"

    const/4 v7, 0x1

    .line 26
    invoke-static {v11, v0, v7}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    :try_start_4
    invoke-static {v4}, Li/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v23, 0x0

    move-object v10, v0

    goto :goto_7

    :cond_c
    const-string v0, "path"

    .line 28
    invoke-static {v11, v0, v7}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v13, v4

    goto :goto_7

    :cond_d
    const-string v0, "secure"

    .line 29
    invoke-static {v11, v0, v7}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v20, 0x1

    goto :goto_7

    :cond_e
    const-string v0, "httponly"

    .line 30
    invoke-static {v11, v0, v7}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v21, 0x1

    :catch_2
    :cond_f
    :goto_7
    add-int/lit8 v11, v3, 0x1

    const/16 v0, 0x3b

    move-object/from16 v3, p2

    move-object/from16 v7, v32

    move/from16 v4, v33

    goto/16 :goto_3

    :cond_10
    move-object/from16 p2, v3

    move/from16 v33, v4

    cmp-long v0, v24, v30

    if-nez v0, :cond_11

    move-wide/from16 v16, v30

    goto :goto_8

    :cond_11
    cmp-long v0, v24, v18

    if-eqz v0, :cond_14

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long v0, v24, v3

    if-gtz v0, :cond_12

    const/16 v0, 0x3e8

    int-to-long v3, v0

    mul-long v28, v24, v3

    :cond_12
    add-long v28, v8, v28

    cmp-long v0, v28, v8

    if-ltz v0, :cond_15

    cmp-long v0, v28, v16

    if-lez v0, :cond_13

    goto :goto_8

    :cond_13
    move-wide/from16 v16, v28

    goto :goto_8

    :cond_14
    move-wide/from16 v16, v26

    .line 31
    :cond_15
    :goto_8
    iget-object v0, v2, Li/x;->e:Ljava/lang/String;

    if-nez v10, :cond_16

    move-object v10, v0

    goto :goto_b

    .line 32
    :cond_16
    invoke-static {v0, v10}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :goto_9
    const/4 v3, 0x1

    goto :goto_a

    :cond_17
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v10, v4, v3}, Lh/s/d;->c(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2e

    if-ne v3, v7, :cond_18

    .line 35
    invoke-static {v0}, Li/m0/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_19

    goto :goto_e

    .line 36
    :cond_19
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_1a

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    .line 37
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 38
    invoke-virtual {v0, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_e

    :cond_1a
    const-string v0, "/"

    if-eqz v13, :cond_1c

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 39
    invoke-static {v13, v0, v4, v3}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_c

    :cond_1b
    move-object/from16 v19, v13

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    .line 40
    :goto_c
    invoke-virtual/range {p1 .. p1}, Li/x;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x2f

    const/4 v8, 0x6

    .line 41
    invoke-static {v3, v7, v4, v4, v8}, Lh/s/d;->m(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    if-eqz v7, :cond_1d

    .line 42
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v19, v0

    .line 43
    :goto_d
    new-instance v0, Li/n;

    const/16 v24, 0x0

    move-object v13, v0

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v24}, Li/n;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLh/o/c/f;)V

    goto :goto_f

    :goto_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1f

    if-nez v6, :cond_1e

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_1e
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    move-object/from16 v3, p2

    move/from16 v4, v33

    goto/16 :goto_0

    :cond_20
    const-string v0, "setCookie"

    .line 46
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_21
    if-eqz v6, :cond_22

    .line 47
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v3, "Collections.unmodifiableList(cookies)"

    invoke-static {v0, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    .line 48
    :cond_22
    sget-object v0, Lh/k/i;->a:Lh/k/i;

    .line 49
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    return-void

    .line 50
    :cond_23
    invoke-interface {v1, v2, v0}, Li/p;->b(Li/x;Ljava/util/List;)V

    return-void

    :cond_24
    const-string v0, "headers"

    .line 51
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_25
    const/4 v0, 0x0

    const-string v1, "url"

    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    const-string v1, "$this$receiveHeaders"

    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
