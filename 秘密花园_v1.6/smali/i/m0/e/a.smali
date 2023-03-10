.class public final Li/m0/e/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.kt"

# interfaces
.implements Li/y;


# instance fields
.field public final a:Li/p;


# direct methods
.method public constructor <init>(Li/p;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/e/a;->a:Li/p;

    return-void

    :cond_0
    const-string p1, "cookieJar"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    new-instance v3, Li/e0$a;

    invoke-direct {v3, v1}, Li/e0$a;-><init>(Li/e0;)V

    .line 3
    iget-object v4, v1, Li/e0;->e:Li/g0;

    const-string v5, "Content-Type"

    const-wide/16 v6, -0x1

    const-string v8, "Content-Length"

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Li/g0;->b()Li/z;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 5
    iget-object v9, v9, Li/z;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v5, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 7
    :cond_0
    invoke-virtual {v4}, Li/g0;->a()J

    move-result-wide v9

    const-string v4, "Transfer-Encoding"

    cmp-long v11, v9, v6

    if-eqz v11, :cond_1

    .line 8
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 9
    invoke-virtual {v3, v4}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    goto :goto_0

    :cond_1
    const-string v9, "chunked"

    .line 10
    invoke-virtual {v3, v4, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 11
    invoke-virtual {v3, v8}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    :cond_2
    :goto_0
    const-string v4, "Host"

    .line 12
    invoke-virtual {v1, v4}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    .line 13
    iget-object v9, v1, Li/e0;->b:Li/x;

    .line 14
    invoke-static {v9, v10}, Li/m0/b;->C(Li/x;Z)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-virtual {v3, v4, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    :cond_3
    const-string v4, "Connection"

    .line 16
    invoke-virtual {v1, v4}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "Keep-Alive"

    .line 17
    invoke-virtual {v3, v4, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    :cond_4
    const-string v4, "Accept-Encoding"

    .line 18
    invoke-virtual {v1, v4}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "gzip"

    const/4 v12, 0x1

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v1, v9}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 19
    invoke-virtual {v3, v4, v11}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 20
    :goto_1
    iget-object v9, v0, Li/m0/e/a;->a:Li/p;

    .line 21
    iget-object v13, v1, Li/e0;->b:Li/x;

    .line 22
    invoke-interface {v9, v13}, Li/p;->a(Li/x;)Ljava/util/List;

    move-result-object v9

    .line 23
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v12

    if-eqz v13, :cond_9

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    if-ltz v10, :cond_7

    check-cast v14, Li/n;

    if-lez v10, :cond_6

    const-string v10, "; "

    .line 26
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_6
    iget-object v10, v14, Li/n;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    iget-object v10, v14, Li/n;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v15

    goto :goto_2

    .line 31
    :cond_7
    invoke-static {}, Lc/a/a/b/g/h;->s1()V

    throw v2

    .line 32
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Cookie"

    .line 33
    invoke-virtual {v3, v10, v9}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    :cond_9
    const-string v9, "User-Agent"

    .line 34
    invoke-virtual {v1, v9}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    const-string v10, "okhttp/4.2.2"

    .line 35
    invoke-virtual {v3, v9, v10}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 36
    :cond_a
    invoke-virtual {v3}, Li/e0$a;->b()Li/e0;

    move-result-object v3

    move-object/from16 v9, p1

    invoke-interface {v9, v3}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v3

    .line 37
    iget-object v9, v0, Li/m0/e/a;->a:Li/p;

    .line 38
    iget-object v10, v1, Li/e0;->b:Li/x;

    .line 39
    iget-object v13, v3, Li/h0;->g:Li/w;

    .line 40
    invoke-static {v9, v10, v13}, Li/m0/e/e;->b(Li/p;Li/x;Li/w;)V

    .line 41
    new-instance v9, Li/h0$a;

    invoke-direct {v9, v3}, Li/h0$a;-><init>(Li/h0;)V

    .line 42
    iput-object v1, v9, Li/h0$a;->a:Li/e0;

    if-eqz v4, :cond_b

    const-string v1, "Content-Encoding"

    const/4 v4, 0x2

    .line 43
    invoke-static {v3, v1, v2, v4}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v12}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 44
    invoke-static {v3}, Li/m0/e/e;->a(Li/h0;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 45
    iget-object v10, v3, Li/h0;->h:Li/i0;

    if-eqz v10, :cond_b

    .line 46
    new-instance v11, Lj/o;

    invoke-virtual {v10}, Li/i0;->G()Lj/j;

    move-result-object v10

    invoke-direct {v11, v10}, Lj/o;-><init>(Lj/a0;)V

    .line 47
    iget-object v10, v3, Li/h0;->g:Li/w;

    .line 48
    invoke-virtual {v10}, Li/w;->d()Li/w$a;

    move-result-object v10

    .line 49
    invoke-virtual {v10, v1}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    .line 50
    invoke-virtual {v10, v8}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    .line 51
    invoke-virtual {v10}, Li/w$a;->d()Li/w;

    move-result-object v1

    .line 52
    invoke-virtual {v9, v1}, Li/h0$a;->f(Li/w;)Li/h0$a;

    .line 53
    invoke-static {v3, v5, v2, v4}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Li/m0/e/h;

    invoke-static {v11}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v3

    invoke-direct {v2, v1, v6, v7, v3}, Li/m0/e/h;-><init>(Ljava/lang/String;JLj/j;)V

    .line 55
    iput-object v2, v9, Li/h0$a;->g:Li/i0;

    .line 56
    :cond_b
    invoke-virtual {v9}, Li/h0$a;->b()Li/h0;

    move-result-object v1

    return-object v1

    .line 57
    :cond_c
    throw v2
.end method
