.class public final Lf/i/a/a/h1/u0/g$e;
.super Lf/i/a/a/j1/c;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/o0;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/i/a/a/j1/c;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 2
    iget-object p1, p1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 3
    invoke-virtual {p0, p1}, Lf/i/a/a/j1/c;->g(Lf/i/a/a/b0;)I

    move-result p1

    iput p1, p0, Lf/i/a/a/h1/u0/g$e;->g:I

    return-void
.end method


# virtual methods
.method public h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;[",
            "Lf/i/a/a/h1/s0/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 2
    iget p3, p0, Lf/i/a/a/h1/u0/g$e;->g:I

    invoke-virtual {p0, p3, p1, p2}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget p3, p0, Lf/i/a/a/j1/c;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 4
    invoke-virtual {p0, p3, p1, p2}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 5
    iput p3, p0, Lf/i/a/a/h1/u0/g$e;->g:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/g$e;->g:I

    return v0
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
