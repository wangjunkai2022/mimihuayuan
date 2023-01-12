.class public Lf/e/a/j/g/h/b;
.super Ljava/lang/Object;
.source "CucumberInterceptor.java"

# interfaces
.implements Li/y;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getCucumberKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/g/h/b;->a:Ljava/lang/String;

    const-string v0, "DwRaUl0XCAQSAwVQTFNVUg4BUlZfFghVQgVVX0FcVVl0UVMJKEAJXjAsDBQ7WSQ="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/g/h/b;->b:Ljava/lang/String;

    const-string v0, "UlVQUVpGXVFEUQBVTQlVWlFUWgFaRgkERlQHBR1SUlk="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/g/h/b;->c:Ljava/lang/String;

    const-string v0, "XhILCwUWYWE="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "eitSVQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ZCMu"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "XjILCwUWCAE="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Bg=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "BQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "BA=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Aw=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "BVVT"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "BFRT"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "A1pT"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AFBT"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "egMA"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "eyctMiQ="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "YCstICQkag=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ei8="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 10
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getMCKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/g/h/b;->d:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 12
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getMCIv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/g/h/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    .line 2
    iget-object v2, v0, Li/e0;->b:Li/x;

    .line 3
    iget-object v2, v2, Li/x;->j:Ljava/lang/String;

    .line 4
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 5
    new-instance v4, Li/e0$a;

    invoke-direct {v4, v3}, Li/e0$a;-><init>(Li/e0;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GA8MEkQRS1wEFVFV"

    .line 8
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "message == null"

    const-string v8, "protocol == null"

    const-string v9, "request == null"

    const-string v10, "code < 0: "

    const/16 v11, 0xff

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_8

    const-string v0, "Wg0VLQ9O"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v12

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/k/b;->j0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GAsNAA4LFlQWEnACDAsKBwgLB1k="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 12
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 13
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    if-eqz v2, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v0

    .line 17
    new-array v5, v4, [B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    mul-int/lit8 v12, v6, 0x2

    add-int/lit8 v13, v12, 0x2

    .line 18
    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    and-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v5, v13, [B

    :cond_2
    const-string v3, "dicwSygxehwjLXc0TzoCD1MLDQM="

    .line 19
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 20
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lf/e/a/j/g/h/b;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v11, Lf/e/a/j/g/h/b;->d:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "dicw"

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_2
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 25
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v2, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v18

    .line 26
    iget-object v12, v1, Li/h0;->b:Li/e0;

    .line 27
    iget-object v13, v1, Li/h0;->c:Li/c0;

    .line 28
    iget v15, v1, Li/h0;->e:I

    .line 29
    iget-object v14, v1, Li/h0;->d:Ljava/lang/String;

    .line 30
    iget-object v0, v1, Li/h0;->f:Li/v;

    .line 31
    iget-object v2, v1, Li/h0;->g:Li/w;

    .line 32
    invoke-virtual {v2}, Li/w;->d()Li/w$a;

    move-result-object v2

    .line 33
    iget-object v3, v1, Li/h0;->i:Li/h0;

    .line 34
    iget-object v4, v1, Li/h0;->j:Li/h0;

    .line 35
    iget-object v5, v1, Li/h0;->k:Li/h0;

    move-object v6, v9

    move-object/from16 v16, v10

    .line 36
    iget-wide v9, v1, Li/h0;->l:J

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .line 37
    iget-wide v6, v1, Li/h0;->m:J

    .line 38
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v15, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    if-eqz v12, :cond_6

    if-eqz v13, :cond_5

    if-eqz v14, :cond_4

    .line 39
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v17

    .line 40
    new-instance v2, Li/h0;

    move-object v11, v2

    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-wide/from16 v22, v9

    move-wide/from16 v24, v6

    move-object/from16 v26, v1

    invoke-direct/range {v11 .. v26}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v2

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v6, v16

    .line 44
    invoke-static {v6, v15}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object v6, v10

    const-string v7, "GAMAEAIFXBwfCVM="

    .line 45
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 46
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "GQ=="

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "b08lCxkEWEEXA1BKPgUR"

    .line 48
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v9}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 49
    sget-object v9, Lf/e/a/j/g/h/b;->c:Ljava/lang/String;

    sput-object v9, Lf/e/a/j/g/h/b;->b:Ljava/lang/String;

    :cond_9
    const-string v9, "RQcPAQoAXA=="

    .line 50
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "A1NT"

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v10, "WBAKAwId"

    .line 51
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "FwoXEBsAAxxcBUEMHVpSRVsLFQE="

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v10, "RAcS"

    .line 52
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lf/e/a/j/g/h/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v12, "T08CER8bFFgWHw=="

    .line 53
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UQcBUFMXAFEVAFIBHQgBWAVQAlNcQF0LFVQFVB0PAQY="

    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 56
    iget-object v14, v0, Li/e0;->b:Li/x;

    .line 57
    invoke-virtual {v14}, Li/x;->j()Ljava/util/Set;

    move-result-object v15

    .line 58
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 59
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 60
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v6

    .line 61
    invoke-virtual {v14, v15}, Li/x;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v15, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    move-object/from16 v15, v18

    goto :goto_4

    :cond_a
    move-object/from16 v16, v6

    const-string v6, "RwkE"

    .line 62
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v18, "VBcIAVtDCQI="

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v18}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v15, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "QwcRCQIdWF8="

    .line 64
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Aw=="

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v9, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v9, v0, Li/e0;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v14}, Li/x;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "CA=="

    .line 68
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "dhcXDAQBUEkSEl0IFlc="

    .line 69
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ETEGFVY="

    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lf/e/a/j/g/h/b;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "ETpOJR4HUR44A01aHg8BXw8GWgYNFV9VFgRWVEpYAlwAUQdcDUEIABYDVgpeMk4qQhYLSSUcV1AWWw=="

    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ETpOJR4HUR4nD1kCKx4CBkdf"

    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v14, v0, Li/e0;->c:Ljava/lang/String;

    const-string v15, "Zy0wMA=="

    .line 71
    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "Cg=="

    const-string v21, "EQ=="

    if-eqz v14, :cond_b

    .line 72
    iget-object v0, v0, Li/e0;->e:Li/g0;

    .line 73
    instance-of v14, v0, Li/u;

    if-eqz v14, :cond_b

    .line 74
    check-cast v0, Li/u;

    const/4 v14, 0x0

    move-object/from16 v22, v10

    .line 75
    :goto_5
    invoke-virtual {v0}, Li/u;->h()I

    move-result v10

    if-ge v14, v10, :cond_c

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v21}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Li/u;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Li/u;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_b
    move-object/from16 v22, v10

    .line 77
    :cond_c
    invoke-virtual {v13}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-static/range {v21 .. v21}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v13, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 82
    :cond_d
    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lf/e/a/j/g/h/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v10, "fw8CBzg7eAI="

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 85
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    .line 87
    invoke-virtual {v1, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QhYFSVM="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    .line 89
    :goto_7
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 90
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v1, "T08CER8bFF0cCFcC"

    .line 91
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v1, "T08CER8bFEAaAVo="

    .line 92
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "T08CER8bFEcaC1EUDAsOGw=="

    .line 93
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 94
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "VhcXDAQBUEkSEl0IFg=="

    .line 95
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->R:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 96
    :cond_e
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 97
    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    .line 98
    invoke-static/range {v22 .. v22}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lf/e/a/j/g/h/b;->b:Ljava/lang/String;

    const-string v1, "0urUgv3DSlYCgLz3neD8"

    .line 99
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 100
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 101
    invoke-virtual {v1}, Li/i0;->H()Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, v0, Li/h0;->h:Li/i0;

    .line 103
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v1, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v28

    .line 104
    iget-object v1, v0, Li/h0;->b:Li/e0;

    .line 105
    iget-object v2, v0, Li/h0;->c:Li/c0;

    .line 106
    iget v3, v0, Li/h0;->e:I

    .line 107
    iget-object v4, v0, Li/h0;->d:Ljava/lang/String;

    .line 108
    iget-object v5, v0, Li/h0;->f:Li/v;

    .line 109
    iget-object v6, v0, Li/h0;->g:Li/w;

    .line 110
    invoke-virtual {v6}, Li/w;->d()Li/w$a;

    move-result-object v6

    .line 111
    iget-object v7, v0, Li/h0;->i:Li/h0;

    .line 112
    iget-object v8, v0, Li/h0;->j:Li/h0;

    .line 113
    iget-object v9, v0, Li/h0;->k:Li/h0;

    .line 114
    iget-wide v10, v0, Li/h0;->l:J

    .line 115
    iget-wide v12, v0, Li/h0;->m:J

    .line 116
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v3, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    :goto_8
    if-eqz v14, :cond_13

    if-eqz v1, :cond_12

    if-eqz v2, :cond_11

    if-eqz v4, :cond_10

    .line 117
    invoke-virtual {v6}, Li/w$a;->d()Li/w;

    move-result-object v27

    .line 118
    new-instance v6, Li/h0;

    move-object/from16 v21, v6

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    move-object/from16 v36, v0

    invoke-direct/range {v21 .. v36}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v6

    .line 119
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v1, v16

    .line 122
    invoke-static {v1, v3}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object/from16 v1, p1

    .line 123
    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    .line 124
    throw v0
.end method
