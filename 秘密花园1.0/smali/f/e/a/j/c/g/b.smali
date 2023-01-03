.class public Lf/e/a/j/c/g/b;
.super Ljava/lang/Object;
.source "BaInterceptor.java"

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

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

    if-eqz v2, :cond_2

    .line 10
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 11
    :goto_0
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 12
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    const-string v2, "QgsH"

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlJTVFpA"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v6

    .line 16
    invoke-static {v1}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 17
    new-instance v0, Li/e0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    .line 18
    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "$this$toMutableMap"

    .line 20
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_3
    throw v1
.end method
