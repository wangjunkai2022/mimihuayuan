.class public final Lf/i/a/a/h1/s0/c;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lf/i/a/a/h1/s0/e$b;


# instance fields
.field public final a:[I

.field public final b:[Lf/i/a/a/h1/j0;


# direct methods
.method public constructor <init>([I[Lf/i/a/a/h1/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/s0/c;->a:[I

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/s0/c;->b:[Lf/i/a/a/h1/j0;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/c;->b:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    iget-wide v4, v3, Lf/i/a/a/h1/j0;->l:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_0

    .line 3
    iput-wide p1, v3, Lf/i/a/a/h1/j0;->l:J

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v3, Lf/i/a/a/h1/j0;->j:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(II)Lf/i/a/a/b1/p;
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lf/i/a/a/h1/s0/c;->a:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2
    aget v0, v0, p1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lf/i/a/a/h1/s0/c;->b:[Lf/i/a/a/h1/j0;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    return-object p1
.end method
