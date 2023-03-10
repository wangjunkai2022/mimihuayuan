.class public final Li/m0/d/c;
.super Ljava/lang/Object;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/d/c$a;,
        Li/m0/d/c$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Li/m0/d/m;

.field public final c:Li/f;

.field public final d:Li/t;

.field public final e:Li/m0/d/d;

.field public final f:Li/m0/e/d;


# direct methods
.method public constructor <init>(Li/m0/d/m;Li/f;Li/t;Li/m0/d/d;Li/m0/e/d;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/d/c;->b:Li/m0/d/m;

    iput-object p2, p0, Li/m0/d/c;->c:Li/f;

    iput-object p3, p0, Li/m0/d/c;->d:Li/t;

    iput-object p4, p0, Li/m0/d/c;->e:Li/m0/d/d;

    iput-object p5, p0, Li/m0/d/c;->f:Li/m0/e/d;

    return-void

    :cond_0
    const-string p1, "finder"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "eventListener"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    :cond_0
    const-string p1, "call"

    const/4 p2, 0x0

    if-eqz p4, :cond_4

    if-eqz p5, :cond_1

    .line 2
    iget-object v0, p0, Li/m0/d/c;->d:Li/t;

    iget-object v1, p0, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v0, v1, p5}, Li/t;->c(Li/f;Ljava/io/IOException;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Li/m0/d/c;->d:Li/t;

    iget-object v1, p0, Li/m0/d/c;->c:Li/f;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_3
    throw p2

    :cond_4
    :goto_0
    if-eqz p3, :cond_8

    if-eqz p5, :cond_5

    .line 6
    iget-object p1, p0, Li/m0/d/c;->d:Li/t;

    iget-object p2, p0, Li/m0/d/c;->c:Li/f;

    invoke-virtual {p1, p2, p5}, Li/t;->d(Li/f;Ljava/io/IOException;)V

    goto :goto_1

    .line 7
    :cond_5
    iget-object v0, p0, Li/m0/d/c;->d:Li/t;

    iget-object v1, p0, Li/m0/d/c;->c:Li/f;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_7
    throw p2

    .line 10
    :cond_8
    :goto_1
    iget-object p1, p0, Li/m0/d/c;->b:Li/m0/d/m;

    invoke-virtual {p1, p0, p4, p3, p5}, Li/m0/d/m;->e(Li/m0/d/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b()Li/m0/d/h;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v0}, Li/m0/e/d;->h()Li/m0/d/h;

    move-result-object v0

    return-object v0
.end method

.method public final c(Li/e0;Z)Lj/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Li/m0/d/c;->a:Z

    .line 2
    iget-object p2, p1, Li/e0;->e:Li/g0;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Li/g0;->a()J

    move-result-wide v1

    .line 4
    iget-object p2, p0, Li/m0/d/c;->d:Li/t;

    iget-object v3, p0, Li/m0/d/c;->c:Li/f;

    if-eqz p2, :cond_1

    if-eqz v3, :cond_0

    .line 5
    iget-object p2, p0, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {p2, p1, v1, v2}, Li/m0/e/d;->f(Li/e0;J)Lj/y;

    move-result-object p1

    .line 6
    new-instance p2, Li/m0/d/c$a;

    invoke-direct {p2, p0, p1, v1, v2}, Li/m0/d/c$a;-><init>(Li/m0/d/c;Lj/y;J)V

    return-object p2

    :cond_0
    const-string p1, "call"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    throw v0

    .line 9
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0
.end method

.method public final d(Z)Li/h0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v0, p1}, Li/m0/e/d;->g(Z)Li/h0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iput-object p0, p1, Li/h0$a;->m:Li/m0/d/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Li/m0/d/c;->d:Li/t;

    iget-object v1, p0, Li/m0/d/c;->c:Li/f;

    invoke-virtual {v0, v1, p1}, Li/t;->d(Li/f;Ljava/io/IOException;)V

    .line 4
    invoke-virtual {p0, p1}, Li/m0/d/c;->e(Ljava/io/IOException;)V

    .line 5
    throw p1
.end method

.method public final e(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/d/c;->e:Li/m0/d/d;

    invoke-virtual {v0}, Li/m0/d/d;->e()V

    .line 2
    iget-object v0, p0, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v0}, Li/m0/e/d;->h()Li/m0/d/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    iget-object v1, v0, Li/m0/d/h;->p:Li/m0/d/i;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sget-boolean v3, Lh/j;->a:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Assertion failed"

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Li/m0/d/h;->p:Li/m0/d/i;

    monitor-enter v1

    .line 5
    :try_start_0
    instance-of v3, p1, Li/m0/g/s;

    if-eqz v3, :cond_3

    .line 6
    check-cast p1, Li/m0/g/s;

    iget-object p1, p1, Li/m0/g/s;->a:Li/m0/g/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_5

    .line 7
    iput-boolean v2, v0, Li/m0/d/h;->i:Z

    .line 8
    iget p1, v0, Li/m0/d/h;->j:I

    add-int/2addr p1, v2

    iput p1, v0, Li/m0/d/h;->j:I

    goto :goto_1

    .line 9
    :cond_2
    iget p1, v0, Li/m0/d/h;->l:I

    add-int/2addr p1, v2

    iput p1, v0, Li/m0/d/h;->l:I

    if-le p1, v2, :cond_5

    .line 10
    iput-boolean v2, v0, Li/m0/d/h;->i:Z

    .line 11
    iget p1, v0, Li/m0/d/h;->j:I

    add-int/2addr p1, v2

    iput p1, v0, Li/m0/d/h;->j:I

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Li/m0/d/h;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, p1, Li/m0/g/a;

    if-eqz v3, :cond_5

    .line 13
    :cond_4
    iput-boolean v2, v0, Li/m0/d/h;->i:Z

    .line 14
    iget v3, v0, Li/m0/d/h;->k:I

    if-nez v3, :cond_5

    .line 15
    iget-object v3, v0, Li/m0/d/h;->p:Li/m0/d/i;

    iget-object v4, v0, Li/m0/d/h;->q:Li/k0;

    invoke-virtual {v3, v4, p1}, Li/m0/d/i;->a(Li/k0;Ljava/io/IOException;)V

    .line 16
    iget p1, v0, Li/m0/d/h;->j:I

    add-int/2addr p1, v2

    iput p1, v0, Li/m0/d/h;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 18
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1
.end method
