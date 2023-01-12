.class public Lf/i/a/a/h1/s0/i;
.super Lf/i/a/a/h1/s0/a;
.source "ContainerMediaChunk.java"


# static fields
.field public static final t:Lf/i/a/a/b1/m;


# instance fields
.field public final n:I

.field public final o:J

.field public final p:Lf/i/a/a/h1/s0/e;

.field public q:J

.field public volatile r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/b1/m;

    invoke-direct {v0}, Lf/i/a/a/b1/m;-><init>()V

    sput-object v0, Lf/i/a/a/h1/s0/i;->t:Lf/i/a/a/b1/m;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJJJIJLf/i/a/a/h1/s0/e;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lf/i/a/a/h1/s0/a;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 2
    iput v1, v0, Lf/i/a/a/h1/s0/i;->n:I

    move-wide/from16 v1, p17

    .line 3
    iput-wide v1, v0, Lf/i/a/a/h1/s0/i;->o:J

    move-object/from16 v1, p19

    .line 4
    iput-object v1, v0, Lf/i/a/a/h1/s0/i;->p:Lf/i/a/a/h1/s0/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v1, p0, Lf/i/a/a/h1/s0/i;->q:J

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
    iget-wide v0, p0, Lf/i/a/a/h1/s0/i;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 5
    iget-object v9, p0, Lf/i/a/a/h1/s0/a;->l:Lf/i/a/a/h1/s0/c;

    .line 6
    iget-wide v0, p0, Lf/i/a/a/h1/s0/i;->o:J

    invoke-virtual {v9, v0, v1}, Lf/i/a/a/h1/s0/c;->a(J)V

    .line 7
    iget-object v8, p0, Lf/i/a/a/h1/s0/i;->p:Lf/i/a/a/h1/s0/e;

    .line 8
    iget-wide v0, p0, Lf/i/a/a/h1/s0/a;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide v10, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/s0/a;->j:J

    iget-wide v4, p0, Lf/i/a/a/h1/s0/i;->o:J

    sub-long/2addr v0, v4

    move-wide v10, v0

    :goto_0
    iget-wide v0, p0, Lf/i/a/a/h1/s0/a;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v12, v2

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/a;->k:J

    iget-wide v2, p0, Lf/i/a/a/h1/s0/i;->o:J

    sub-long/2addr v0, v2

    move-wide v12, v0

    .line 9
    :goto_1
    invoke-virtual/range {v8 .. v13}, Lf/i/a/a/h1/s0/e;->b(Lf/i/a/a/h1/s0/e$b;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/i;->p:Lf/i/a/a/h1/s0/e;

    iget-object v0, v0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 11
    iget-boolean v3, p0, Lf/i/a/a/h1/s0/i;->r:Z

    if-nez v3, :cond_3

    .line 12
    sget-object v2, Lf/i/a/a/h1/s0/i;->t:Lf/i/a/a/b1/m;

    invoke-interface {v0, v7, v2}, Lf/i/a/a/b1/g;->c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-eq v2, v0, :cond_4

    const/4 v1, 0x1

    .line 13
    :cond_4
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-wide v1, v7, Lf/i/a/a/b1/d;->d:J

    .line 15
    iget-object v3, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v3, v3, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/i/a/a/h1/s0/i;->q:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 17
    iput-boolean v0, p0, Lf/i/a/a/h1/s0/i;->s:Z

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_3
    iget-wide v1, v7, Lf/i/a/a/b1/d;->d:J

    .line 19
    iget-object v3, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget-wide v3, v3, Lf/i/a/a/l1/p;->d:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/i/a/a/h1/s0/i;->q:J

    .line 20
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 21
    iget-object v1, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 22
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/s0/i;->r:Z

    return-void
.end method

.method public c()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/l;->i:J

    iget v2, p0, Lf/i/a/a/h1/s0/i;->n:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/i;->s:Z

    return v0
.end method
