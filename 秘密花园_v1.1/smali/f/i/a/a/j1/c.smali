.class public abstract Lf/i/a/a/j1/c;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lf/i/a/a/j1/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/j1/c$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/o0;

.field public final b:I

.field public final c:[I

.field public final d:[Lf/i/a/a/b0;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Lf/i/a/a/h1/o0;[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iput-object p1, p0, Lf/i/a/a/j1/c;->a:Lf/i/a/a/h1/o0;

    .line 4
    array-length v2, p2

    iput v2, p0, Lf/i/a/a/j1/c;->b:I

    .line 5
    new-array v2, v2, [Lf/i/a/a/b0;

    iput-object v2, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget v4, p2, v2

    .line 8
    iget-object v5, p1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v4, v5, v4

    .line 9
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    new-instance v2, Lf/i/a/a/j1/c$b;

    invoke-direct {v2, v0}, Lf/i/a/a/j1/c$b;-><init>(Lf/i/a/a/j1/c$a;)V

    invoke-static {p2, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 11
    iget p2, p0, Lf/i/a/a/j1/c;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lf/i/a/a/j1/c;->c:[I

    .line 12
    :goto_2
    iget p2, p0, Lf/i/a/a/j1/c;->b:I

    if-ge v1, p2, :cond_2

    .line 13
    iget-object p2, p0, Lf/i/a/a/j1/c;->c:[I

    iget-object v0, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lf/i/a/a/h1/o0;->a(Lf/i/a/a/b0;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lf/i/a/a/j1/c;->e:[J

    return-void

    .line 15
    :cond_3
    throw v0
.end method


# virtual methods
.method public final a(IJ)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget v5, p0, Lf/i/a/a/j1/c;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    .line 4
    invoke-virtual {p0, v4, v0, v1}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget-object v7, p0, Lf/i/a/a/j1/c;->e:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .line 6
    invoke-static/range {v0 .. v5}, Lf/i/a/a/m1/h0;->a(JJJ)J

    move-result-wide p2

    .line 7
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final c(I)Lf/i/a/a/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lf/i/a/a/j1/c;

    .line 3
    iget-object v2, p0, Lf/i/a/a/j1/c;->a:Lf/i/a/a/h1/o0;

    iget-object v3, p1, Lf/i/a/a/j1/c;->a:Lf/i/a/a/h1/o0;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lf/i/a/a/j1/c;->c:[I

    iget-object p1, p1, Lf/i/a/a/j1/c;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(JLjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final g(Lf/i/a/a/b0;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lf/i/a/a/j1/c;->b:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V
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

    invoke-static/range {p0 .. p8}, Lf/i/a/a/j1/i;->c(Lf/i/a/a/j1/j;JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/j1/c;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/j1/c;->a:Lf/i/a/a/h1/o0;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/i/a/a/j1/c;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf/i/a/a/j1/c;->f:I

    .line 3
    :cond_0
    iget v0, p0, Lf/i/a/a/j1/c;->f:I

    return v0
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->c:[I

    invoke-interface {p0}, Lf/i/a/a/j1/j;->m()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final j()Lf/i/a/a/h1/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->a:Lf/i/a/a/h1/o0;

    return-object v0
.end method

.method public final k()Lf/i/a/a/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    invoke-interface {p0}, Lf/i/a/a/j1/j;->m()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->c:[I

    array-length v0, v0

    return v0
.end method

.method public n(F)V
    .locals 0

    return-void
.end method

.method public synthetic o(JJJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lf/i/a/a/j1/i;->b(Lf/i/a/a/j1/j;JJJ)V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-static {p0}, Lf/i/a/a/j1/i;->a(Lf/i/a/a/j1/j;)V

    return-void
.end method

.method public final r(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lf/i/a/a/j1/c;->b:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/j1/c;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final s(IJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/c;->e:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
