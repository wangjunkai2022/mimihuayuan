.class public abstract Ll/i0;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ll/h0;Ljava/lang/reflect/Method;)Ll/i0;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/h0;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ll/i0<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ll/f0$a;

    invoke-direct {v2, v0, v1}, Ll/f0$a;-><init>(Ll/h0;Ljava/lang/reflect/Method;)V

    .line 2
    iget-object v3, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "HEAD"

    const/4 v8, 0x1

    if-ge v6, v4, :cond_f

    aget-object v9, v3, v6

    .line 3
    instance-of v10, v9, Ll/o0/b;

    if-eqz v10, :cond_0

    .line 4
    check-cast v9, Ll/o0/b;

    invoke-interface {v9}, Ll/o0/b;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    invoke-virtual {v2, v8, v7, v5}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 5
    :cond_0
    instance-of v10, v9, Ll/o0/f;

    if-eqz v10, :cond_1

    .line 6
    check-cast v9, Ll/o0/f;

    invoke-interface {v9}, Ll/o0/f;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v2, v8, v7, v5}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 7
    :cond_1
    instance-of v10, v9, Ll/o0/g;

    if-eqz v10, :cond_2

    .line 8
    check-cast v9, Ll/o0/g;

    invoke-interface {v9}, Ll/o0/g;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v5}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 9
    :cond_2
    instance-of v7, v9, Ll/o0/l;

    if-eqz v7, :cond_3

    .line 10
    check-cast v9, Ll/o0/l;

    invoke-interface {v9}, Ll/o0/l;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PATCH"

    invoke-virtual {v2, v9, v7, v8}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 11
    :cond_3
    instance-of v7, v9, Ll/o0/m;

    if-eqz v7, :cond_4

    .line 12
    check-cast v9, Ll/o0/m;

    invoke-interface {v9}, Ll/o0/m;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "POST"

    invoke-virtual {v2, v9, v7, v8}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 13
    :cond_4
    instance-of v7, v9, Ll/o0/n;

    if-eqz v7, :cond_5

    .line 14
    check-cast v9, Ll/o0/n;

    invoke-interface {v9}, Ll/o0/n;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PUT"

    invoke-virtual {v2, v9, v7, v8}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 15
    :cond_5
    instance-of v7, v9, Ll/o0/k;

    if-eqz v7, :cond_6

    .line 16
    check-cast v9, Ll/o0/k;

    invoke-interface {v9}, Ll/o0/k;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    invoke-virtual {v2, v8, v7, v5}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 17
    :cond_6
    instance-of v7, v9, Ll/o0/h;

    if-eqz v7, :cond_7

    .line 18
    check-cast v9, Ll/o0/h;

    .line 19
    invoke-interface {v9}, Ll/o0/h;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9}, Ll/o0/h;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Ll/o0/h;->hasBody()Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Ll/f0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 20
    :cond_7
    instance-of v7, v9, Ll/o0/j;

    if-eqz v7, :cond_c

    .line 21
    check-cast v9, Ll/o0/j;

    invoke-interface {v9}, Ll/o0/j;->value()[Ljava/lang/String;

    move-result-object v7

    .line 22
    array-length v9, v7

    if-eqz v9, :cond_b

    .line 23
    new-instance v9, Li/w$a;

    invoke-direct {v9}, Li/w$a;-><init>()V

    .line 24
    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    aget-object v12, v7, v11

    const/16 v13, 0x3a

    .line 25
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    if-eqz v13, :cond_9

    .line 26
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v8

    if-eq v13, v14, :cond_9

    .line 27
    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    .line 28
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Content-Type"

    .line 29
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 30
    :try_start_0
    invoke-static {v12}, Li/z;->b(Ljava/lang/String;)Li/z;

    move-result-object v13

    iput-object v13, v2, Ll/f0$a;->t:Li/z;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v12, v2, v5

    const-string v3, "Malformed content type: %s"

    invoke-static {v1, v0, v3, v2}, Ll/l0;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 32
    :cond_8
    invoke-virtual {v9, v14, v12}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 33
    :cond_9
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v12, v1, v5

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 34
    :cond_a
    invoke-virtual {v9}, Li/w$a;->d()Li/w;

    move-result-object v7

    .line 35
    iput-object v7, v2, Ll/f0$a;->s:Li/w;

    goto :goto_3

    .line 36
    :cond_b
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 37
    :cond_c
    instance-of v7, v9, Ll/o0/e;

    if-eqz v7, :cond_e

    .line 38
    iget-boolean v7, v2, Ll/f0$a;->q:Z

    if-nez v7, :cond_d

    .line 39
    iput-boolean v8, v2, Ll/f0$a;->p:Z

    goto :goto_3

    .line 40
    :cond_d
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Only one encoding annotation is allowed."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 41
    :cond_f
    iget-object v3, v2, Ll/f0$a;->n:Ljava/lang/String;

    if-eqz v3, :cond_72

    .line 42
    iget-boolean v3, v2, Ll/f0$a;->o:Z

    if-nez v3, :cond_12

    .line 43
    iget-boolean v3, v2, Ll/f0$a;->q:Z

    if-nez v3, :cond_11

    .line 44
    iget-boolean v3, v2, Ll/f0$a;->p:Z

    if-nez v3, :cond_10

    goto :goto_4

    .line 45
    :cond_10
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 46
    :cond_11
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 47
    :cond_12
    :goto_4
    iget-object v3, v2, Ll/f0$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v3, v3

    .line 48
    new-array v4, v3, [Ll/c0;

    iput-object v4, v2, Ll/f0$a;->v:[Ll/c0;

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_5d

    .line 49
    iget-object v6, v2, Ll/f0$a;->v:[Ll/c0;

    iget-object v8, v2, Ll/f0$a;->e:[Ljava/lang/reflect/Type;

    aget-object v14, v8, v5

    iget-object v8, v2, Ll/f0$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v15, v8, v5

    if-ne v5, v4, :cond_13

    const/4 v8, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_6
    if-eqz v15, :cond_5a

    .line 50
    array-length v13, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v17, v9

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v13, :cond_59

    aget-object v8, v15, v12

    .line 51
    const-class v9, Ljava/lang/String;

    const-class v10, Li/a0$c;

    instance-of v11, v8, Ll/o0/v;

    move/from16 v18, v3

    const-string v3, "@Path parameters may not be used with @Url."

    if-eqz v11, :cond_1c

    .line 52
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 53
    iget-boolean v8, v2, Ll/f0$a;->m:Z

    if-nez v8, :cond_1b

    .line 54
    iget-boolean v8, v2, Ll/f0$a;->i:Z

    if-nez v8, :cond_1a

    .line 55
    iget-boolean v3, v2, Ll/f0$a;->j:Z

    if-nez v3, :cond_19

    .line 56
    iget-boolean v3, v2, Ll/f0$a;->k:Z

    if-nez v3, :cond_18

    .line 57
    iget-boolean v3, v2, Ll/f0$a;->l:Z

    if-nez v3, :cond_17

    .line 58
    iget-object v3, v2, Ll/f0$a;->r:Ljava/lang/String;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    .line 59
    iput-boolean v3, v2, Ll/f0$a;->m:Z

    .line 60
    const-class v3, Li/x;

    if-eq v14, v3, :cond_15

    if-eq v14, v9, :cond_15

    const-class v3, Ljava/net/URI;

    if-eq v14, v3, :cond_15

    instance-of v3, v14, Ljava/lang/Class;

    if-eqz v3, :cond_14

    const-string v3, "android.net.Uri"

    move-object v8, v14

    check-cast v8, Ljava/lang/Class;

    .line 61
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_8

    .line 62
    :cond_14
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 63
    :cond_15
    :goto_8
    new-instance v3, Ll/c0$l;

    iget-object v8, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v3, v8, v5}, Ll/c0$l;-><init>(Ljava/lang/reflect/Method;I)V

    move/from16 v19, v4

    move/from16 v21, v12

    move/from16 v20, v13

    goto/16 :goto_e

    .line 64
    :cond_16
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Ll/f0$a;->n:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_17
    const/4 v0, 0x0

    .line 65
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @QueryMap."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_18
    const/4 v0, 0x0

    .line 66
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @QueryName."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v0, 0x0

    .line 67
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @Query."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v0, 0x0

    .line 68
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v0, 0x0

    .line 69
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Multiple @Url method annotations found."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 70
    :cond_1c
    instance-of v11, v8, Ll/o0/q;

    move/from16 v19, v4

    const/4 v4, 0x2

    if-eqz v11, :cond_24

    .line 71
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 72
    iget-boolean v9, v2, Ll/f0$a;->j:Z

    if-nez v9, :cond_23

    .line 73
    iget-boolean v9, v2, Ll/f0$a;->k:Z

    if-nez v9, :cond_22

    .line 74
    iget-boolean v9, v2, Ll/f0$a;->l:Z

    if-nez v9, :cond_21

    .line 75
    iget-boolean v9, v2, Ll/f0$a;->m:Z

    if-nez v9, :cond_20

    .line 76
    iget-object v3, v2, Ll/f0$a;->r:Ljava/lang/String;

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    .line 77
    iput-boolean v3, v2, Ll/f0$a;->i:Z

    .line 78
    check-cast v8, Ll/o0/q;

    .line 79
    invoke-interface {v8}, Ll/o0/q;->value()Ljava/lang/String;

    move-result-object v11

    .line 80
    sget-object v3, Ll/f0$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 81
    iget-object v3, v2, Ll/f0$a;->u:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 82
    iget-object v3, v2, Ll/f0$a;->a:Ll/h0;

    invoke-virtual {v3, v14, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v3

    .line 83
    new-instance v4, Ll/c0$g;

    iget-object v9, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {v8}, Ll/o0/q;->encoded()Z

    move-result v20

    move-object v8, v4

    move v10, v5

    move/from16 v21, v12

    move-object v12, v3

    move v3, v13

    move/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Ll/c0$g;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Ll/l;Z)V

    goto/16 :goto_c

    .line 84
    :cond_1d
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v2, Ll/f0$a;->r:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const-string v2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    iget-object v2, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Ll/f0$a;->x:Ljava/util/regex/Pattern;

    .line 86
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v11, v3, v1

    const-string v0, "@Path parameter name must match %s. Found: %s"

    .line 87
    invoke-static {v2, v5, v0, v3}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1f
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 88
    iget-object v3, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Ll/f0$a;->n:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "@Path can only be used with relative url on @%s"

    invoke-static {v3, v5, v0, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_20
    const/4 v0, 0x0

    .line 89
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v0, 0x0

    .line 90
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @QueryMap."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v0, 0x0

    .line 91
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @QueryName."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v0, 0x0

    .line 92
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @Query."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_24
    move/from16 v21, v12

    move v3, v13

    .line 93
    instance-of v4, v8, Ll/o0/r;

    const-string v11, "<String>)"

    const-string v12, " must include generic type (e.g., "

    if-eqz v4, :cond_28

    .line 94
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 95
    check-cast v8, Ll/o0/r;

    .line 96
    invoke-interface {v8}, Ll/o0/r;->value()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-interface {v8}, Ll/o0/r;->encoded()Z

    move-result v8

    .line 98
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    .line 99
    iput-boolean v10, v2, Ll/f0$a;->j:Z

    .line 100
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 101
    instance-of v10, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_25

    .line 102
    move-object v9, v14

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 103
    invoke-static {v10, v9}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 104
    iget-object v10, v2, Ll/f0$a;->a:Ll/h0;

    .line 105
    invoke-virtual {v10, v9, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 106
    new-instance v10, Ll/c0$h;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$h;-><init>(Ljava/lang/String;Ll/l;Z)V

    .line 107
    new-instance v4, Ll/a0;

    invoke-direct {v4, v10}, Ll/a0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 108
    :cond_25
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 109
    :cond_26
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 110
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Ll/f0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 111
    iget-object v10, v2, Ll/f0$a;->a:Ll/h0;

    .line 112
    invoke-virtual {v10, v9, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 113
    new-instance v10, Ll/c0$h;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$h;-><init>(Ljava/lang/String;Ll/l;Z)V

    .line 114
    new-instance v4, Ll/b0;

    invoke-direct {v4, v10}, Ll/b0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 115
    :cond_27
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 116
    invoke-virtual {v9, v14, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 117
    new-instance v10, Ll/c0$h;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$h;-><init>(Ljava/lang/String;Ll/l;Z)V

    goto/16 :goto_a

    .line 118
    :cond_28
    instance-of v4, v8, Ll/o0/t;

    if-eqz v4, :cond_2c

    .line 119
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 120
    check-cast v8, Ll/o0/t;

    .line 121
    invoke-interface {v8}, Ll/o0/t;->encoded()Z

    move-result v4

    .line 122
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    .line 123
    iput-boolean v9, v2, Ll/f0$a;->k:Z

    .line 124
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 125
    instance-of v9, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_29

    .line 126
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 127
    invoke-static {v9, v8}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 128
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 129
    invoke-virtual {v9, v8, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 130
    new-instance v9, Ll/c0$j;

    invoke-direct {v9, v8, v4}, Ll/c0$j;-><init>(Ll/l;Z)V

    .line 131
    new-instance v4, Ll/a0;

    invoke-direct {v4, v9}, Ll/a0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 132
    :cond_29
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 133
    :cond_2a
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 134
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Ll/f0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 135
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 136
    invoke-virtual {v9, v8, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 137
    new-instance v9, Ll/c0$j;

    invoke-direct {v9, v8, v4}, Ll/c0$j;-><init>(Ll/l;Z)V

    .line 138
    new-instance v4, Ll/b0;

    invoke-direct {v4, v9}, Ll/b0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 139
    :cond_2b
    iget-object v8, v2, Ll/f0$a;->a:Ll/h0;

    .line 140
    invoke-virtual {v8, v14, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 141
    new-instance v9, Ll/c0$j;

    invoke-direct {v9, v8, v4}, Ll/c0$j;-><init>(Ll/l;Z)V

    :goto_9
    move/from16 v20, v3

    move-object v3, v9

    goto/16 :goto_e

    .line 142
    :cond_2c
    instance-of v4, v8, Ll/o0/s;

    const-string v13, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v4, :cond_30

    .line 143
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 144
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v10, 0x1

    .line 145
    iput-boolean v10, v2, Ll/f0$a;->l:Z

    .line 146
    const-class v11, Ljava/util/Map;

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 147
    const-class v11, Ljava/util/Map;

    invoke-static {v14, v4, v11}, Ll/l0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 148
    instance-of v11, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_2e

    .line 149
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    .line 150
    invoke-static {v11, v4}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v9, v11, :cond_2d

    .line 151
    invoke-static {v10, v4}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 152
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 153
    invoke-virtual {v9, v4, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v4

    .line 154
    new-instance v9, Ll/c0$i;

    iget-object v10, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    check-cast v8, Ll/o0/s;

    .line 155
    invoke-interface {v8}, Ll/o0/s;->encoded()Z

    move-result v8

    invoke-direct {v9, v10, v5, v4, v8}, Ll/c0$i;-><init>(Ljava/lang/reflect/Method;ILl/l;Z)V

    goto :goto_9

    .line 156
    :cond_2d
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v0, 0x0

    .line 157
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2f
    const/4 v0, 0x0

    .line 158
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@QueryMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 159
    :cond_30
    instance-of v4, v8, Ll/o0/i;

    if-eqz v4, :cond_34

    .line 160
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 161
    check-cast v8, Ll/o0/i;

    .line 162
    invoke-interface {v8}, Ll/o0/i;->value()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 164
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 165
    instance-of v9, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_31

    .line 166
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 167
    invoke-static {v9, v8}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 168
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 169
    invoke-virtual {v9, v8, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 170
    new-instance v9, Ll/c0$d;

    invoke-direct {v9, v4, v8}, Ll/c0$d;-><init>(Ljava/lang/String;Ll/l;)V

    .line 171
    new-instance v4, Ll/a0;

    invoke-direct {v4, v9}, Ll/a0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 172
    :cond_31
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 173
    :cond_32
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 174
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Ll/f0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 175
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 176
    invoke-virtual {v9, v8, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 177
    new-instance v9, Ll/c0$d;

    invoke-direct {v9, v4, v8}, Ll/c0$d;-><init>(Ljava/lang/String;Ll/l;)V

    .line 178
    new-instance v4, Ll/b0;

    invoke-direct {v4, v9}, Ll/b0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 179
    :cond_33
    iget-object v8, v2, Ll/f0$a;->a:Ll/h0;

    .line 180
    invoke-virtual {v8, v14, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v8

    .line 181
    new-instance v9, Ll/c0$d;

    invoke-direct {v9, v4, v8}, Ll/c0$d;-><init>(Ljava/lang/String;Ll/l;)V

    goto/16 :goto_9

    .line 182
    :cond_34
    instance-of v4, v8, Ll/o0/c;

    if-eqz v4, :cond_39

    .line 183
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 184
    iget-boolean v4, v2, Ll/f0$a;->p:Z

    if-eqz v4, :cond_38

    .line 185
    check-cast v8, Ll/o0/c;

    .line 186
    invoke-interface {v8}, Ll/o0/c;->value()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-interface {v8}, Ll/o0/c;->encoded()Z

    move-result v8

    const/4 v9, 0x1

    .line 188
    iput-boolean v9, v2, Ll/f0$a;->f:Z

    .line 189
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 190
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 191
    instance-of v10, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_35

    .line 192
    move-object v9, v14

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 193
    invoke-static {v10, v9}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 194
    iget-object v10, v2, Ll/f0$a;->a:Ll/h0;

    .line 195
    invoke-virtual {v10, v9, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 196
    new-instance v10, Ll/c0$b;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$b;-><init>(Ljava/lang/String;Ll/l;Z)V

    .line 197
    new-instance v4, Ll/a0;

    invoke-direct {v4, v10}, Ll/a0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 198
    :cond_35
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 199
    :cond_36
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_37

    .line 200
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Ll/f0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 201
    iget-object v10, v2, Ll/f0$a;->a:Ll/h0;

    .line 202
    invoke-virtual {v10, v9, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 203
    new-instance v10, Ll/c0$b;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$b;-><init>(Ljava/lang/String;Ll/l;Z)V

    .line 204
    new-instance v4, Ll/b0;

    invoke-direct {v4, v10}, Ll/b0;-><init>(Ll/c0;)V

    goto/16 :goto_c

    .line 205
    :cond_37
    iget-object v9, v2, Ll/f0$a;->a:Ll/h0;

    .line 206
    invoke-virtual {v9, v14, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v9

    .line 207
    new-instance v10, Ll/c0$b;

    invoke-direct {v10, v4, v9, v8}, Ll/c0$b;-><init>(Ljava/lang/String;Ll/l;Z)V

    :goto_a
    move/from16 v20, v3

    move-object v3, v10

    goto/16 :goto_e

    .line 208
    :cond_38
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Field parameters can only be used with form encoding."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 209
    :cond_39
    instance-of v4, v8, Ll/o0/d;

    if-eqz v4, :cond_3e

    .line 210
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 211
    iget-boolean v4, v2, Ll/f0$a;->p:Z

    if-eqz v4, :cond_3d

    .line 212
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 213
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 214
    const-class v10, Ljava/util/Map;

    invoke-static {v14, v4, v10}, Ll/l0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 215
    instance-of v10, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_3b

    .line 216
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 217
    invoke-static {v10, v4}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v10

    if-ne v9, v10, :cond_3a

    const/4 v9, 0x1

    .line 218
    invoke-static {v9, v4}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 219
    iget-object v10, v2, Ll/f0$a;->a:Ll/h0;

    .line 220
    invoke-virtual {v10, v4, v15}, Ll/h0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v4

    .line 221
    iput-boolean v9, v2, Ll/f0$a;->f:Z

    .line 222
    new-instance v9, Ll/c0$c;

    iget-object v10, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    check-cast v8, Ll/o0/d;

    .line 223
    invoke-interface {v8}, Ll/o0/d;->encoded()Z

    move-result v8

    invoke-direct {v9, v10, v5, v4, v8}, Ll/c0$c;-><init>(Ljava/lang/reflect/Method;ILl/l;Z)V

    goto/16 :goto_9

    .line 224
    :cond_3a
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3b
    const/4 v0, 0x0

    .line 225
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v0, 0x0

    .line 226
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3d
    const/4 v0, 0x0

    .line 227
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameters can only be used with form encoding."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 228
    :cond_3e
    instance-of v4, v8, Ll/o0/o;

    if-eqz v4, :cond_4d

    .line 229
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 230
    iget-boolean v4, v2, Ll/f0$a;->q:Z

    if-eqz v4, :cond_4c

    .line 231
    check-cast v8, Ll/o0/o;

    const/4 v4, 0x1

    .line 232
    iput-boolean v4, v2, Ll/f0$a;->g:Z

    .line 233
    invoke-interface {v8}, Ll/o0/o;->value()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 235
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_45

    .line 236
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v4, :cond_41

    .line 237
    instance-of v4, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_40

    .line 238
    move-object v4, v14

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 239
    invoke-static {v9, v4}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 240
    invoke-static {v4}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 241
    sget-object v4, Ll/c0$k;->a:Ll/c0$k;

    .line 242
    new-instance v8, Ll/a0;

    invoke-direct {v8, v4}, Ll/a0;-><init>(Ll/c0;)V

    :goto_b
    move/from16 v20, v3

    move-object v3, v8

    goto/16 :goto_e

    .line 243
    :cond_3f
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 244
    :cond_40
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 245
    :cond_41
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 246
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 247
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 248
    sget-object v4, Ll/c0$k;->a:Ll/c0$k;

    .line 249
    new-instance v8, Ll/b0;

    invoke-direct {v8, v4}, Ll/b0;-><init>(Ll/c0;)V

    goto :goto_b

    .line 250
    :cond_42
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v4, 0x0

    .line 251
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 252
    sget-object v4, Ll/c0$k;->a:Ll/c0$k;

    :goto_c
    move/from16 v20, v3

    :goto_d
    move-object v3, v4

    goto/16 :goto_e

    .line 253
    :cond_44
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_45
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const-string v22, "Content-Disposition"

    const/16 v20, 0x0

    aput-object v22, v13, v20

    move/from16 v20, v3

    const-string v3, "form-data; name=\""

    const-string v1, "\""

    .line 254
    invoke-static {v3, v4, v1}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v13, v3

    const-string v1, "Content-Transfer-Encoding"

    const/4 v3, 0x2

    aput-object v1, v13, v3

    const/4 v1, 0x3

    .line 255
    invoke-interface {v8}, Ll/o0/o;->encoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v1

    .line 256
    sget-object v1, Li/w;->b:Li/w$b;

    invoke-virtual {v1, v13}, Li/w$b;->c([Ljava/lang/String;)Li/w;

    move-result-object v1

    .line 257
    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v3, :cond_48

    .line 258
    instance-of v3, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_47

    .line 259
    move-object v3, v14

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x0

    .line 260
    invoke-static {v8, v3}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 261
    invoke-static {v3}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 262
    iget-object v4, v2, Ll/f0$a;->a:Ll/h0;

    iget-object v8, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    .line 263
    invoke-virtual {v4, v3, v15, v8}, Ll/h0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v3

    .line 264
    new-instance v4, Ll/c0$e;

    iget-object v8, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Ll/c0$e;-><init>(Ljava/lang/reflect/Method;ILi/w;Ll/l;)V

    .line 265
    new-instance v3, Ll/a0;

    invoke-direct {v3, v4}, Ll/a0;-><init>(Ll/c0;)V

    goto/16 :goto_e

    .line 266
    :cond_46
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 267
    :cond_47
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v1, v12, v11}, Lf/b/a/a/a;->I(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 268
    :cond_48
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 269
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ll/f0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 270
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 271
    iget-object v4, v2, Ll/f0$a;->a:Ll/h0;

    iget-object v8, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    .line 272
    invoke-virtual {v4, v3, v15, v8}, Ll/h0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v3

    .line 273
    new-instance v4, Ll/c0$e;

    iget-object v8, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Ll/c0$e;-><init>(Ljava/lang/reflect/Method;ILi/w;Ll/l;)V

    .line 274
    new-instance v3, Ll/b0;

    invoke-direct {v3, v4}, Ll/b0;-><init>(Ll/c0;)V

    goto/16 :goto_e

    .line 275
    :cond_49
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 276
    :cond_4a
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 277
    iget-object v3, v2, Ll/f0$a;->a:Ll/h0;

    iget-object v4, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    .line 278
    invoke-virtual {v3, v14, v15, v4}, Ll/h0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v3

    .line 279
    new-instance v4, Ll/c0$e;

    iget-object v8, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Ll/c0$e;-><init>(Ljava/lang/reflect/Method;ILi/w;Ll/l;)V

    goto/16 :goto_d

    .line 280
    :cond_4b
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4c
    const/4 v0, 0x0

    .line 281
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@Part parameters can only be used with multipart encoding."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4d
    move/from16 v20, v3

    .line 282
    instance-of v1, v8, Ll/o0/p;

    if-eqz v1, :cond_53

    .line 283
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 284
    iget-boolean v1, v2, Ll/f0$a;->q:Z

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    .line 285
    iput-boolean v1, v2, Ll/f0$a;->g:Z

    .line 286
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 287
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 288
    const-class v3, Ljava/util/Map;

    invoke-static {v14, v1, v3}, Ll/l0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 289
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_50

    .line 290
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    .line 291
    invoke-static {v3, v1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v9, v3, :cond_4f

    const/4 v3, 0x1

    .line 292
    invoke-static {v3, v1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 293
    invoke-static {v1}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 294
    iget-object v3, v2, Ll/f0$a;->a:Ll/h0;

    iget-object v4, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    .line 295
    invoke-virtual {v3, v1, v15, v4}, Ll/h0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v1

    .line 296
    check-cast v8, Ll/o0/p;

    .line 297
    new-instance v3, Ll/c0$f;

    iget-object v4, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {v8}, Ll/o0/p;->encoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v1, v8}, Ll/c0$f;-><init>(Ljava/lang/reflect/Method;ILl/l;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 298
    :cond_4e
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4f
    const/4 v0, 0x0

    .line 299
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@PartMap keys must be of type String: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_50
    const/4 v0, 0x0

    .line 300
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_51
    const/4 v0, 0x0

    .line 301
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@PartMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_52
    const/4 v0, 0x0

    .line 302
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 303
    :cond_53
    instance-of v1, v8, Ll/o0/a;

    if-eqz v1, :cond_56

    .line 304
    invoke-virtual {v2, v5, v14}, Ll/f0$a;->c(ILjava/lang/reflect/Type;)V

    .line 305
    iget-boolean v1, v2, Ll/f0$a;->p:Z

    if-nez v1, :cond_55

    iget-boolean v1, v2, Ll/f0$a;->q:Z

    if-nez v1, :cond_55

    .line 306
    iget-boolean v1, v2, Ll/f0$a;->h:Z

    if-nez v1, :cond_54

    .line 307
    :try_start_1
    iget-object v1, v2, Ll/f0$a;->a:Ll/h0;

    iget-object v3, v2, Ll/f0$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v14, v15, v3}, Ll/h0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    .line 308
    iput-boolean v3, v2, Ll/f0$a;->h:Z

    .line 309
    new-instance v3, Ll/c0$a;

    iget-object v4, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v3, v4, v5, v1}, Ll/c0$a;-><init>(Ljava/lang/reflect/Method;ILl/l;)V

    goto :goto_e

    :catch_1
    move-exception v0

    .line 310
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const-string v3, "Unable to create @Body converter for %s"

    invoke-static {v1, v0, v5, v3, v2}, Ll/l0;->m(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v0, 0x0

    .line 311
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Multiple @Body method annotations found."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_55
    const/4 v0, 0x0

    .line 312
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {v1, v5, v2, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_56
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_57

    goto :goto_f

    :cond_57
    if-nez v17, :cond_58

    move-object/from16 v17, v3

    :goto_f
    add-int/lit8 v12, v21, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v13, v20

    goto/16 :goto_7

    .line 313
    :cond_58
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_59
    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_10

    :cond_5a
    move/from16 v18, v3

    move/from16 v19, v4

    const/16 v17, 0x0

    :goto_10
    if-nez v17, :cond_5c

    if-eqz v16, :cond_5b

    .line 314
    :try_start_2
    invoke-static {v14}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lh/m/a;

    if-ne v1, v3, :cond_5b

    const/4 v1, 0x1

    .line 315
    iput-boolean v1, v2, Ll/f0$a;->w:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v17, 0x0

    goto :goto_11

    .line 316
    :catch_2
    :cond_5b
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    invoke-static {v0, v5, v2, v1}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 317
    :cond_5c
    :goto_11
    aput-object v17, v6, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_5

    .line 318
    :cond_5d
    iget-object v1, v2, Ll/f0$a;->r:Ljava/lang/String;

    if-nez v1, :cond_5f

    iget-boolean v1, v2, Ll/f0$a;->m:Z

    if-eqz v1, :cond_5e

    goto :goto_12

    .line 319
    :cond_5e
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Ll/f0$a;->n:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 320
    :cond_5f
    :goto_12
    iget-boolean v1, v2, Ll/f0$a;->p:Z

    if-nez v1, :cond_61

    iget-boolean v1, v2, Ll/f0$a;->q:Z

    if-nez v1, :cond_61

    iget-boolean v1, v2, Ll/f0$a;->o:Z

    if-nez v1, :cond_61

    iget-boolean v1, v2, Ll/f0$a;->h:Z

    if-nez v1, :cond_60

    goto :goto_13

    .line 321
    :cond_60
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 322
    :cond_61
    :goto_13
    iget-boolean v1, v2, Ll/f0$a;->p:Z

    if-eqz v1, :cond_63

    iget-boolean v1, v2, Ll/f0$a;->f:Z

    if-eqz v1, :cond_62

    goto :goto_14

    .line 323
    :cond_62
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_63
    :goto_14
    const/4 v1, 0x0

    .line 324
    iget-boolean v3, v2, Ll/f0$a;->q:Z

    if-eqz v3, :cond_65

    iget-boolean v3, v2, Ll/f0$a;->g:Z

    if-eqz v3, :cond_64

    goto :goto_15

    .line 325
    :cond_64
    iget-object v0, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-static {v0, v2, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 326
    :cond_65
    :goto_15
    new-instance v3, Ll/f0;

    invoke-direct {v3, v2}, Ll/f0;-><init>(Ll/f0$a;)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 328
    invoke-static {v1}, Ll/l0;->h(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 329
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_70

    .line 330
    const-class v1, Ll/g0;

    iget-boolean v2, v3, Ll/f0;->k:Z

    .line 331
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v2, :cond_69

    .line 332
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 333
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 334
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 335
    instance-of v8, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_66

    .line 336
    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v6

    .line 337
    :cond_66
    invoke-static {v5}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v1, :cond_67

    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_67

    .line 338
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v6, v5}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v8, 0x1

    goto :goto_16

    :cond_67
    const/4 v8, 0x0

    .line 339
    :goto_16
    new-instance v9, Ll/l0$b;

    const-class v10, Ll/d;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/reflect/Type;

    aput-object v5, v12, v6

    const/4 v5, 0x0

    invoke-direct {v9, v5, v10, v12}, Ll/l0$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 340
    const-class v5, Ll/j0;

    invoke-static {v4, v5}, Ll/l0;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_17

    .line 341
    :cond_68
    array-length v5, v4

    add-int/2addr v5, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 342
    sget-object v10, Ll/k0;->a:Ll/j0;

    aput-object v10, v5, v6

    .line 343
    array-length v10, v4

    invoke-static {v4, v6, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    goto :goto_17

    .line 344
    :cond_69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v8, 0x0

    .line 345
    :goto_17
    :try_start_3
    invoke-virtual {v0, v9, v4}, Ll/h0;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/e;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 346
    invoke-interface {v5}, Ll/e;->a()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 347
    const-class v6, Li/h0;

    if-eq v4, v6, :cond_6f

    if-eq v4, v1, :cond_6e

    .line 348
    iget-object v1, v3, Ll/f0;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    goto :goto_18

    :cond_6a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void as response type."

    move-object/from16 v6, p1

    .line 349
    invoke-static {v6, v1, v0}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6b
    :goto_18
    move-object/from16 v6, p1

    .line 350
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 351
    :try_start_4
    invoke-virtual {v0, v4, v1}, Ll/h0;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 352
    iget-object v0, v0, Ll/h0;->b:Li/f$a;

    if-nez v2, :cond_6c

    .line 353
    new-instance v1, Ll/o$a;

    invoke-direct {v1, v3, v0, v4, v5}, Ll/o$a;-><init>(Ll/f0;Li/f$a;Ll/l;Ll/e;)V

    goto :goto_19

    :cond_6c
    if-eqz v8, :cond_6d

    .line 354
    new-instance v1, Ll/o$c;

    invoke-direct {v1, v3, v0, v4, v5}, Ll/o$c;-><init>(Ll/f0;Li/f$a;Ll/l;Ll/e;)V

    goto :goto_19

    .line 355
    :cond_6d
    new-instance v7, Ll/o$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Ll/o$b;-><init>(Ll/f0;Li/f$a;Ll/l;Ll/e;Z)V

    :goto_19
    return-object v1

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const-string v2, "Unable to create converter for %s"

    .line 356
    invoke-static {v6, v1, v2, v0}, Ll/l0;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6e
    move-object/from16 v6, p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Response must include generic type (e.g., Response<String>)"

    .line 357
    invoke-static {v6, v1, v0}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6f
    move-object/from16 v6, p1

    const-string v0, "\'"

    .line 358
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    invoke-static {v4}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 360
    invoke-static {v6, v0, v1}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v0

    const-string v0, "Unable to create call adapter for %s"

    .line 361
    invoke-static {v6, v1, v0, v2}, Ll/l0;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_70
    move-object/from16 v6, p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    .line 362
    invoke-static {v6, v1, v0}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_71
    move-object/from16 v6, p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 363
    invoke-static {v6, v0, v2}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_72
    const/4 v0, 0x0

    .line 364
    iget-object v1, v2, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {v1, v2, v0}, Ll/l0;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
