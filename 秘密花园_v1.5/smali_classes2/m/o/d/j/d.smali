.class public final Lm/o/d/j/d;
.super Lm/o/d/j/i;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm/o/d/j/d<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/o/d/j/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lm/o/d/j/e;->consumerIndex:J

    .line 2
    iget-wide v2, p0, Lm/o/d/j/h;->producerIndex:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lm/o/d/j/a;->b:[Ljava/lang/Object;

    .line 2
    iget-wide v1, p0, Lm/o/d/j/a;->a:J

    .line 3
    iget-wide v3, p0, Lm/o/d/j/h;->producerIndex:J

    .line 4
    invoke-virtual {p0, v3, v4}, Lm/o/d/j/a;->b(J)J

    move-result-wide v5

    .line 5
    invoke-virtual {p0, v0, v5, v6}, Lm/o/d/j/a;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6
    iget-wide v7, p0, Lm/o/d/j/e;->consumerIndex:J

    sub-long v7, v3, v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v5, v6}, Lm/o/d/j/a;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v5, v6, p1}, Lm/o/d/j/a;->f([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    .line 9
    invoke-virtual {p0, v3, v4}, Lm/o/d/j/h;->g(J)V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lm/o/d/j/i;->h:J

    .line 2
    :cond_0
    iget-wide v2, p0, Lm/o/d/j/e;->consumerIndex:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 3
    iget-wide v4, p0, Lm/o/d/j/h;->producerIndex:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    iput-wide v4, p0, Lm/o/d/j/i;->h:J

    .line 5
    :cond_2
    invoke-virtual {p0, v2, v3}, Lm/o/d/j/a;->b(J)J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lm/o/d/j/a;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v3}, Lm/o/d/j/a;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lm/o/d/j/i;->h:J

    .line 2
    :cond_0
    iget-wide v2, p0, Lm/o/d/j/e;->consumerIndex:J

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-ltz v5, :cond_2

    .line 3
    iget-wide v5, p0, Lm/o/d/j/h;->producerIndex:J

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    return-object v4

    .line 4
    :cond_1
    iput-wide v5, p0, Lm/o/d/j/i;->h:J

    :cond_2
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    .line 5
    invoke-virtual {p0, v2, v3, v5, v6}, Lm/o/d/j/e;->h(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p0, v2, v3}, Lm/o/d/j/a;->b(J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lm/o/d/j/a;->b:[Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v2, v0, v1}, Lm/o/d/j/a;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p0, v2, v0, v1, v4}, Lm/o/d/j/a;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v3
.end method

.method public size()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lm/o/d/j/e;->consumerIndex:J

    .line 2
    :goto_0
    iget-wide v2, p0, Lm/o/d/j/h;->producerIndex:J

    .line 3
    iget-wide v4, p0, Lm/o/d/j/e;->consumerIndex:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sub-long/2addr v2, v4

    long-to-int v0, v2

    return v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method
