.class public final Lf/i/a/a/h1/g0$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/l1/c0$e;
.implements Lf/i/a/a/h1/a0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lf/i/a/a/l1/g0;

.field public final c:Lf/i/a/a/h1/g0$b;

.field public final d:Lf/i/a/a/b1/h;

.field public final e:Lf/i/a/a/m1/k;

.field public final f:Lf/i/a/a/b1/m;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Lf/i/a/a/l1/p;

.field public k:J

.field public l:Lf/i/a/a/b1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z

.field public final synthetic n:Lf/i/a/a/h1/g0;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/g0;Landroid/net/Uri;Lf/i/a/a/l1/m;Lf/i/a/a/h1/g0$b;Lf/i/a/a/b1/h;Lf/i/a/a/m1/k;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/g0$a;->a:Landroid/net/Uri;

    .line 3
    new-instance p1, Lf/i/a/a/l1/g0;

    invoke-direct {p1, p3}, Lf/i/a/a/l1/g0;-><init>(Lf/i/a/a/l1/m;)V

    iput-object p1, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    .line 4
    iput-object p4, p0, Lf/i/a/a/h1/g0$a;->c:Lf/i/a/a/h1/g0$b;

    .line 5
    iput-object p5, p0, Lf/i/a/a/h1/g0$a;->d:Lf/i/a/a/b1/h;

    .line 6
    iput-object p6, p0, Lf/i/a/a/h1/g0$a;->e:Lf/i/a/a/m1/k;

    .line 7
    new-instance p1, Lf/i/a/a/b1/m;

    invoke-direct {p1}, Lf/i/a/a/b1/m;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lf/i/a/a/h1/g0$a;->h:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lf/i/a/a/h1/g0$a;->k:J

    .line 10
    new-instance p1, Lf/i/a/a/l1/p;

    iget-object v1, p0, Lf/i/a/a/h1/g0$a;->a:Landroid/net/Uri;

    iget-object p2, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 11
    iget-object v6, p2, Lf/i/a/a/h1/g0;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, p1

    .line 12
    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 13
    iput-object p1, p0, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 1
    iget-boolean v2, p0, Lf/i/a/a/h1/g0$a;->g:Z

    if-nez v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    iget-wide v13, v4, Lf/i/a/a/b1/m;->a:J

    .line 3
    new-instance v4, Lf/i/a/a/l1/p;

    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->a:Landroid/net/Uri;

    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 4
    iget-object v11, v5, Lf/i/a/a/h1/g0;->g:Ljava/lang/String;

    const/16 v12, 0x16

    const-wide/16 v9, -0x1

    move-object v5, v4

    move-wide v7, v13

    .line 5
    invoke-direct/range {v5 .. v12}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 6
    iput-object v4, p0, Lf/i/a/a/h1/g0$a;->j:Lf/i/a/a/l1/p;

    .line 7
    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    invoke-virtual {v5, v4}, Lf/i/a/a/l1/g0;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v4

    iput-wide v4, p0, Lf/i/a/a/h1/g0$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    add-long/2addr v4, v13

    .line 8
    iput-wide v4, p0, Lf/i/a/a/h1/g0$a;->k:J

    .line 9
    :cond_1
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    invoke-virtual {v4}, Lf/i/a/a/l1/g0;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    invoke-virtual {v6}, Lf/i/a/a/l1/g0;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lf/i/a/a/d1/h/b;->a(Ljava/util/Map;)Lf/i/a/a/d1/h/b;

    move-result-object v6

    .line 11
    iput-object v6, v5, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    .line 12
    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    .line 13
    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 14
    iget-object v6, v6, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    if-eqz v6, :cond_2

    .line 15
    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 16
    iget-object v6, v6, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    .line 17
    iget v6, v6, Lf/i/a/a/d1/h/b;->f:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 18
    new-instance v5, Lf/i/a/a/h1/a0;

    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    iget-object v7, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 19
    iget-object v7, v7, Lf/i/a/a/h1/g0;->q:Lf/i/a/a/d1/h/b;

    .line 20
    iget v7, v7, Lf/i/a/a/d1/h/b;->f:I

    invoke-direct {v5, v6, v7, p0}, Lf/i/a/a/h1/a0;-><init>(Lf/i/a/a/l1/m;ILf/i/a/a/h1/a0$a;)V

    .line 21
    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 22
    new-instance v7, Lf/i/a/a/h1/g0$f;

    invoke-direct {v7, v0, v3}, Lf/i/a/a/h1/g0$f;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lf/i/a/a/h1/g0;->E(Lf/i/a/a/h1/g0$f;)Lf/i/a/a/b1/p;

    move-result-object v6

    .line 23
    iput-object v6, p0, Lf/i/a/a/h1/g0$a;->l:Lf/i/a/a/b1/p;

    .line 24
    sget-object v7, Lf/i/a/a/h1/g0;->K:Lf/i/a/a/b0;

    .line 25
    invoke-interface {v6, v7}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    :cond_2
    move-object v6, v5

    .line 26
    new-instance v11, Lf/i/a/a/b1/d;

    iget-wide v9, p0, Lf/i/a/a/h1/g0$a;->k:J

    move-object v5, v11

    move-wide v7, v13

    invoke-direct/range {v5 .. v10}, Lf/i/a/a/b1/d;-><init>(Lf/i/a/a/l1/m;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    :try_start_1
    iget-object v2, p0, Lf/i/a/a/h1/g0$a;->c:Lf/i/a/a/h1/g0$b;

    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->d:Lf/i/a/a/b1/h;

    invoke-virtual {v2, v11, v5, v4}, Lf/i/a/a/h1/g0$b;->a(Lf/i/a/a/b1/d;Lf/i/a/a/b1/h;Landroid/net/Uri;)Lf/i/a/a/b1/g;

    move-result-object v2

    .line 28
    iget-boolean v4, p0, Lf/i/a/a/h1/g0$a;->h:Z

    if-eqz v4, :cond_3

    .line 29
    iget-wide v4, p0, Lf/i/a/a/h1/g0$a;->i:J

    invoke-interface {v2, v13, v14, v4, v5}, Lf/i/a/a/b1/g;->f(JJ)V

    .line 30
    iput-boolean v0, p0, Lf/i/a/a/h1/g0$a;->h:Z

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 31
    iget-boolean v4, p0, Lf/i/a/a/h1/g0$a;->g:Z

    if-nez v4, :cond_5

    .line 32
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->e:Lf/i/a/a/m1/k;

    .line 33
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :goto_2
    :try_start_2
    iget-boolean v5, v4, Lf/i/a/a/m1/k;->a:Z

    if-nez v5, :cond_4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 36
    :cond_4
    :try_start_3
    monitor-exit v4

    .line 37
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    invoke-interface {v2, v11, v4}, Lf/i/a/a/b1/g;->c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I

    move-result v1

    .line 38
    iget-wide v4, v11, Lf/i/a/a/b1/d;->d:J

    .line 39
    iget-object v6, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 40
    iget-wide v6, v6, Lf/i/a/a/h1/g0;->h:J

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 41
    iget-wide v13, v11, Lf/i/a/a/b1/d;->d:J

    .line 42
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->e:Lf/i/a/a/m1/k;

    .line 43
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    :try_start_4
    iput-boolean v0, v4, Lf/i/a/a/m1/k;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    :try_start_5
    monitor-exit v4

    .line 46
    iget-object v4, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 47
    iget-object v4, v4, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    .line 48
    iget-object v5, p0, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 49
    iget-object v5, v5, Lf/i/a/a/h1/g0;->m:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    .line 52
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-ne v1, v3, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    .line 53
    :cond_6
    iget-object v2, p0, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    .line 54
    iget-wide v3, v11, Lf/i/a/a/b1/d;->d:J

    .line 55
    iput-wide v3, v2, Lf/i/a/a/b1/m;->a:J

    .line 56
    :goto_3
    iget-object v2, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    if-eqz v2, :cond_0

    .line 57
    :try_start_6
    iget-object v2, v2, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v2}, Lf/i/a/a/l1/m;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v11

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_4
    if-eq v1, v3, :cond_7

    if-eqz v2, :cond_7

    .line 58
    iget-object v1, p0, Lf/i/a/a/h1/g0$a;->f:Lf/i/a/a/b1/m;

    .line 59
    iget-wide v2, v2, Lf/i/a/a/b1/d;->d:J

    .line 60
    iput-wide v2, v1, Lf/i/a/a/b1/m;->a:J

    .line 61
    :cond_7
    iget-object v1, p0, Lf/i/a/a/h1/g0$a;->b:Lf/i/a/a/l1/g0;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 62
    throw v0

    :cond_8
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/g0$a;->g:Z

    return-void
.end method
