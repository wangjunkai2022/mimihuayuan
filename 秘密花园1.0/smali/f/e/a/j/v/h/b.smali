.class public Lf/e/a/j/v/h/b;
.super Ljava/lang/Object;
.source "MyInterceptor.java"

# interfaces
.implements Li/y;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getJHLFKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/v/h/b;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getJHLFIv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/v/h/b;->b:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getLfECB(Landroid/content/Context;)Ljava/lang/String;

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
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 2
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 3
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v0

    .line 7
    new-array v5, v4, [B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v8, v7, 0x2

    .line 8
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v5, v3, [B

    :cond_2
    const-string v3, "dicwSygxehwjLXc0TzoCD1MLDQM="

    .line 9
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 10
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lf/e/a/j/v/h/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 11
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v7, Lf/e/a/j/v/h/b;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "dicw"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 12
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

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_2
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 15
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v2, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 16
    iget-object v4, v1, Li/h0;->b:Li/e0;

    .line 17
    iget-object v5, v1, Li/h0;->c:Li/c0;

    .line 18
    iget v7, v1, Li/h0;->e:I

    .line 19
    iget-object v6, v1, Li/h0;->d:Ljava/lang/String;

    .line 20
    iget-object v8, v1, Li/h0;->f:Li/v;

    .line 21
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 22
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 23
    iget-object v11, v1, Li/h0;->i:Li/h0;

    .line 24
    iget-object v12, v1, Li/h0;->j:Li/h0;

    .line 25
    iget-object v13, v1, Li/h0;->k:Li/h0;

    .line 26
    iget-wide v14, v1, Li/h0;->l:J

    .line 27
    iget-wide v2, v1, Li/h0;->m:J

    .line 28
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v7, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_7

    if-eqz v4, :cond_6

    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    .line 29
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 30
    new-instance v0, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v0

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "code < 0: "

    .line 34
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
