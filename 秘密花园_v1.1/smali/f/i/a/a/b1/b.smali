.class public final Lf/i/a/a/b1/b;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lf/i/a/a/b1/n;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field public final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/b;->b:[I

    .line 3
    iput-object p2, p0, Lf/i/a/a/b1/b;->c:[J

    .line 4
    iput-object p3, p0, Lf/i/a/a/b1/b;->d:[J

    .line 5
    iput-object p4, p0, Lf/i/a/a/b1/b;->e:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Lf/i/a/a/b1/b;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 7
    aget-wide p2, p3, p1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf/i/a/a/b1/b;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lf/i/a/a/b1/b;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(J)Lf/i/a/a/b1/n$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/b;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result v0

    .line 2
    new-instance v2, Lf/i/a/a/b1/o;

    iget-object v3, p0, Lf/i/a/a/b1/b;->e:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lf/i/a/a/b1/b;->c:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lf/i/a/a/b1/o;-><init>(JJ)V

    .line 3
    iget-wide v3, v2, Lf/i/a/a/b1/o;->a:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget p1, p0, Lf/i/a/a/b1/b;->a:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lf/i/a/a/b1/o;

    iget-object p2, p0, Lf/i/a/a/b1/b;->e:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Lf/i/a/a/b1/b;->c:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lf/i/a/a/b1/o;-><init>(JJ)V

    .line 5
    new-instance p2, Lf/i/a/a/b1/n$a;

    invoke-direct {p2, v2, p1}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;Lf/i/a/a/b1/o;)V

    return-object p2

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lf/i/a/a/b1/n$a;

    invoke-direct {p1, v2}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/b;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChunkIndex(length="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/i/a/a/b1/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/a/a/b1/b;->b:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/a/a/b1/b;->c:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/a/a/b1/b;->e:[J

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/a/a/b1/b;->d:[J

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
