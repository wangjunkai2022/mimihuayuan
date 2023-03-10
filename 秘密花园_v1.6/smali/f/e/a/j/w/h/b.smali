.class public Lf/e/a/j/w/h/b;
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

    sput-object v0, Lf/e/a/j/w/h/b;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getJHLFIv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/w/h/b;->b:Ljava/lang/String;

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
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v4, v0, Li/e0;->b:Li/x;

    .line 4
    iget-object v5, v0, Li/e0;->c:Ljava/lang/String;

    .line 5
    iget-object v7, v0, Li/e0;->e:Li/g0;

    .line 6
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v2, :cond_b

    .line 10
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 11
    :goto_0
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 12
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v3

    const-string v0, "RAsECg=="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "cC83T1NJCQM="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 15
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "ThsaHUY+dB4XAg=="

    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v8, "WgZW"

    .line 18
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    const-string v9, "QhYFSVM="

    .line 19
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 21
    :goto_1
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 22
    invoke-virtual {v3, v6, v8}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v1, "VAoCCgUWVQ=="

    .line 23
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "ZAcAFg4HflIBAlEJ"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v3, v1, v6}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v4, :cond_9

    .line 25
    invoke-virtual {v3}, Li/w$a;->d()Li/w;

    move-result-object v6

    .line 26
    invoke-static {v2}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 27
    new-instance v1, Li/e0;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    move-object/from16 v2, p1

    .line 28
    invoke-interface {v2, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 29
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 30
    invoke-virtual {v2}, Li/i0;->H()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    goto :goto_3

    .line 32
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v3

    .line 34
    new-array v6, v5, [B

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v10, v8, 0x2

    .line 35
    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    new-array v6, v4, [B

    :cond_3
    const-string v0, "dicwSygxehwjLXc0TzoCD1MLDQM="

    .line 36
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 37
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lf/e/a/j/w/h/b;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 38
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v7, Lf/e/a/j/w/h/b;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "dicw"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :goto_4
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 42
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v2, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v17

    .line 43
    iget-object v11, v1, Li/h0;->b:Li/e0;

    .line 44
    iget-object v12, v1, Li/h0;->c:Li/c0;

    .line 45
    iget v14, v1, Li/h0;->e:I

    .line 46
    iget-object v13, v1, Li/h0;->d:Ljava/lang/String;

    .line 47
    iget-object v15, v1, Li/h0;->f:Li/v;

    .line 48
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 49
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 50
    iget-object v2, v1, Li/h0;->i:Li/h0;

    .line 51
    iget-object v3, v1, Li/h0;->j:Li/h0;

    .line 52
    iget-object v4, v1, Li/h0;->k:Li/h0;

    .line 53
    iget-wide v5, v1, Li/h0;->l:J

    .line 54
    iget-wide v7, v1, Li/h0;->m:J

    .line 55
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v14, :cond_4

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v11, :cond_7

    if-eqz v12, :cond_6

    if-eqz v13, :cond_5

    .line 56
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v16

    .line 57
    new-instance v0, Li/h0;

    move-object v10, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v25, v1

    invoke-direct/range {v10 .. v25}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "code < 0: "

    .line 61
    invoke-static {v0, v14}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "value"

    .line 63
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "$this$toMutableMap"

    .line 64
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_c
    throw v1
.end method
