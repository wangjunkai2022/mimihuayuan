.class public final Lf/i/a/a/h1/s0/k;
.super Lf/i/a/a/h1/s0/d;
.source "InitializationChunk.java"


# static fields
.field public static final l:Lf/i/a/a/b1/m;


# instance fields
.field public final i:Lf/i/a/a/h1/s0/e;

.field public j:J

.field public volatile k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/b1/m;

    invoke-direct {v0}, Lf/i/a/a/b1/m;-><init>()V

    sput-object v0, Lf/i/a/a/h1/s0/k;->l:Lf/i/a/a/b1/m;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;Lf/i/a/a/h1/s0/e;)V
    .locals 11
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lf/i/a/a/h1/s0/d;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;ILf/i/a/a/b0;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lf/i/a/a/h1/s0/k;->i:Lf/i/a/a/h1/s0/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v1, p0, Lf/i/a/a/h1/s0/k;->j:J

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/l1/p;->c(J)Lf/i/a/a/l1/p;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v7, Lf/i/a/a/b1/d;

    iget-object v2, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    iget-wide v3, v0, Lf/i/a/a/l1/p;->d:J

    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 3
    invoke-virtual {v1, v0}, Lf/i/a/a/l1/g0;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/b1/d;-><init>(Lf/i/a/a/l1/m;JJ)V

    .line 4
    iget-wide v0, p0, Lf/i/a/a/h1/s0/k;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    iget-object v8, p0, Lf/i/a/a/h1/s0/k;->i:Lf/i/a/a/h1/s0/e;

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v8 .. v13}, Lf/i/a/a/h1/s0/e;->b(Lf/i/a/a/h1/s0/e$b;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/k;->i:Lf/i/a/a/h1/s0/e;

    iget-object v0, v0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 7
    iget-boolean v3, p0, Lf/i/a/a/h1/s0/k;->k:Z

    if-nez v3, :cond_1

    .line 8
    sget-object v2, Lf/i/a/a/h1/s0/k;->l:Lf/i/a/a/b1/m;

    invoke-interface {v0, v7, v2}, Lf/i/a/a/b1/g;->c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v1, 0x1

    .line 9
    :cond_2
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-wide v0, v7, Lf/i/a/a/b1/d;->d:J

    .line 11
    iget-object v2, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v2, v2, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/h1/s0/k;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_3
    iget-wide v1, v7, Lf/i/a/a/b1/d;->d:J

    .line 14
    iget-object v3, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v3, v3, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/i/a/a/h1/s0/k;->j:J

    .line 15
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 16
    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 17
    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/s0/k;->k:Z

    return-void
.end method
