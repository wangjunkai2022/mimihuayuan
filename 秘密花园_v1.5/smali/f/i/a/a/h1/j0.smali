.class public Lf/i/a/a/h1/j0;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lf/i/a/a/b1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/j0$a;,
        Lf/i/a/a/h1/j0$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/e;

.field public final b:I

.field public final c:Lf/i/a/a/h1/i0;

.field public final d:Lf/i/a/a/h1/i0$a;

.field public final e:Lf/i/a/a/m1/u;

.field public f:Lf/i/a/a/h1/j0$a;

.field public g:Lf/i/a/a/h1/j0$a;

.field public h:Lf/i/a/a/h1/j0$a;

.field public i:Lf/i/a/a/b0;

.field public j:Z

.field public k:Lf/i/a/a/b0;

.field public l:J

.field public m:J

.field public n:Z

.field public o:Lf/i/a/a/h1/j0$b;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/j0;->a:Lf/i/a/a/l1/e;

    .line 3
    check-cast p1, Lf/i/a/a/l1/q;

    .line 4
    iget p1, p1, Lf/i/a/a/l1/q;->b:I

    .line 5
    iput p1, p0, Lf/i/a/a/h1/j0;->b:I

    .line 6
    new-instance p1, Lf/i/a/a/h1/i0;

    invoke-direct {p1}, Lf/i/a/a/h1/i0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 7
    new-instance p1, Lf/i/a/a/h1/i0$a;

    invoke-direct {p1}, Lf/i/a/a/h1/i0$a;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->d:Lf/i/a/a/h1/i0$a;

    .line 8
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    .line 9
    new-instance p1, Lf/i/a/a/h1/j0$a;

    const-wide/16 v0, 0x0

    iget v2, p0, Lf/i/a/a/h1/j0;->b:I

    invoke-direct {p1, v0, v1, v2}, Lf/i/a/a/h1/j0$a;-><init>(JI)V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    .line 10
    iput-object p1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    .line 11
    iput-object p1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/m1/u;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lf/i/a/a/h1/j0;->r(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-object v2, v1, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    iget-object v2, v2, Lf/i/a/a/l1/d;->a:[B

    iget-wide v3, p0, Lf/i/a/a/h1/j0;->m:J

    .line 3
    invoke-virtual {v1, v3, v4}, Lf/i/a/a/h1/j0$a;->a(J)I

    move-result v1

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Lf/i/a/a/m1/u;->c([BII)V

    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/j0;->q(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lf/i/a/a/b1/d;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lf/i/a/a/h1/j0;->r(I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-object v1, v0, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    iget-object v1, v1, Lf/i/a/a/l1/d;->a:[B

    iget-wide v2, p0, Lf/i/a/a/h1/j0;->m:J

    .line 3
    invoke-virtual {v0, v2, v3}, Lf/i/a/a/h1/j0$a;->a(J)I

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0, p2}, Lf/i/a/a/b1/d;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/j0;->q(I)V

    return p1
.end method

.method public c(JIIILf/i/a/a/b1/p$a;)V
    .locals 8
    .param p6    # Lf/i/a/a/b1/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/j0;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/j0;->k:Lf/i/a/a/b0;

    invoke-virtual {p0, v0}, Lf/i/a/a/h1/j0;->d(Lf/i/a/a/b0;)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/j0;->l:J

    add-long/2addr p1, v0

    .line 4
    iget-boolean v0, p0, Lf/i/a/a/h1/j0;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v3, v0, Lf/i/a/a/h1/i0;->i:I

    if-nez v3, :cond_2

    .line 8
    iget-wide v3, v0, Lf/i/a/a/h1/i0;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    goto :goto_2

    .line 9
    :cond_2
    :try_start_1
    iget-wide v3, v0, Lf/i/a/a/h1/i0;->m:J

    iget v5, v0, Lf/i/a/a/h1/i0;->l:I

    .line 10
    invoke-virtual {v0, v5}, Lf/i/a/a/h1/i0;->d(I)J

    move-result-wide v5

    .line 11
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v3, p1

    if-ltz v5, :cond_3

    .line 12
    monitor-exit v0

    const/4 v3, 0x0

    goto :goto_2

    .line 13
    :cond_3
    :try_start_2
    iget v3, v0, Lf/i/a/a/h1/i0;->i:I

    .line 14
    iget v4, v0, Lf/i/a/a/h1/i0;->i:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lf/i/a/a/h1/i0;->e(I)I

    move-result v4

    .line 15
    :cond_4
    :goto_1
    iget v5, v0, Lf/i/a/a/h1/i0;->l:I

    if-le v3, v5, :cond_5

    iget-object v5, v0, Lf/i/a/a/h1/i0;->f:[J

    aget-wide v6, v5, v4

    cmp-long v5, v6, p1

    if-ltz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 16
    iget v4, v0, Lf/i/a/a/h1/i0;->a:I

    sub-int/2addr v4, v2

    goto :goto_1

    .line 17
    :cond_5
    iget v4, v0, Lf/i/a/a/h1/i0;->j:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lf/i/a/a/h1/i0;->b(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit v0

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    iput-boolean v1, p0, Lf/i/a/a/h1/j0;->n:Z

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    :cond_7
    :goto_3
    return-void

    .line 21
    :cond_8
    :goto_4
    iget-wide v3, p0, Lf/i/a/a/h1/j0;->m:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    .line 22
    iget-object p5, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 23
    monitor-enter p5

    .line 24
    :try_start_3
    iget-boolean v0, p5, Lf/i/a/a/h1/i0;->p:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_a

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_9

    .line 25
    monitor-exit p5

    goto/16 :goto_7

    .line 26
    :cond_9
    :try_start_4
    iput-boolean v1, p5, Lf/i/a/a/h1/i0;->p:Z

    .line 27
    :cond_a
    iget-boolean v0, p5, Lf/i/a/a/h1/i0;->q:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    .line 28
    :goto_6
    iput-boolean v0, p5, Lf/i/a/a/h1/i0;->o:Z

    .line 29
    iget-wide v5, p5, Lf/i/a/a/h1/i0;->n:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p5, Lf/i/a/a/h1/i0;->n:J

    .line 30
    iget v0, p5, Lf/i/a/a/h1/i0;->i:I

    invoke-virtual {p5, v0}, Lf/i/a/a/h1/i0;->e(I)I

    move-result v0

    .line 31
    iget-object v5, p5, Lf/i/a/a/h1/i0;->f:[J

    aput-wide p1, v5, v0

    .line 32
    iget-object p1, p5, Lf/i/a/a/h1/i0;->c:[J

    aput-wide v3, p1, v0

    .line 33
    iget-object p1, p5, Lf/i/a/a/h1/i0;->d:[I

    aput p4, p1, v0

    .line 34
    iget-object p1, p5, Lf/i/a/a/h1/i0;->e:[I

    aput p3, p1, v0

    .line 35
    iget-object p1, p5, Lf/i/a/a/h1/i0;->g:[Lf/i/a/a/b1/p$a;

    aput-object p6, p1, v0

    .line 36
    iget-object p1, p5, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    iget-object p2, p5, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    aput-object p2, p1, v0

    .line 37
    iget-object p1, p5, Lf/i/a/a/h1/i0;->b:[I

    iget p2, p5, Lf/i/a/a/h1/i0;->s:I

    aput p2, p1, v0

    .line 38
    iget p1, p5, Lf/i/a/a/h1/i0;->i:I

    add-int/2addr p1, v2

    iput p1, p5, Lf/i/a/a/h1/i0;->i:I

    .line 39
    iget p2, p5, Lf/i/a/a/h1/i0;->a:I

    if-ne p1, p2, :cond_d

    .line 40
    iget p1, p5, Lf/i/a/a/h1/i0;->a:I

    add-int/lit16 p1, p1, 0x3e8

    .line 41
    new-array p2, p1, [I

    .line 42
    new-array p3, p1, [J

    .line 43
    new-array p4, p1, [J

    .line 44
    new-array p6, p1, [I

    .line 45
    new-array v0, p1, [I

    .line 46
    new-array v2, p1, [Lf/i/a/a/b1/p$a;

    .line 47
    new-array v3, p1, [Lf/i/a/a/b0;

    .line 48
    iget v4, p5, Lf/i/a/a/h1/i0;->a:I

    iget v5, p5, Lf/i/a/a/h1/i0;->k:I

    sub-int/2addr v4, v5

    .line 49
    iget-object v5, p5, Lf/i/a/a/h1/i0;->c:[J

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, p3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v5, p5, Lf/i/a/a/h1/i0;->f:[J

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, p4, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v5, p5, Lf/i/a/a/h1/i0;->e:[I

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, p6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v5, p5, Lf/i/a/a/h1/i0;->d:[I

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v5, p5, Lf/i/a/a/h1/i0;->g:[Lf/i/a/a/b1/p$a;

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v5, p5, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v5, p5, Lf/i/a/a/h1/i0;->b:[I

    iget v6, p5, Lf/i/a/a/h1/i0;->k:I

    invoke-static {v5, v6, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v5, p5, Lf/i/a/a/h1/i0;->k:I

    .line 57
    iget-object v6, p5, Lf/i/a/a/h1/i0;->c:[J

    invoke-static {v6, v1, p3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v6, p5, Lf/i/a/a/h1/i0;->f:[J

    invoke-static {v6, v1, p4, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v6, p5, Lf/i/a/a/h1/i0;->e:[I

    invoke-static {v6, v1, p6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v6, p5, Lf/i/a/a/h1/i0;->d:[I

    invoke-static {v6, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v6, p5, Lf/i/a/a/h1/i0;->g:[Lf/i/a/a/b1/p$a;

    invoke-static {v6, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v6, p5, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    invoke-static {v6, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v6, p5, Lf/i/a/a/h1/i0;->b:[I

    invoke-static {v6, v1, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object p3, p5, Lf/i/a/a/h1/i0;->c:[J

    .line 65
    iput-object p4, p5, Lf/i/a/a/h1/i0;->f:[J

    .line 66
    iput-object p6, p5, Lf/i/a/a/h1/i0;->e:[I

    .line 67
    iput-object v0, p5, Lf/i/a/a/h1/i0;->d:[I

    .line 68
    iput-object v2, p5, Lf/i/a/a/h1/i0;->g:[Lf/i/a/a/b1/p$a;

    .line 69
    iput-object v3, p5, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    .line 70
    iput-object p2, p5, Lf/i/a/a/h1/i0;->b:[I

    .line 71
    iput v1, p5, Lf/i/a/a/h1/i0;->k:I

    .line 72
    iget p2, p5, Lf/i/a/a/h1/i0;->a:I

    iput p2, p5, Lf/i/a/a/h1/i0;->i:I

    .line 73
    iput p1, p5, Lf/i/a/a/h1/i0;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :cond_d
    monitor-exit p5

    :goto_7
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p5

    throw p1
.end method

.method public d(Lf/i/a/a/b0;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/j0;->l:J

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v2, p1, Lf/i/a/a/b0;->m:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    add-long/2addr v2, v0

    .line 3
    invoke-virtual {p1, v2, v3}, Lf/i/a/a/b0;->f(J)Lf/i/a/a/b0;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 4
    :goto_0
    iget-object v1, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 5
    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 6
    :try_start_0
    iput-boolean v2, v1, Lf/i/a/a/h1/i0;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 8
    :cond_2
    :try_start_1
    iput-boolean v3, v1, Lf/i/a/a/h1/i0;->q:Z

    .line 9
    iget-object v4, v1, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    invoke-static {v0, v4}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 10
    monitor-exit v1

    goto :goto_1

    .line 11
    :cond_3
    :try_start_2
    iput-object v0, v1, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit v1

    .line 13
    :goto_2
    iput-object p1, p0, Lf/i/a/a/h1/j0;->k:Lf/i/a/a/b0;

    .line 14
    iput-boolean v3, p0, Lf/i/a/a/h1/j0;->j:Z

    .line 15
    iget-object p1, p0, Lf/i/a/a/h1/j0;->o:Lf/i/a/a/h1/j0$b;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 16
    invoke-interface {p1, v0}, Lf/i/a/a/h1/j0$b;->i(Lf/i/a/a/b0;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1

    throw p1
.end method

.method public e(JZZ)I
    .locals 8

    .line 1
    iget-object v6, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    iget v0, v6, Lf/i/a/a/h1/i0;->l:I

    invoke-virtual {v6, v0}, Lf/i/a/a/h1/i0;->e(I)I

    move-result v1

    .line 4
    invoke-virtual {v6}, Lf/i/a/a/h1/i0;->f()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v6, Lf/i/a/a/h1/i0;->f:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v2, v6, Lf/i/a/a/h1/i0;->n:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p4, v6, Lf/i/a/a/h1/i0;->i:I

    iget v0, v6, Lf/i/a/a/h1/i0;->l:I

    sub-int v2, p4, v0

    move-object v0, v6

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/h1/i0;->c(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    .line 6
    monitor-exit v6

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    iget p2, v6, Lf/i/a/a/h1/i0;->l:I

    add-int/2addr p2, p1

    iput p2, v6, Lf/i/a/a/h1/i0;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v6

    move v7, p1

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    monitor-exit v6

    :goto_1
    return v7

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Lf/i/a/a/h1/i0;->i:I

    iget v2, v0, Lf/i/a/a/h1/i0;->l:I

    sub-int/2addr v1, v2

    .line 4
    iget v2, v0, Lf/i/a/a/h1/i0;->i:I

    iput v2, v0, Lf/i/a/a/h1/i0;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g(Lf/i/a/a/h1/j0$a;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lf/i/a/a/h1/j0$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-boolean v1, v0, Lf/i/a/a/h1/j0$a;->c:Z

    iget-wide v2, v0, Lf/i/a/a/h1/j0$a;->a:J

    iget-wide v4, p1, Lf/i/a/a/h1/j0$a;->a:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lf/i/a/a/h1/j0;->b:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 3
    new-array v1, v0, [Lf/i/a/a/l1/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p1, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    aput-object v3, v1, v2

    const/4 v3, 0x0

    .line 5
    iput-object v3, p1, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    .line 6
    iget-object v4, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 7
    iput-object v3, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    add-int/lit8 v2, v2, 0x1

    move-object p1, v4

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lf/i/a/a/h1/j0;->a:Lf/i/a/a/l1/e;

    check-cast p1, Lf/i/a/a/l1/q;

    invoke-virtual {p1, v1}, Lf/i/a/a/l1/q;->a([Lf/i/a/a/l1/d;)V

    return-void
.end method

.method public final h(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    iget-wide v1, v0, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/j0;->a:Lf/i/a/a/l1/e;

    iget-object v0, v0, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    check-cast v1, Lf/i/a/a/l1/q;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lf/i/a/a/l1/q;->d:[Lf/i/a/a/l1/d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    iget-object v0, v1, Lf/i/a/a/l1/q;->d:[Lf/i/a/a/l1/d;

    invoke-virtual {v1, v0}, Lf/i/a/a/l1/q;->a([Lf/i/a/a/l1/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v1

    .line 7
    iget-object v0, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    .line 9
    iget-object v2, v0, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 10
    iput-object v1, v0, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 11
    iput-object v2, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1

    throw p1

    .line 13
    :cond_1
    iget-object p1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide p1, p1, Lf/i/a/a/h1/j0$a;->a:J

    iget-wide v1, v0, Lf/i/a/a/h1/j0$a;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 14
    iput-object v0, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    :cond_2
    return-void
.end method

.method public i(JZZ)V
    .locals 9

    .line 1
    iget-object v6, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    iget v0, v6, Lf/i/a/a/h1/i0;->i:I

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_3

    iget-object v0, v6, Lf/i/a/a/h1/i0;->f:[J

    iget v1, v6, Lf/i/a/a/h1/i0;->k:I

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget p4, v6, Lf/i/a/a/h1/i0;->l:I

    iget v0, v6, Lf/i/a/a/h1/i0;->i:I

    if-eq p4, v0, :cond_1

    iget p4, v6, Lf/i/a/a/h1/i0;->l:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p4, v6, Lf/i/a/a/h1/i0;->i:I

    :goto_0
    move v2, p4

    .line 5
    iget v1, v6, Lf/i/a/a/h1/i0;->k:I

    move-object v0, v6

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/h1/i0;->c(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 6
    monitor-exit v6

    goto :goto_2

    .line 7
    :cond_2
    :try_start_1
    invoke-virtual {v6, p1}, Lf/i/a/a/h1/i0;->a(I)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    monitor-exit v6

    .line 9
    :goto_2
    invoke-virtual {p0, v7, v8}, Lf/i/a/a/h1/j0;->h(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v6

    throw p1
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Lf/i/a/a/h1/i0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget v1, v0, Lf/i/a/a/h1/i0;->i:I

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/i0;->a(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 6
    :goto_0
    invoke-virtual {p0, v1, v2}, Lf/i/a/a/h1/j0;->h(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method

.method public k(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    invoke-virtual {v0, p1}, Lf/i/a/a/h1/i0;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/h1/j0;->m:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    iget-wide v2, p1, Lf/i/a/a/h1/j0$a;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :goto_0
    iget-wide v0, p0, Lf/i/a/a/h1/j0;->m:J

    iget-wide v2, p1, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-object p1, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 6
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/j0;->g(Lf/i/a/a/h1/j0$a;)V

    .line 7
    new-instance v1, Lf/i/a/a/h1/j0$a;

    iget-wide v2, p1, Lf/i/a/a/h1/j0$a;->b:J

    iget v4, p0, Lf/i/a/a/h1/j0;->b:I

    invoke-direct {v1, v2, v3, v4}, Lf/i/a/a/h1/j0$a;-><init>(JI)V

    iput-object v1, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 8
    iget-wide v2, p0, Lf/i/a/a/h1/j0;->m:J

    iget-wide v4, p1, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    .line 9
    iget-object v1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    if-ne v1, v0, :cond_4

    .line 10
    iget-object p1, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object p1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    goto :goto_3

    .line 11
    :cond_3
    :goto_2
    iget-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/j0;->g(Lf/i/a/a/h1/j0$a;)V

    .line 12
    new-instance p1, Lf/i/a/a/h1/j0$a;

    iget-wide v0, p0, Lf/i/a/a/h1/j0;->m:J

    iget v2, p0, Lf/i/a/a/h1/j0;->b:I

    invoke-direct {p1, v0, v1, v2}, Lf/i/a/a/h1/j0$a;-><init>(JI)V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    .line 13
    iput-object p1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    .line 14
    iput-object p1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    :cond_4
    :goto_3
    return-void
.end method

.method public l()J
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, v0, Lf/i/a/a/h1/i0;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    iget v1, v0, Lf/i/a/a/h1/i0;->j:I

    iget v0, v0, Lf/i/a/a/h1/i0;->l:I

    add-int/2addr v1, v0

    return v1
.end method

.method public n()Lf/i/a/a/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lf/i/a/a/h1/i0;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    invoke-virtual {v0}, Lf/i/a/a/h1/i0;->f()Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    iget v1, v0, Lf/i/a/a/h1/i0;->l:I

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/i0;->e(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/h1/i0;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lf/i/a/a/h1/i0;->b:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Lf/i/a/a/h1/i0;->s:I

    :goto_0
    return v0
.end method

.method public final q(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/j0;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/h1/j0;->m:J

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-wide v2, p1, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object p1, p1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object p1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    :cond_0
    return-void
.end method

.method public final r(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-boolean v1, v0, Lf/i/a/a/h1/j0$a;->c:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/j0;->a:Lf/i/a/a/l1/e;

    check-cast v1, Lf/i/a/a/l1/q;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget v2, v1, Lf/i/a/a/l1/q;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lf/i/a/a/l1/q;->f:I

    .line 5
    iget v2, v1, Lf/i/a/a/l1/q;->g:I

    if-lez v2, :cond_0

    .line 6
    iget-object v2, v1, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    iget v4, v1, Lf/i/a/a/l1/q;->g:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lf/i/a/a/l1/q;->g:I

    aget-object v2, v2, v4

    .line 7
    iget-object v5, v1, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    const/4 v6, 0x0

    aput-object v6, v5, v4

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lf/i/a/a/l1/d;

    iget v4, v1, Lf/i/a/a/l1/q;->b:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lf/i/a/a/l1/d;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit v1

    .line 10
    new-instance v1, Lf/i/a/a/h1/j0$a;

    iget-object v4, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-wide v4, v4, Lf/i/a/a/h1/j0$a;->b:J

    iget v6, p0, Lf/i/a/a/h1/j0;->b:I

    invoke-direct {v1, v4, v5, v6}, Lf/i/a/a/h1/j0$a;-><init>(JI)V

    .line 11
    iput-object v2, v0, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    .line 12
    iput-object v1, v0, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    .line 13
    iput-boolean v3, v0, Lf/i/a/a/h1/j0$a;->c:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1

    throw p1

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    iget-wide v0, v0, Lf/i/a/a/h1/j0$a;->b:J

    iget-wide v2, p0, Lf/i/a/a/h1/j0;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    iget-object v4, v1, Lf/i/a/a/h1/j0;->i:Lf/i/a/a/b0;

    iget-object v5, v1, Lf/i/a/a/h1/j0;->d:Lf/i/a/a/h1/i0$a;

    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    invoke-virtual {v3}, Lf/i/a/a/h1/i0;->f()Z

    move-result v6

    const/4 v7, -0x5

    const/4 v8, -0x4

    const/4 v9, -0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_4

    if-nez p4, :cond_3

    .line 4
    iget-boolean v5, v3, Lf/i/a/a/h1/i0;->o:Z

    if-eqz v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v5, v3, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    if-eqz v5, :cond_2

    if-nez p3, :cond_1

    iget-object v5, v3, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    if-eq v5, v4, :cond_2

    .line 6
    :cond_1
    iget-object v4, v3, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    iput-object v4, v0, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v3

    goto :goto_4

    .line 8
    :cond_2
    monitor-exit v3

    const/4 v3, -0x3

    goto :goto_5

    :cond_3
    :goto_0
    const/4 v4, 0x4

    .line 9
    :try_start_1
    iput v4, v2, Lf/i/a/a/y0/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v3

    goto :goto_2

    .line 11
    :cond_4
    :try_start_2
    iget v6, v3, Lf/i/a/a/h1/i0;->l:I

    invoke-virtual {v3, v6}, Lf/i/a/a/h1/i0;->e(I)I

    move-result v6

    if-nez p3, :cond_8

    .line 12
    iget-object v12, v3, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    aget-object v12, v12, v6

    if-eq v12, v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v4, v3, Lf/i/a/a/h1/i0;->e:[I

    aget v4, v4, v6

    .line 14
    iput v4, v2, Lf/i/a/a/y0/a;->a:I

    .line 15
    iget-object v4, v3, Lf/i/a/a/h1/i0;->f:[J

    aget-wide v12, v4, v6

    iput-wide v12, v2, Lf/i/a/a/y0/e;->d:J

    .line 16
    iget-object v4, v2, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_6

    iget v4, v2, Lf/i/a/a/y0/e;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 17
    monitor-exit v3

    goto :goto_2

    .line 18
    :cond_7
    :try_start_3
    iget-object v4, v3, Lf/i/a/a/h1/i0;->d:[I

    aget v4, v4, v6

    iput v4, v5, Lf/i/a/a/h1/i0$a;->a:I

    .line 19
    iget-object v4, v3, Lf/i/a/a/h1/i0;->c:[J

    aget-wide v12, v4, v6

    iput-wide v12, v5, Lf/i/a/a/h1/i0$a;->b:J

    .line 20
    iget-object v4, v3, Lf/i/a/a/h1/i0;->g:[Lf/i/a/a/b1/p$a;

    aget-object v4, v4, v6

    iput-object v4, v5, Lf/i/a/a/h1/i0$a;->c:Lf/i/a/a/b1/p$a;

    .line 21
    iget v4, v3, Lf/i/a/a/h1/i0;->l:I

    add-int/2addr v4, v11

    iput v4, v3, Lf/i/a/a/h1/i0;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit v3

    :goto_2
    const/4 v3, -0x4

    goto :goto_5

    .line 23
    :cond_8
    :goto_3
    :try_start_4
    iget-object v4, v3, Lf/i/a/a/h1/i0;->h:[Lf/i/a/a/b0;

    aget-object v4, v4, v6

    iput-object v4, v0, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    monitor-exit v3

    :goto_4
    const/4 v3, -0x5

    :goto_5
    if-eq v3, v7, :cond_1a

    if-eq v3, v8, :cond_a

    if-ne v3, v9, :cond_9

    return v9

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lf/i/a/a/y0/a;->h()Z

    move-result v0

    if-nez v0, :cond_19

    .line 27
    iget-wide v3, v2, Lf/i/a/a/y0/e;->d:J

    cmp-long v0, v3, p5

    if-gez v0, :cond_b

    const/high16 v0, -0x80000000

    .line 28
    invoke-virtual {v2, v0}, Lf/i/a/a/y0/a;->e(I)V

    .line 29
    :cond_b
    iget-object v0, v2, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_c

    iget v0, v2, Lf/i/a/a/y0/e;->e:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_19

    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    invoke-virtual {v2, v0}, Lf/i/a/a/y0/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 31
    iget-object v0, v1, Lf/i/a/a/h1/j0;->d:Lf/i/a/a/h1/i0$a;

    .line 32
    iget-wide v3, v0, Lf/i/a/a/h1/i0$a;->b:J

    .line 33
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v11}, Lf/i/a/a/m1/u;->w(I)V

    .line 34
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v1, v3, v4, v5, v11}, Lf/i/a/a/h1/j0;->t(J[BI)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 35
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    aget-byte v5, v5, v10

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    and-int/lit8 v5, v5, 0x7f

    .line 36
    iget-object v7, v2, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    iget-object v9, v7, Lf/i/a/a/y0/b;->a:[B

    if-nez v9, :cond_e

    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 37
    iput-object v9, v7, Lf/i/a/a/y0/b;->a:[B

    .line 38
    :cond_e
    iget-object v7, v2, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    iget-object v7, v7, Lf/i/a/a/y0/b;->a:[B

    invoke-virtual {v1, v3, v4, v7, v5}, Lf/i/a/a/h1/j0;->t(J[BI)V

    int-to-long v12, v5

    add-long/2addr v3, v12

    if-eqz v6, :cond_f

    .line 39
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lf/i/a/a/m1/u;->w(I)V

    .line 40
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v1, v3, v4, v5, v7}, Lf/i/a/a/h1/j0;->t(J[BI)V

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    .line 41
    iget-object v5, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->u()I

    move-result v11

    .line 42
    :cond_f
    iget-object v5, v2, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    iget-object v5, v5, Lf/i/a/a/y0/b;->b:[I

    if-eqz v5, :cond_10

    .line 43
    array-length v7, v5

    if-ge v7, v11, :cond_11

    .line 44
    :cond_10
    new-array v5, v11, [I

    .line 45
    :cond_11
    iget-object v7, v2, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    iget-object v7, v7, Lf/i/a/a/y0/b;->c:[I

    if-eqz v7, :cond_12

    .line 46
    array-length v9, v7

    if-ge v9, v11, :cond_13

    .line 47
    :cond_12
    new-array v7, v11, [I

    :cond_13
    if-eqz v6, :cond_14

    mul-int/lit8 v6, v11, 0x6

    .line 48
    iget-object v9, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v9, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 49
    iget-object v9, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    iget-object v9, v9, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v1, v3, v4, v9, v6}, Lf/i/a/a/h1/j0;->t(J[BI)V

    int-to-long v12, v6

    add-long/2addr v3, v12

    .line 50
    iget-object v6, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v6, v10}, Lf/i/a/a/m1/u;->A(I)V

    :goto_8
    if-ge v10, v11, :cond_15

    .line 51
    iget-object v6, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v6}, Lf/i/a/a/m1/u;->u()I

    move-result v6

    aput v6, v5, v10

    .line 52
    iget-object v6, v1, Lf/i/a/a/h1/j0;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v6}, Lf/i/a/a/m1/u;->s()I

    move-result v6

    aput v6, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 53
    :cond_14
    aput v10, v5, v10

    .line 54
    iget v6, v0, Lf/i/a/a/h1/i0$a;->a:I

    iget-wide v12, v0, Lf/i/a/a/h1/i0$a;->b:J

    sub-long v12, v3, v12

    long-to-int v9, v12

    sub-int/2addr v6, v9

    aput v6, v7, v10

    .line 55
    :cond_15
    iget-object v6, v0, Lf/i/a/a/h1/i0$a;->c:Lf/i/a/a/b1/p$a;

    .line 56
    iget-object v9, v2, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    iget-object v10, v6, Lf/i/a/a/b1/p$a;->b:[B

    iget-object v12, v9, Lf/i/a/a/y0/b;->a:[B

    iget v13, v6, Lf/i/a/a/b1/p$a;->a:I

    iget v14, v6, Lf/i/a/a/b1/p$a;->c:I

    iget v6, v6, Lf/i/a/a/b1/p$a;->d:I

    .line 57
    iput-object v5, v9, Lf/i/a/a/y0/b;->b:[I

    .line 58
    iput-object v7, v9, Lf/i/a/a/y0/b;->c:[I

    .line 59
    iput-object v12, v9, Lf/i/a/a/y0/b;->a:[B

    .line 60
    iget-object v15, v9, Lf/i/a/a/y0/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput v11, v15, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 61
    iput-object v5, v15, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 62
    iput-object v7, v15, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 63
    iput-object v10, v15, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 64
    iput-object v12, v15, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 65
    iput v13, v15, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 66
    sget v5, Lf/i/a/a/m1/h0;->a:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_16

    .line 67
    iget-object v5, v9, Lf/i/a/a/y0/b;->e:Lf/i/a/a/y0/b$b;

    .line 68
    iget-object v7, v5, Lf/i/a/a/y0/b$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v7, v14, v6}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 69
    iget-object v6, v5, Lf/i/a/a/y0/b$b;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v5, v5, Lf/i/a/a/y0/b$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v6, v5}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 70
    :cond_16
    iget-wide v5, v0, Lf/i/a/a/h1/i0$a;->b:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    .line 71
    iput-wide v5, v0, Lf/i/a/a/h1/i0$a;->b:J

    .line 72
    iget v3, v0, Lf/i/a/a/h1/i0$a;->a:I

    sub-int/2addr v3, v4

    iput v3, v0, Lf/i/a/a/h1/i0$a;->a:I

    .line 73
    :cond_17
    iget-object v0, v1, Lf/i/a/a/h1/j0;->d:Lf/i/a/a/h1/i0$a;

    iget v0, v0, Lf/i/a/a/h1/i0$a;->a:I

    invoke-virtual {v2, v0}, Lf/i/a/a/y0/e;->k(I)V

    .line 74
    iget-object v0, v1, Lf/i/a/a/h1/j0;->d:Lf/i/a/a/h1/i0$a;

    iget-wide v3, v0, Lf/i/a/a/h1/i0$a;->b:J

    iget-object v2, v2, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    iget v0, v0, Lf/i/a/a/h1/i0$a;->a:I

    .line 75
    :goto_9
    iget-object v5, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v6, v5, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v9, v3, v6

    if-ltz v9, :cond_18

    .line 76
    iget-object v5, v5, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object v5, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    goto :goto_9

    :cond_18
    :goto_a
    if-lez v0, :cond_19

    .line 77
    iget-object v5, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v5, v5, Lf/i/a/a/h1/j0$a;->b:J

    sub-long/2addr v5, v3

    long-to-int v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 78
    iget-object v6, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-object v7, v6, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    .line 79
    iget-object v7, v7, Lf/i/a/a/l1/d;->a:[B

    invoke-virtual {v6, v3, v4}, Lf/i/a/a/h1/j0$a;->a(J)I

    move-result v6

    invoke-virtual {v2, v7, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 80
    iget-object v5, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v6, v5, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_18

    .line 81
    iget-object v5, v5, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object v5, v1, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    goto :goto_a

    :cond_19
    return v8

    .line 82
    :cond_1a
    iget-object v0, v0, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    iput-object v0, v1, Lf/i/a/a/h1/j0;->i:Lf/i/a/a/b0;

    return v7

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v3

    throw v0
.end method

.method public final t(J[BI)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v1, v0, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 2
    iget-object v0, v0, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object v0, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v1, v1, Lf/i/a/a/h1/j0$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-object v3, v2, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    .line 5
    iget-object v3, v3, Lf/i/a/a/l1/d;->a:[B

    invoke-virtual {v2, p1, p2}, Lf/i/a/a/h1/j0$a;->a(J)I

    move-result v2

    sub-int v4, p4, v0

    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 6
    iget-object v1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    iget-wide v2, v1, Lf/i/a/a/h1/j0$a;->b:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 7
    iget-object v1, v1, Lf/i/a/a/h1/j0$a;->e:Lf/i/a/a/h1/j0$a;

    iput-object v1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public u(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lf/i/a/a/h1/i0;->i:I

    .line 3
    iput v1, v0, Lf/i/a/a/h1/i0;->j:I

    .line 4
    iput v1, v0, Lf/i/a/a/h1/i0;->k:I

    .line 5
    iput v1, v0, Lf/i/a/a/h1/i0;->l:I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lf/i/a/a/h1/i0;->p:Z

    const-wide/high16 v3, -0x8000000000000000L

    .line 7
    iput-wide v3, v0, Lf/i/a/a/h1/i0;->m:J

    .line 8
    iput-wide v3, v0, Lf/i/a/a/h1/i0;->n:J

    .line 9
    iput-boolean v1, v0, Lf/i/a/a/h1/i0;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10
    iput-object p1, v0, Lf/i/a/a/h1/i0;->r:Lf/i/a/a/b0;

    .line 11
    iput-boolean v2, v0, Lf/i/a/a/h1/i0;->q:Z

    .line 12
    :cond_0
    iget-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/j0;->g(Lf/i/a/a/h1/j0$a;)V

    .line 13
    new-instance p1, Lf/i/a/a/h1/j0$a;

    iget v0, p0, Lf/i/a/a/h1/j0;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lf/i/a/a/h1/j0$a;-><init>(JI)V

    iput-object p1, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    .line 14
    iput-object p1, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    .line 15
    iput-object p1, p0, Lf/i/a/a/h1/j0;->h:Lf/i/a/a/h1/j0$a;

    .line 16
    iput-wide v1, p0, Lf/i/a/a/h1/j0;->m:J

    .line 17
    iget-object p1, p0, Lf/i/a/a/h1/j0;->a:Lf/i/a/a/l1/e;

    check-cast p1, Lf/i/a/a/l1/q;

    invoke-virtual {p1}, Lf/i/a/a/l1/q;->c()V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput v1, v0, Lf/i/a/a/h1/i0;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/j0;->f:Lf/i/a/a/h1/j0$a;

    iput-object v0, p0, Lf/i/a/a/h1/j0;->g:Lf/i/a/a/h1/j0$a;

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public w(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/j0;->l:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lf/i/a/a/h1/j0;->l:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lf/i/a/a/h1/j0;->j:Z

    :cond_0
    return-void
.end method
