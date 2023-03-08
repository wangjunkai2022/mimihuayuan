.class public final Lf/i/a/a/b1/f;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lf/i/a/a/b1/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/m1/u;I)V
    .locals 1

    .line 1
    iget v0, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->A(I)V

    return-void
.end method

.method public b(Lf/i/a/a/b1/d;IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lf/i/a/a/b1/d;->g:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lf/i/a/a/b1/d;->i(I)V

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p1, Lf/i/a/a/b1/d;->a:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/b1/d;->f([BIIIZ)I

    move-result v0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lf/i/a/a/b1/d;->b(I)V

    const/4 p1, -0x1

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return v0
.end method

.method public c(JIIILf/i/a/a/b1/p$a;)V
    .locals 0
    .param p6    # Lf/i/a/a/b1/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public d(Lf/i/a/a/b0;)V
    .locals 0

    return-void
.end method
