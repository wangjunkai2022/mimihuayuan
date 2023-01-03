.class public Lf/e/a/j/j0/a/c;
.super Ljava/lang/Object;
.source "Sex8Interceptor.java"

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

    if-eqz v0, :cond_8

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
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Li/e0;->f:Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 10
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 11
    :goto_0
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 12
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    const-string v2, "djIzLSYyfnY="

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlJT"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    const-string v2, "YScxNyI8d30yK3E="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BkxTSls="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v2, v3}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v6

    .line 18
    invoke-static {v1}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 19
    new-instance v0, Li/e0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    move-object/from16 v1, p1

    .line 20
    invoke-interface {v1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 21
    iget-object v0, v1, Li/h0;->h:Li/i0;

    .line 22
    invoke-virtual {v0}, Li/i0;->H()Ljava/lang/String;

    move-result-object v0

    .line 23
    :try_start_0
    invoke-static {v0}, Lf/e/a/j/j0/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 25
    :goto_1
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 26
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v0, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 27
    iget-object v4, v1, Li/h0;->b:Li/e0;

    .line 28
    iget-object v5, v1, Li/h0;->c:Li/c0;

    .line 29
    iget v7, v1, Li/h0;->e:I

    .line 30
    iget-object v6, v1, Li/h0;->d:Ljava/lang/String;

    .line 31
    iget-object v8, v1, Li/h0;->f:Li/v;

    .line 32
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 33
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    .line 34
    iget-object v11, v1, Li/h0;->i:Li/h0;

    .line 35
    iget-object v12, v1, Li/h0;->j:Li/h0;

    .line 36
    iget-object v13, v1, Li/h0;->k:Li/h0;

    .line 37
    iget-wide v14, v1, Li/h0;->l:J

    .line 38
    iget-wide v2, v1, Li/h0;->m:J

    .line 39
    iget-object v1, v1, Li/h0;->n:Li/m0/d/c;

    if-ltz v7, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 40
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 41
    new-instance v0, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v0

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "code < 0: "

    .line 45
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "$this$toMutableMap"

    .line 47
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_8
    throw v1
.end method
