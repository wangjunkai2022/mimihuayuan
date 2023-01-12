.class public Lf/e/a/j/n0/c/e;
.super Ljava/lang/Object;
.source "SignRequestInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "eiZW"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "YjYlSVM="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Li/e0;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/e0;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lf/e/a/j/n0/c/d;

    invoke-direct {v1}, Lf/e/a/j/n0/c/d;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string p1, "QwsOATgHWF4DNUAV"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RQMNAAQeakcB"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "UwcVDQgWcFc="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "EQ=="

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "RwMEATgaQ1Y="

    .line 10
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "RwMEASUGVFEWFA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cg=="

    .line 12
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 16
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DxgaXAURSgofH1ADAFpRGFsBGVwSA1REEBQGExQfVFlo"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "YjYlSVM="

    .line 18
    :try_start_0
    invoke-static {p0}, Lf/e/a/j/n0/c/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/n0/c/e;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lf/e/a/j/n0/c/e;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lf/e/a/j/n0/c/e;->d([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v2, "Bw=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    invoke-static {v4, v5, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 12
    .param p1    # Li/y$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Li/e0;->c:Ljava/lang/String;

    const-string v2, "cCc3"

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "$this$toMutableMap"

    const-string v5, "RAsECg=="

    const-string v6, "QhYFSVM="

    if-nez v2, :cond_7

    const-string v2, "Zzc3"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "Zy0wMA=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v1, v0, Li/e0;->e:Li/g0;

    .line 7
    instance-of v2, v1, Li/a0;

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    .line 10
    new-instance v7, Lj/g;

    invoke-direct {v7}, Lj/g;-><init>()V

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/g0;

    invoke-virtual {v1, v7}, Li/g0;->e(Lj/i;)V

    .line 12
    invoke-virtual {v7}, Lj/g;->I()Ljava/lang/String;

    move-result-object v1

    const-class v7, Ljava/util/TreeMap;

    .line 13
    invoke-virtual {v2, v1, v7}, Lf/i/b/j;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-static {v7}, Lf/i/b/c0/u;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/TreeMap;

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v1}, Lf/e/a/j/n0/c/e;->c(Li/e0;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    iget-object v7, v0, Li/e0;->b:Li/x;

    .line 18
    iget-object v8, v0, Li/e0;->c:Ljava/lang/String;

    .line 19
    iget-object v10, v0, Li/e0;->e:Li/g0;

    .line 20
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 23
    :cond_3
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 24
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v4

    .line 25
    :goto_0
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 26
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 27
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v0, v4, v1}, Li/w$a;->g(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v7, :cond_4

    .line 29
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 30
    invoke-static {v2}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 31
    new-instance v0, Li/e0;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 32
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "value"

    .line 34
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_6
    invoke-static {v4}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_7
    :goto_1
    iget-object v1, v0, Li/e0;->b:Li/x;

    .line 37
    invoke-virtual {v1}, Li/x;->j()Ljava/util/Set;

    move-result-object v2

    .line 38
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 39
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v8}, Li/x;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_8
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v7}, Lf/e/a/j/n0/c/e;->c(Li/e0;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Li/x;->g()Li/x$a;

    move-result-object v1

    .line 43
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Li/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;

    .line 44
    invoke-virtual {v1}, Li/x$a;->b()Li/x;

    move-result-object v7

    .line 45
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    iget-object v8, v0, Li/e0;->c:Ljava/lang/String;

    .line 47
    iget-object v10, v0, Li/e0;->e:Li/g0;

    .line 48
    iget-object v1, v0, Li/e0;->f:Ljava/util/Map;

    .line 49
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_3

    .line 51
    :cond_9
    iget-object v1, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 52
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 53
    :goto_3
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 54
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 56
    invoke-static {v1}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 57
    new-instance v0, Li/e0;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 58
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 59
    :cond_a
    invoke-static {v4}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3
.end method
