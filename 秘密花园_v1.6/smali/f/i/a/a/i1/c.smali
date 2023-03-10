.class public abstract Lf/i/a/a/i1/c;
.super Lf/i/a/a/y0/g;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lf/i/a/a/i1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/y0/g<",
        "Lf/i/a/a/i1/i;",
        "Lf/i/a/a/i1/j;",
        "Lf/i/a/a/i1/g;",
        ">;",
        "Lf/i/a/a/i1/f;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x2

    new-array v0, p1, [Lf/i/a/a/i1/i;

    new-array p1, p1, [Lf/i/a/a/i1/j;

    .line 1
    invoke-direct {p0, v0, p1}, Lf/i/a/a/y0/g;-><init>([Lf/i/a/a/y0/e;[Lf/i/a/a/y0/f;)V

    .line 2
    iget p1, p0, Lf/i/a/a/y0/g;->g:I

    iget-object v0, p0, Lf/i/a/a/y0/g;->e:[Lf/i/a/a/y0/e;

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/y0/g;->e:[Lf/i/a/a/y0/e;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/16 v3, 0x400

    .line 4
    invoke-virtual {v2, v3}, Lf/i/a/a/y0/e;->k(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    return-void
.end method

.method public f(Lf/i/a/a/y0/e;Lf/i/a/a/y0/f;Z)Ljava/lang/Exception;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lf/i/a/a/i1/i;

    check-cast p2, Lf/i/a/a/i1/j;

    .line 2
    :try_start_0
    iget-object v0, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lf/i/a/a/i1/c;->k([BIZ)Lf/i/a/a/i1/e;

    move-result-object p3

    .line 4
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    iget-wide v2, p1, Lf/i/a/a/i1/i;->f:J

    .line 5
    iput-wide v0, p2, Lf/i/a/a/y0/f;->b:J

    .line 6
    iput-object p3, p2, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 7
    :goto_0
    iput-wide v0, p2, Lf/i/a/a/i1/j;->d:J

    .line 8
    iget p1, p2, Lf/i/a/a/y0/a;->a:I

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p2, Lf/i/a/a/y0/a;->a:I
    :try_end_0
    .catch Lf/i/a/a/i1/g; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-object p1
.end method

.method public abstract k([BIZ)Lf/i/a/a/i1/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation
.end method
