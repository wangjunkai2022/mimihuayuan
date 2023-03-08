.class public final Li/d0$a;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public volatile a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Li/g;

.field public final synthetic c:Li/d0;


# direct methods
.method public constructor <init>(Li/d0;Li/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/g;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/d0$a;->c:Li/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/d0$a;->b:Li/g;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/d0$a;->c:Li/d0;

    .line 2
    iget-object v0, v0, Li/d0;->d:Li/e0;

    .line 3
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 4
    iget-object v0, v0, Li/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    const-string v0, "OkHttp "

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/d0$a;->c:Li/d0;

    .line 2
    iget-object v1, v1, Li/d0;->d:Li/e0;

    .line 3
    iget-object v1, v1, Li/e0;->b:Li/x;

    .line 4
    invoke-virtual {v1}, Li/x;->k()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 7
    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Li/d0$a;->c:Li/d0;

    .line 10
    iget-object v0, v0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, v0, Li/m0/d/m;->c:Li/m0/d/m$b;

    invoke-virtual {v0}, Lj/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v0, p0, Li/d0$a;->c:Li/d0;

    invoke-virtual {v0}, Li/d0;->a()Li/h0;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    .line 13
    :try_start_2
    iget-object v4, p0, Li/d0$a;->b:Li/g;

    iget-object v5, p0, Li/d0$a;->c:Li/d0;

    invoke-interface {v4, v5, v0}, Li/g;->c(Li/f;Li/h0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    iget-object v0, p0, Li/d0$a;->c:Li/d0;

    .line 15
    :goto_0
    iget-object v0, v0, Li/d0;->c:Li/b0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 16
    :try_start_4
    sget-object v3, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 17
    sget-object v3, Li/m0/i/f;->a:Li/m0/i/f;

    const/4 v4, 0x4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Li/d0$a;->c:Li/d0;

    invoke-virtual {v6}, Li/d0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Li/m0/i/f;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 19
    :cond_0
    iget-object v3, p0, Li/d0$a;->b:Li/g;

    iget-object v4, p0, Li/d0$a;->c:Li/d0;

    invoke-interface {v3, v4, v0}, Li/g;->d(Li/f;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :goto_2
    :try_start_5
    iget-object v0, p0, Li/d0$a;->c:Li/d0;

    goto :goto_0

    .line 21
    :goto_3
    iget-object v0, v0, Li/b0;->a:Li/q;

    .line 22
    invoke-virtual {v0, p0}, Li/q;->b(Li/d0$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    .line 24
    :goto_4
    :try_start_6
    iget-object v3, p0, Li/d0$a;->c:Li/d0;

    .line 25
    iget-object v3, v3, Li/d0;->c:Li/b0;

    .line 26
    iget-object v3, v3, Li/b0;->a:Li/q;

    .line 27
    invoke-virtual {v3, p0}, Li/q;->b(Li/d0$a;)V

    throw v0

    :cond_1
    const-string v0, "transmitter"

    .line 28
    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    throw v0

    :catchall_1
    move-exception v0

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
