.class public final Lf/i/a/a/h1/b0$b;
.super Lf/i/a/a/h1/n;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lf/i/a/a/u0;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lf/i/a/a/u0;I)V
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/h1/m0$b;

    invoke-direct {v0, p2}, Lf/i/a/a/h1/m0$b;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lf/i/a/a/h1/n;-><init>(ZLf/i/a/a/h1/m0;)V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/b0$b;->e:Lf/i/a/a/u0;

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/u0;->i()I

    move-result v0

    iput v0, p0, Lf/i/a/a/h1/b0$b;->f:I

    .line 4
    invoke-virtual {p1}, Lf/i/a/a/u0;->p()I

    move-result p1

    iput p1, p0, Lf/i/a/a/h1/b0$b;->g:I

    .line 5
    iput p2, p0, Lf/i/a/a/h1/b0$b;->h:I

    .line 6
    iget p1, p0, Lf/i/a/a/h1/b0$b;->f:I

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    .line 7
    div-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lc/a/a/b/g/h;->w(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A(I)Lf/i/a/a/u0;
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/b0$b;->e:Lf/i/a/a/u0;

    return-object p1
.end method

.method public i()I
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->f:I

    iget v1, p0, Lf/i/a/a/h1/b0$b;->h:I

    mul-int v0, v0, v1

    return v0
.end method

.method public p()I
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->g:I

    iget v1, p0, Lf/i/a/a/h1/b0$b;->h:I

    mul-int v0, v0, v1

    return v0
.end method

.method public r(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public s(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->f:I

    div-int/2addr p1, v0

    return p1
.end method

.method public t(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->g:I

    div-int/2addr p1, v0

    return p1
.end method

.method public v(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public w(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->f:I

    mul-int p1, p1, v0

    return p1
.end method

.method public x(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0$b;->g:I

    mul-int p1, p1, v0

    return p1
.end method
