.class public Lf/e/a/j/x/g/c;
.super Ljava/lang/Object;
.source "KmInterceptor.java"

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
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    move-object/from16 v1, p1

    .line 2
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 3
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 4
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Lf/e/a/j/x/g/b;->c:Ljava/lang/String;

    sget-object v3, Lf/e/a/j/x/g/b;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    .line 9
    new-array v7, v5, [B

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_2

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v10, v9, 0x2

    .line 10
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v7, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    .line 12
    :cond_2
    :goto_2
    :try_start_1
    invoke-static {v2}, Lf/e/a/j/x/g/b;->d(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 13
    sget-object v2, Lf/e/a/j/x/g/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 14
    invoke-static {v3}, Lf/e/a/j/x/g/b;->e(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15
    invoke-virtual {v2, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    :goto_3
    if-nez v0, :cond_3

    goto :goto_4

    .line 17
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "YjYlSVM="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 19
    :goto_4
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 20
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v6, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v14

    .line 21
    iget-object v8, v1, Li/h0;->b:Li/e0;

    .line 22
    iget-object v9, v1, Li/h0;->c:Li/c0;

    .line 23
    iget v11, v1, Li/h0;->e:I

    .line 24
    iget-object v10, v1, Li/h0;->d:Ljava/lang/String;

    .line 25
    iget-object v12, v1, Li/h0;->f:Li/v;

    .line 26
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 27
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 28
    iget-object v15, v1, Li/h0;->i:Li/h0;

    .line 29
    iget-object v2, v1, Li/h0;->j:Li/h0;

    .line 30
    iget-object v3, v1, Li/h0;->k:Li/h0;

    .line 31
    iget-wide v4, v1, Li/h0;->l:J

    .line 32
    iget-wide v6, v1, Li/h0;->m:J

    .line 33
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v11, :cond_4

    const/4 v13, 0x1

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_8

    if-eqz v8, :cond_7

    if-eqz v9, :cond_6

    if-eqz v10, :cond_5

    .line 34
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v13

    .line 35
    new-instance v0, Li/h0;

    move-wide/from16 v20, v6

    move-object v7, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object/from16 v22, v1

    invoke-direct/range {v7 .. v22}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "code < 0: "

    .line 39
    invoke-static {v0, v11}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
