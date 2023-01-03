.class public abstract Lf/i/a/a/h1/s0/j;
.super Lf/i/a/a/h1/s0/d;
.source "DataChunk.java"


# instance fields
.field public i:[B

.field public volatile j:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;ILf/i/a/a/b0;ILjava/lang/Object;[B)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lf/i/a/a/h1/s0/d;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;ILf/i/a/a/b0;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 2
    iput-object v1, v0, Lf/i/a/a/h1/s0/j;->i:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/g0;->b(Lf/i/a/a/l1/p;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/j;->j:Z

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/j;->i:[B

    const/16 v3, 0x4000

    if-nez v0, :cond_1

    new-array v0, v3, [B

    .line 4
    iput-object v0, p0, Lf/i/a/a/h1/s0/j;->i:[B

    goto :goto_1

    .line 5
    :cond_1
    array-length v4, v0

    add-int/lit16 v5, v1, 0x4000

    if-ge v4, v5, :cond_2

    .line 6
    array-length v4, v0

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/s0/j;->i:[B

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    iget-object v4, p0, Lf/i/a/a/h1/s0/j;->i:[B

    invoke-virtual {v0, v4, v1, v3}, Lf/i/a/a/l1/g0;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 8
    :cond_3
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/j;->j:Z

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lf/i/a/a/h1/s0/j;->i:[B

    move-object v2, p0

    check-cast v2, Lf/i/a/a/h1/u0/g$a;

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v2, Lf/i/a/a/h1/u0/g$a;->k:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_4
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 12
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/s0/j;->j:Z

    return-void
.end method
