.class public final Lf/i/a/a/l1/q;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lf/i/a/a/l1/e;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[B

.field public final d:[Lf/i/a/a/l1/d;

.field public e:I

.field public f:I

.field public g:I

.field public h:[Lf/i/a/a/l1/d;


# direct methods
.method public constructor <init>(ZI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    invoke-static {v1}, Lc/a/a/b/g/h;->m(Z)V

    .line 4
    iput-boolean p1, p0, Lf/i/a/a/l1/q;->a:Z

    .line 5
    iput p2, p0, Lf/i/a/a/l1/q;->b:I

    .line 6
    iput v0, p0, Lf/i/a/a/l1/q;->g:I

    const/16 p1, 0x64

    new-array p1, p1, [Lf/i/a/a/l1/d;

    .line 7
    iput-object p1, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lf/i/a/a/l1/q;->c:[B

    new-array p1, v1, [Lf/i/a/a/l1/d;

    .line 9
    iput-object p1, p0, Lf/i/a/a/l1/q;->d:[Lf/i/a/a/l1/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([Lf/i/a/a/l1/d;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lf/i/a/a/l1/q;->g:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    iget-object v1, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lf/i/a/a/l1/q;->g:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/l1/d;

    iput-object v0, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    iget v4, p0, Lf/i/a/a/l1/q;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lf/i/a/a/l1/q;->g:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lf/i/a/a/l1/q;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lf/i/a/a/l1/q;->f:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lf/i/a/a/l1/q;->e:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lf/i/a/a/l1/q;->e:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/l1/q;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lf/i/a/a/l1/q;->e:I

    iget v1, p0, Lf/i/a/a/l1/q;->b:I

    invoke-static {v0, v1}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v0

    .line 2
    iget v1, p0, Lf/i/a/a/l1/q;->f:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v2, p0, Lf/i/a/a/l1/q;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lf/i/a/a/l1/q;->c:[B

    if-eqz v2, :cond_4

    .line 6
    iget v2, p0, Lf/i/a/a/l1/q;->g:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 7
    iget-object v3, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    aget-object v3, v3, v1

    .line 8
    iget-object v4, v3, Lf/i/a/a/l1/d;->a:[B

    iget-object v5, p0, Lf/i/a/a/l1/q;->c:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v4, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    aget-object v4, v4, v2

    .line 10
    iget-object v5, v4, Lf/i/a/a/l1/d;->a:[B

    iget-object v6, p0, Lf/i/a/a/l1/q;->c:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v5, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    .line 12
    iget-object v1, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    add-int/lit8 v4, v2, -0x1

    aput-object v3, v1, v2

    move v2, v4

    move v1, v6

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14
    iget v1, p0, Lf/i/a/a/l1/q;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_4
    :try_start_2
    iget-object v1, p0, Lf/i/a/a/l1/q;->h:[Lf/i/a/a/l1/d;

    iget v2, p0, Lf/i/a/a/l1/q;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 17
    iput v0, p0, Lf/i/a/a/l1/q;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
