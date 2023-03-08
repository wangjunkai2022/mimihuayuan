.class public Lf/e/a/j/l/h/e;
.super Ljava/lang/Object;
.source "Fl2Interceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 22
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
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 3
    iget-object v2, v0, Li/x;->j:Ljava/lang/String;

    const-string v0, "Xw0QEDQVC2xB"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "QVNMFg4UUEAHA0ZIDAUIDlk="

    .line 5
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    or-int/2addr v0, v3

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 6
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    const/4 v1, 0x1

    goto/16 :goto_a

    .line 7
    :cond_0
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v6

    .line 8
    iget-object v0, v6, Li/e0;->b:Li/x;

    .line 9
    invoke-virtual {v0}, Li/x;->b()Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object v8, v0, Li/x;->e:Ljava/lang/String;

    .line 11
    iget-object v9, v0, Li/x;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Li/x;->d()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v10, Lf/i/b/r;

    invoke-direct {v10}, Lf/i/b/r;-><init>()V

    .line 14
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v11, "RwMXDA=="

    .line 15
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Qw0IAQU="

    .line 16
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v11, Lf/e/a/j/l/h/d;->a:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v11, ""

    const-string v12, "YjYlSVM="

    const-string v13, "Cg=="

    if-nez v5, :cond_3

    const-string v5, "EQ=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 18
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 19
    array-length v14, v5

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_5

    aget-object v0, v5, v15

    move-object/from16 v16, v5

    .line 20
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 21
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 22
    :try_start_0
    aget-object v5, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v11

    :try_start_1
    array-length v11, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v14

    const/4 v14, 0x1

    if-le v11, v14, :cond_1

    :try_start_2
    aget-object v0, v0, v14

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    move-object/from16 v0, v17

    :goto_1
    invoke-virtual {v10, v5, v0}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v17, v11

    :goto_2
    move/from16 v18, v14

    .line 23
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    move-object/from16 v17, v11

    move/from16 v18, v14

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move-object/from16 v11, v17

    move/from16 v14, v18

    goto :goto_0

    :cond_3
    move-object/from16 v17, v11

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 26
    :try_start_3
    aget-object v5, v0, v5

    array-length v11, v0

    const/4 v13, 0x1

    if-le v11, v13, :cond_4

    aget-object v0, v0, v13

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_4
    move-object/from16 v11, v17

    :goto_5
    invoke-virtual {v10, v5, v11}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_5
    :goto_6
    invoke-virtual {v10}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 29
    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    invoke-static {}, Lf/e/a/k/f;->a()V

    const-string v10, "Uhc5Klo0XgA5L0MwNy80A1onVCdfHwxXIDVmMkteBRJCMi48AQdMXAIwRw=="

    .line 31
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 32
    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    const/4 v11, 0x0

    .line 33
    :try_start_4
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const-string v14, "dicw"

    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v10, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 34
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v14, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 35
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v15, 0x1

    .line 36
    :try_start_5
    invoke-virtual {v14, v15, v13, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v10, 0x2

    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v15, 0x1

    .line 38
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 39
    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    .line 40
    invoke-static {v5, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GQ=="

    .line 42
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v5, Li/x$a;

    invoke-direct {v5}, Li/x$a;-><init>()V

    invoke-virtual {v5, v9}, Li/x$a;->h(Ljava/lang/String;)Li/x$a;

    invoke-virtual {v5, v8}, Li/x$a;->e(Ljava/lang/String;)Li/x$a;

    const-string v8, "/"

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 46
    invoke-static {v7, v8, v10, v9}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 47
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v10, v8}, Li/x$a;->g(Ljava/lang/String;II)V

    const-string v7, "RwMaCAQSXQ=="

    .line 48
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Li/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;

    invoke-virtual {v5}, Li/x$a;->b()Li/x;

    move-result-object v17

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    iget-object v0, v6, Li/e0;->c:Ljava/lang/String;

    .line 51
    iget-object v5, v6, Li/e0;->e:Li/g0;

    .line 52
    iget-object v7, v6, Li/e0;->f:Ljava/util/Map;

    .line 53
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 54
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_9

    .line 55
    :cond_6
    iget-object v7, v6, Li/e0;->f:Ljava/util/Map;

    if-eqz v7, :cond_e

    .line 56
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v7, v8

    .line 57
    :goto_9
    iget-object v6, v6, Li/e0;->d:Li/w;

    .line 58
    invoke-virtual {v6}, Li/w;->d()Li/w$a;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Li/w$a;->d()Li/w;

    move-result-object v19

    .line 60
    invoke-static {v7}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v21

    .line 61
    new-instance v6, Li/e0;

    move-object/from16 v16, v6

    move-object/from16 v18, v0

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 62
    invoke-interface {v1, v6}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    move v1, v15

    .line 63
    :goto_a
    iget-object v5, v0, Li/h0;->h:Li/i0;

    .line 64
    invoke-virtual {v5}, Li/i0;->H()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_7

    .line 65
    invoke-static {}, Lc/a/a/b/g/h;->e0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Lc/a/a/b/g/h;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v2, v3, v5}, Lc/a/a/b/g/h;->I([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_7
    const-string v3, "b081MAoU"

    .line 67
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    invoke-static {v3, v5}, Lc/a/a/b/g/h;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 70
    :cond_8
    invoke-static {v3, v5}, Lc/a/a/b/g/h;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_b
    iget-object v3, v0, Li/h0;->h:Li/i0;

    .line 72
    invoke-virtual {v3}, Li/i0;->E()Li/z;

    move-result-object v3

    invoke-static {v2, v3}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v11

    .line 73
    iget-object v5, v0, Li/h0;->b:Li/e0;

    .line 74
    iget-object v6, v0, Li/h0;->c:Li/c0;

    .line 75
    iget v8, v0, Li/h0;->e:I

    .line 76
    iget-object v7, v0, Li/h0;->d:Ljava/lang/String;

    .line 77
    iget-object v9, v0, Li/h0;->f:Li/v;

    .line 78
    iget-object v2, v0, Li/h0;->g:Li/w;

    .line 79
    invoke-virtual {v2}, Li/w;->d()Li/w$a;

    move-result-object v2

    .line 80
    iget-object v12, v0, Li/h0;->i:Li/h0;

    .line 81
    iget-object v13, v0, Li/h0;->j:Li/h0;

    .line 82
    iget-object v14, v0, Li/h0;->k:Li/h0;

    .line 83
    iget-wide v3, v0, Li/h0;->l:J

    move-object/from16 v16, v14

    .line 84
    iget-wide v14, v0, Li/h0;->m:J

    .line 85
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v8, :cond_9

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_d

    if-eqz v5, :cond_c

    if-eqz v6, :cond_b

    if-eqz v7, :cond_a

    .line 86
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v10

    .line 87
    new-instance v1, Li/h0;

    move-wide v2, v3

    move-object v4, v1

    move-wide/from16 v17, v14

    move-object/from16 v14, v16

    move-wide v15, v2

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v1

    .line 88
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v0, "code < 0: "

    .line 91
    invoke-static {v0, v8}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v0, "$this$toMutableMap"

    .line 92
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v11

    :cond_f
    const-string v0, "unexpected encodedPath: "

    .line 93
    invoke-static {v0, v7}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
