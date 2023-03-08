.class public Lf/e/a/j/t/e/c;
.super Ljava/lang/Object;
.source "IQYInterceptor.java"

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
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v5, v0, Li/e0;->c:Ljava/lang/String;

    .line 4
    iget-object v7, v0, Li/e0;->e:Li/g0;

    .line 5
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v2, :cond_8

    .line 9
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 10
    :goto_0
    iget-object v3, v0, Li/e0;->d:Li/w;

    .line 11
    invoke-virtual {v3}, Li/w;->d()Li/w$a;

    move-result-object v3

    .line 12
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 13
    invoke-virtual {v0}, Li/x;->g()Li/x$a;

    move-result-object v0

    const-string v4, "aBQGFhgaVl0="

    .line 14
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "BkxX"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Li/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;

    const-string v4, "aAYGEgIQXA=="

    .line 15
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "VgwHFgQaXQ=="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Li/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;

    const-string v4, "VgEAARgAFEccDVEJ"

    .line 16
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lf/e/a/k/b;->w:Ljava/lang/String;

    .line 17
    invoke-static {v6}, Lf/e/a/j/t/e/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "value"

    if-eqz v6, :cond_7

    .line 18
    invoke-virtual {v3, v4, v6}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v4, "VgEAARgAFFAcAlE="

    .line 19
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "BwMHUw0SDgpBVgdQQV9TXQYABVcPEVgCQgNQVB1eVg4="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {v3, v4, v6}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v4, "UwcVDQgWFFoX"

    .line 21
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lf/e/a/k/b;->x:Ljava/lang/String;

    .line 22
    invoke-static {v6}, Lf/e/a/j/t/e/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 23
    invoke-virtual {v3, v4, v6}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    .line 24
    invoke-virtual {v0}, Li/x$a;->b()Li/x;

    move-result-object v4

    .line 25
    invoke-virtual {v3}, Li/w$a;->d()Li/w;

    move-result-object v6

    .line 26
    invoke-static {v2}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 27
    new-instance v0, Li/e0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    move-object/from16 v1, p1

    .line 28
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 29
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 30
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v2

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "UwMXBQ=="

    .line 32
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_1
    :try_start_1
    sget-object v0, Lf/e/a/j/t/e/b;->a:Ljava/lang/String;

    sget-object v3, Lf/e/a/j/t/e/b;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lf/e/a/j/t/e/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 36
    :goto_2
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 37
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v0, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 38
    iget-object v4, v1, Li/h0;->b:Li/e0;

    .line 39
    iget-object v5, v1, Li/h0;->c:Li/c0;

    .line 40
    iget v7, v1, Li/h0;->e:I

    .line 41
    iget-object v6, v1, Li/h0;->d:Ljava/lang/String;

    .line 42
    iget-object v8, v1, Li/h0;->f:Li/v;

    .line 43
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 44
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 45
    iget-object v11, v1, Li/h0;->i:Li/h0;

    .line 46
    iget-object v12, v1, Li/h0;->j:Li/h0;

    .line 47
    iget-object v13, v1, Li/h0;->k:Li/h0;

    .line 48
    iget-wide v14, v1, Li/h0;->l:J

    .line 49
    iget-wide v2, v1, Li/h0;->m:J

    .line 50
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

    .line 51
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 52
    new-instance v0, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v0

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "code < 0: "

    .line 56
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_6
    invoke-static {v8}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_7
    invoke-static {v8}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "$this$toMutableMap"

    .line 59
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_9
    throw v1
.end method
