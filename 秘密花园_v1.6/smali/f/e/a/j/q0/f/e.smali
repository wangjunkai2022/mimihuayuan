.class public Lf/e/a/j/q0/f/e;
.super Ljava/lang/Object;
.source "XiaMiPlayerInterceptor.java"

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

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

    if-eqz v2, :cond_3

    .line 10
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 11
    :goto_0
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 12
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 13
    new-instance v3, Ljava/net/URL;

    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v6

    .line 14
    iget-object v6, v6, Li/e0;->b:Li/x;

    .line 15
    iget-object v6, v6, Li/x;->j:Ljava/lang/String;

    .line 16
    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GA=="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Gw=="

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v6, "VBEXDQYWSkcSC0Q="

    .line 18
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 19
    invoke-virtual {v0, v6, v8}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v1, "VBE="

    .line 20
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RhUGFhILTVkdDlMSCAsQBlMMFgUCAFNdCxNV"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v8, "eiZW"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    const-string v10, "YjYlSVM="

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lf/e/a/j/q0/f/e;->b([B)[C

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v6

    goto :goto_1

    :catch_0
    nop

    .line 22
    :goto_1
    invoke-virtual {v0, v1, v9}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v6

    .line 24
    invoke-static {v2}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 25
    new-instance v0, Li/e0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 26
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "value"

    .line 28
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "$this$toMutableMap"

    .line 29
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_4
    throw v1
.end method
