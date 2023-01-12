.class public Lf/e/a/j/h0/m/c;
.super Ljava/lang/Object;
.source "NaNaInterceptor.java"

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
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    .line 2
    iget-object v2, v1, Li/e0;->b:Li/x;

    .line 3
    iget-object v2, v2, Li/x;->j:Ljava/lang/String;

    const-string v3, "UQMQEAccXlod"

    .line 4
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "UQMQEAoGTVs="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 6
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 7
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 9
    iget-object v5, v1, Li/h0;->g:Li/w;

    const-string v6, "T08VEAoU"

    .line 10
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "DlNSUVhDDwpD"

    .line 12
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    :cond_1
    invoke-static {v5}, Lc/a/a/b/g/h;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Xw0QEDQDTlI="

    .line 14
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "eVIpJh4AXHk4KXAKMiw3OVUPEBZfOldeABJsJU48NApfKQQGPSFpWzshQ1o="

    goto :goto_0

    :cond_2
    const-string v2, "AQdWUloQWldHB1UDHVgFDlNWVlwPR11SRVdRUE5dVFs="

    :goto_0
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 15
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "dicw"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v5, "dicwSygxehwjLXc0TzoCD1MLDQM="

    .line 17
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    .line 18
    invoke-virtual {v5, v6, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_1
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 22
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v3, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v11

    .line 23
    iget-object v5, v1, Li/h0;->b:Li/e0;

    .line 24
    iget-object v6, v1, Li/h0;->c:Li/c0;

    .line 25
    iget v8, v1, Li/h0;->e:I

    .line 26
    iget-object v7, v1, Li/h0;->d:Ljava/lang/String;

    .line 27
    iget-object v9, v1, Li/h0;->f:Li/v;

    .line 28
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 29
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 30
    iget-object v12, v1, Li/h0;->i:Li/h0;

    .line 31
    iget-object v13, v1, Li/h0;->j:Li/h0;

    .line 32
    iget-object v14, v1, Li/h0;->k:Li/h0;

    .line 33
    iget-wide v2, v1, Li/h0;->l:J

    move-wide v15, v2

    .line 34
    iget-wide v2, v1, Li/h0;->m:J

    .line 35
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v8, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v5, :cond_6

    if-eqz v6, :cond_5

    if-eqz v7, :cond_4

    .line 36
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v10

    .line 37
    new-instance v0, Li/h0;

    move-object v4, v0

    move-wide/from16 v17, v2

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 38
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "code < 0: "

    .line 41
    invoke-static {v0, v8}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_8
    :goto_3
    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    return-object v0
.end method
