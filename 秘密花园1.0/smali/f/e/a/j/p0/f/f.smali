.class public Lf/e/a/j/p0/f/f;
.super Ljava/lang/Object;
.source "XiamiInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([B)[C
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    const/16 v1, 0x20

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2
    div-int/lit8 v4, v3, 0x2

    aget-byte v4, p0, v4

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 3
    aget-char v5, v0, v5

    aput-char v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 4
    aget-char v4, v0, v4

    aput-char v4, v2, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object v2

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FQ=="

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v5, v1, Li/e0;->b:Li/x;

    .line 4
    iget-object v6, v1, Li/e0;->c:Ljava/lang/String;

    .line 5
    iget-object v8, v1, Li/e0;->e:Li/g0;

    .line 6
    iget-object v3, v1, Li/e0;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, v1, Li/e0;->f:Ljava/util/Map;

    if-eqz v3, :cond_8

    .line 10
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v4

    .line 11
    :goto_0
    iget-object v1, v1, Li/e0;->d:Li/w;

    .line 12
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v4, "QwsOARgHWF4D"

    .line 14
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 15
    invoke-virtual {v1, v4, v7}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v2, "RAsECg=="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "VAECUQkSXwQSBAZXHl1XXgdSOi0+O3BmOwpZCxMACQcFUlAFUkBdBEFQBFZAWVVdBlM="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v9, "eiZW"

    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    const-string v10, "YjYlSVM="

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lf/e/a/j/p0/f/f;->b([B)[C

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, ""

    .line 18
    :goto_1
    invoke-virtual {v1, v2, v7}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v5, :cond_6

    .line 19
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v7

    .line 20
    invoke-static {v3}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 21
    new-instance v1, Li/e0;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    move-object/from16 v2, p1

    .line 22
    invoke-interface {v2, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 23
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 24
    invoke-virtual {v2}, Li/i0;->H()Ljava/lang/String;

    move-result-object v2

    .line 25
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "UwMXBQ=="

    .line 26
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3}, Lf/e/a/j/p0/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_2
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 31
    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    invoke-static {v2, v0}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 32
    iget-object v4, v1, Li/h0;->b:Li/e0;

    .line 33
    iget-object v5, v1, Li/h0;->c:Li/c0;

    .line 34
    iget v7, v1, Li/h0;->e:I

    .line 35
    iget-object v6, v1, Li/h0;->d:Ljava/lang/String;

    .line 36
    iget-object v8, v1, Li/h0;->f:Li/v;

    .line 37
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 38
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 39
    iget-object v11, v1, Li/h0;->i:Li/h0;

    .line 40
    iget-object v12, v1, Li/h0;->j:Li/h0;

    .line 41
    iget-object v13, v1, Li/h0;->k:Li/h0;

    .line 42
    iget-wide v14, v1, Li/h0;->l:J

    .line 43
    iget-wide v2, v1, Li/h0;->m:J

    .line 44
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v7, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 45
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 46
    new-instance v0, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v0

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "code < 0: "

    .line 50
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "value"

    .line 52
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "$this$toMutableMap"

    .line 53
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_9
    throw v2
.end method
