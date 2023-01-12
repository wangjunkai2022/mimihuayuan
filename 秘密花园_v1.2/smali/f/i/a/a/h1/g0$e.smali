.class public final Lf/i/a/a/h1/g0$e;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lf/i/a/a/h1/g0;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/g0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/g0$e;->b:Lf/i/a/a/h1/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lf/i/a/a/h1/g0$e;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0$e;->b:Lf/i/a/a/h1/g0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    iget-object v2, v0, Lf/i/a/a/h1/g0;->c:Lf/i/a/a/l1/b0;

    iget v0, v0, Lf/i/a/a/h1/g0;->x:I

    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v0}, Lf/i/a/a/l1/w;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lf/i/a/a/l1/c0;->e(I)V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0$e;->b:Lf/i/a/a/h1/g0;

    iget v1, p0, Lf/i/a/a/h1/g0$e;->a:I

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/h1/g0;->G()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lf/i/a/a/h1/g0;->I:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0$e;->b:Lf/i/a/a/h1/g0;

    iget v1, p0, Lf/i/a/a/h1/g0$e;->a:I

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/h1/g0;->G()Z

    move-result v2

    const/4 v3, -0x3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/g0;->C(I)V

    .line 4
    iget-object v2, v0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v4, v2, v1

    iget-boolean v8, v0, Lf/i/a/a/h1/g0;->I:Z

    iget-wide v9, v0, Lf/i/a/a/h1/g0;->E:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 5
    invoke-virtual/range {v4 .. v10}, Lf/i/a/a/h1/j0;->s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/g0;->D(I)V

    :cond_1
    move v3, p1

    :goto_0
    return v3
.end method

.method public q(J)I
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0$e;->b:Lf/i/a/a/h1/g0;

    iget v1, p0, Lf/i/a/a/h1/g0$e;->a:I

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/h1/g0;->G()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/g0;->C(I)V

    .line 4
    iget-object v2, v0, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    aget-object v2, v2, v1

    .line 5
    iget-boolean v4, v0, Lf/i/a/a/h1/g0;->I:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    .line 6
    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->f()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    invoke-virtual {v2, p1, p2, v4, v4}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    if-nez v3, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/g0;->D(I)V

    :cond_3
    :goto_1
    return v3
.end method
