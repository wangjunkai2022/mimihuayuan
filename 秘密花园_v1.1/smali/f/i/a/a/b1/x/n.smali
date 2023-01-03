.class public final Lf/i/a/a/b1/x/n;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lf/i/a/a/b1/x/j;


# instance fields
.field public final a:Lf/i/a/a/m1/u;

.field public b:Lf/i/a/a/b1/p;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/u;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/b1/x/n;->c:Z

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/b1/x/n;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    .line 3
    iget v1, p0, Lf/i/a/a/b1/x/n;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    iget-object v3, p1, Lf/i/a/a/m1/u;->a:[B

    .line 6
    iget v4, p1, Lf/i/a/a/m1/u;->b:I

    .line 7
    iget-object v5, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    iget v6, p0, Lf/i/a/a/b1/x/n;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Lf/i/a/a/b1/x/n;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 9
    iget-object v1, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->A(I)V

    const/16 v1, 0x49

    .line 10
    iget-object v4, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    .line 11
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->B(I)V

    .line 13
    iget-object v1, p0, Lf/i/a/a/b1/x/n;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->o()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lf/i/a/a/b1/x/n;->e:I

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lf/i/a/a/b1/x/n;->c:Z

    return-void

    .line 15
    :cond_3
    :goto_1
    iget v1, p0, Lf/i/a/a/b1/x/n;->e:I

    iget v2, p0, Lf/i/a/a/b1/x/n;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lf/i/a/a/b1/x/n;->b:Lf/i/a/a/b1/p;

    invoke-interface {v1, p1, v0}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 17
    iget p1, p0, Lf/i/a/a/b1/x/n;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lf/i/a/a/b1/x/n;->f:I

    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/b1/x/n;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lf/i/a/a/b1/x/n;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lf/i/a/a/b1/x/n;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lf/i/a/a/b1/x/n;->b:Lf/i/a/a/b1/p;

    iget-wide v2, p0, Lf/i/a/a/b1/x/n;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/b1/x/n;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Lf/i/a/a/b1/x/n;->c:Z

    .line 2
    iput-wide p1, p0, Lf/i/a/a/b1/x/n;->d:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lf/i/a/a/b1/x/n;->e:I

    .line 4
    iput p1, p0, Lf/i/a/a/b1/x/n;->f:I

    return-void
.end method

.method public f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/x/n;->b:Lf/i/a/a/b1/p;

    .line 3
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    return-void
.end method
