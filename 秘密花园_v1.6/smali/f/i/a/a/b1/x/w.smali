.class public final Lf/i/a/a/b1/x/w;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lf/i/a/a/b1/x/c0;


# instance fields
.field public final a:Lf/i/a/a/b1/x/v;

.field public final b:Lf/i/a/a/m1/u;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/x/w;->a:Lf/i/a/a/b1/x/v;

    .line 3
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/b1/x/w;->f:Z

    return-void
.end method

.method public b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/w;->a:Lf/i/a/a/b1/x/v;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/b1/x/v;->b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/b1/x/w;->f:Z

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;I)V
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result v3

    .line 2
    iget v4, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 3
    :goto_1
    iget-boolean v3, p0, Lf/i/a/a/b1/x/w;->f:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput-boolean v1, p0, Lf/i/a/a/b1/x/w;->f:Z

    .line 5
    invoke-virtual {p1, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 6
    iput v1, p0, Lf/i/a/a/b1/x/w;->d:I

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result p2

    if-lez p2, :cond_9

    .line 8
    iget p2, p0, Lf/i/a/a/b1/x/w;->d:I

    const/4 v3, 0x3

    if-ge p2, v3, :cond_6

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p2

    .line 10
    iget v4, p1, Lf/i/a/a/m1/u;->b:I

    sub-int/2addr v4, v0

    .line 11
    invoke-virtual {p1, v4}, Lf/i/a/a/m1/u;->A(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_4

    .line 12
    iput-boolean v0, p0, Lf/i/a/a/b1/x/w;->f:Z

    return-void

    .line 13
    :cond_4
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result p2

    iget v4, p0, Lf/i/a/a/b1/x/w;->d:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 14
    iget-object v4, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    iget v5, p0, Lf/i/a/a/b1/x/w;->d:I

    invoke-virtual {p1, v4, v5, p2}, Lf/i/a/a/m1/u;->c([BII)V

    .line 15
    iget v4, p0, Lf/i/a/a/b1/x/w;->d:I

    add-int/2addr v4, p2

    iput v4, p0, Lf/i/a/a/b1/x/w;->d:I

    if-ne v4, v3, :cond_3

    .line 16
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2, v3}, Lf/i/a/a/m1/u;->w(I)V

    .line 17
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2, v0}, Lf/i/a/a/m1/u;->B(I)V

    .line 18
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->p()I

    move-result p2

    .line 19
    iget-object v4, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 20
    :goto_3
    iput-boolean v5, p0, Lf/i/a/a/b1/x/w;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v3

    .line 21
    iput p2, p0, Lf/i/a/a/b1/x/w;->c:I

    .line 22
    iget-object v4, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    .line 23
    iget-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    array-length v6, v5

    if-ge v6, p2, :cond_3

    const/16 v6, 0x1002

    .line 24
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 25
    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 26
    invoke-virtual {v4, p2}, Lf/i/a/a/m1/u;->w(I)V

    .line 27
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    iget-object p2, p2, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v5, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result p2

    iget v3, p0, Lf/i/a/a/b1/x/w;->c:I

    iget v4, p0, Lf/i/a/a/b1/x/w;->d:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 29
    iget-object v3, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/b1/x/w;->d:I

    invoke-virtual {p1, v3, v4, p2}, Lf/i/a/a/m1/u;->c([BII)V

    .line 30
    iget v3, p0, Lf/i/a/a/b1/x/w;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lf/i/a/a/b1/x/w;->d:I

    .line 31
    iget p2, p0, Lf/i/a/a/b1/x/w;->c:I

    if-ne v3, p2, :cond_3

    .line 32
    iget-boolean v3, p0, Lf/i/a/a/b1/x/w;->e:Z

    if-eqz v3, :cond_8

    .line 33
    iget-object v3, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v3, v1, p2, v2}, Lf/i/a/a/m1/h0;->r([BIII)I

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    iput-boolean v0, p0, Lf/i/a/a/b1/x/w;->f:Z

    return-void

    .line 35
    :cond_7
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    iget v3, p0, Lf/i/a/a/b1/x/w;->c:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Lf/i/a/a/m1/u;->w(I)V

    goto :goto_4

    .line 36
    :cond_8
    iget-object v3, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v3, p2}, Lf/i/a/a/m1/u;->w(I)V

    .line 37
    :goto_4
    iget-object p2, p0, Lf/i/a/a/b1/x/w;->a:Lf/i/a/a/b1/x/v;

    iget-object v3, p0, Lf/i/a/a/b1/x/w;->b:Lf/i/a/a/m1/u;

    invoke-interface {p2, v3}, Lf/i/a/a/b1/x/v;->c(Lf/i/a/a/m1/u;)V

    .line 38
    iput v1, p0, Lf/i/a/a/b1/x/w;->d:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method
