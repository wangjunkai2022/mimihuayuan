.class public final Li/m0/d/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.kt"

# interfaces
.implements Li/y;


# static fields
.field public static final a:Li/m0/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/m0/d/a;

    invoke-direct {v0}, Li/m0/d/a;-><init>()V

    sput-object v0, Li/m0/d/a;->a:Li/m0/d/a;

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
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    move-object v1, v0

    check-cast v1, Li/m0/e/g;

    .line 2
    iget-object v2, v1, Li/m0/e/g;->f:Li/e0;

    .line 3
    iget-object v9, v1, Li/m0/e/g;->c:Li/m0/d/m;

    .line 4
    iget-object v3, v2, Li/e0;->c:Ljava/lang/String;

    const-string v4, "GET"

    .line 5
    invoke-static {v3, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v16, v3, 0x1

    .line 6
    iget-object v3, v9, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-boolean v5, v9, Li/m0/d/m;->m:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_5

    .line 8
    iget-object v5, v9, Li/m0/d/m;->h:Li/m0/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 9
    monitor-exit v3

    .line 10
    iget-object v3, v9, Li/m0/d/m;->f:Li/m0/d/d;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v5, v9, Li/m0/d/m;->n:Li/b0;

    if-eqz v5, :cond_2

    .line 11
    invoke-interface/range {p1 .. p1}, Li/y$a;->a()I

    move-result v11

    .line 12
    invoke-interface/range {p1 .. p1}, Li/y$a;->b()I

    move-result v12

    .line 13
    invoke-interface/range {p1 .. p1}, Li/y$a;->c()I

    move-result v13

    .line 14
    iget v14, v5, Li/b0;->B:I

    .line 15
    iget-boolean v15, v5, Li/b0;->f:Z

    move-object v10, v3

    .line 16
    :try_start_1
    invoke-virtual/range {v10 .. v16}, Li/m0/d/d;->b(IIIIZZ)Li/m0/d/h;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v5, v0}, Li/m0/d/h;->h(Li/b0;Li/y$a;)Li/m0/e/d;

    move-result-object v0
    :try_end_1
    .catch Li/m0/d/k; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    new-instance v10, Li/m0/d/c;

    iget-object v5, v9, Li/m0/d/m;->o:Li/f;

    iget-object v6, v9, Li/m0/d/m;->b:Li/t;

    iget-object v7, v9, Li/m0/d/m;->f:Li/m0/d/d;

    if-eqz v7, :cond_1

    move-object v3, v10

    move-object v4, v9

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Li/m0/d/c;-><init>(Li/m0/d/m;Li/f;Li/t;Li/m0/d/d;Li/m0/e/d;)V

    .line 19
    iget-object v3, v9, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v3

    .line 20
    :try_start_2
    iput-object v10, v9, Li/m0/d/m;->h:Li/m0/d/c;

    .line 21
    iput-boolean v11, v9, Li/m0/d/m;->i:Z

    .line 22
    iput-boolean v11, v9, Li/m0/d/m;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit v3

    .line 24
    invoke-virtual {v1, v2, v9, v10}, Li/m0/e/g;->e(Li/e0;Li/m0/d/m;Li/m0/d/c;)Li/h0;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v3

    throw v0

    .line 26
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v4

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v3}, Li/m0/d/d;->e()V

    .line 28
    new-instance v1, Li/m0/d/k;

    invoke-direct {v1, v0}, Li/m0/d/k;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v3}, Li/m0/d/d;->e()V

    .line 30
    throw v0

    :cond_2
    const-string v0, "client"

    .line 31
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v4

    :cond_4
    :try_start_3
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "released"

    .line 34
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v3

    throw v0
.end method
