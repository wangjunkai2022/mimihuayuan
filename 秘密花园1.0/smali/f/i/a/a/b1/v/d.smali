.class public final Lf/i/a/a/b1/v/d;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field public final a:Lf/i/a/a/b1/v/e;

.field public final b:Lf/i/a/a/m1/u;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/b1/v/e;

    invoke-direct {v0}, Lf/i/a/a/b1/v/e;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    .line 3
    new-instance v0, Lf/i/a/a/m1/u;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/i/a/a/m1/u;-><init>([BI)V

    iput-object v0, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf/i/a/a/b1/v/d;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/v/d;->d:I

    .line 2
    :cond_0
    iget v1, p0, Lf/i/a/a/b1/v/d;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    iget v4, v3, Lf/i/a/a/b1/v/e;->d:I

    if-ge v2, v4, :cond_1

    .line 3
    iget-object v2, v3, Lf/i/a/a/b1/v/e;->g:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lf/i/a/a/b1/v/d;->d:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method

.method public b(Lf/i/a/a/b1/d;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-boolean v2, p0, Lf/i/a/a/b1/v/d;->e:Z

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/b1/v/d;->e:Z

    .line 4
    iget-object v2, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->v()V

    .line 5
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lf/i/a/a/b1/v/d;->e:Z

    if-nez v2, :cond_9

    .line 6
    iget v2, p0, Lf/i/a/a/b1/v/d;->c:I

    if-gez v2, :cond_4

    .line 7
    iget-object v2, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    invoke-virtual {v2, p1, v1}, Lf/i/a/a/b1/v/e;->a(Lf/i/a/a/b1/d;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 8
    :cond_2
    iget-object v2, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    iget v3, v2, Lf/i/a/a/b1/v/e;->e:I

    .line 9
    iget v2, v2, Lf/i/a/a/b1/v/e;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    .line 10
    iget v2, v2, Lf/i/a/a/m1/u;->c:I

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lf/i/a/a/b1/v/d;->a(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 12
    iget v2, p0, Lf/i/a/a/b1/v/d;->d:I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 13
    :goto_2
    invoke-virtual {p1, v3}, Lf/i/a/a/b1/d;->h(I)V

    .line 14
    iput v2, p0, Lf/i/a/a/b1/v/d;->c:I

    .line 15
    :cond_4
    iget v2, p0, Lf/i/a/a/b1/v/d;->c:I

    invoke-virtual {p0, v2}, Lf/i/a/a/b1/v/d;->a(I)I

    move-result v2

    .line 16
    iget v3, p0, Lf/i/a/a/b1/v/d;->c:I

    iget v4, p0, Lf/i/a/a/b1/v/d;->d:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 17
    iget-object v4, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    .line 18
    iget-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    array-length v6, v5

    .line 19
    iget v7, v4, Lf/i/a/a/m1/u;->c:I

    add-int v8, v7, v2

    if-ge v6, v8, :cond_5

    add-int/2addr v7, v2

    .line 20
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    .line 21
    :cond_5
    iget-object v4, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    iget-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    .line 22
    iget v4, v4, Lf/i/a/a/m1/u;->c:I

    .line 23
    invoke-virtual {p1, v5, v4, v2, v0}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 24
    iget-object v4, p0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    .line 25
    iget v5, v4, Lf/i/a/a/m1/u;->c:I

    add-int/2addr v5, v2

    .line 26
    invoke-virtual {v4, v5}, Lf/i/a/a/m1/u;->z(I)V

    .line 27
    iget-object v2, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    iget-object v2, v2, Lf/i/a/a/b1/v/e;->g:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lf/i/a/a/b1/v/d;->e:Z

    .line 28
    :cond_7
    iget-object v2, p0, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    iget v2, v2, Lf/i/a/a/b1/v/e;->d:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    :cond_8
    iput v3, p0, Lf/i/a/a/b1/v/d;->c:I

    goto :goto_1

    :cond_9
    return v1
.end method
