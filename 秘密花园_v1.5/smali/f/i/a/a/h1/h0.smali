.class public final Lf/i/a/a/h1/h0;
.super Lf/i/a/a/h1/o;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lf/i/a/a/h1/g0$c;


# instance fields
.field public final f:Landroid/net/Uri;

.field public final g:Lf/i/a/a/l1/m$a;

.field public final h:Lf/i/a/a/b1/i;

.field public final i:Lf/i/a/a/l1/b0;

.field public final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:I

.field public final l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:J

.field public n:Z

.field public o:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/b1/i;Lf/i/a/a/l1/b0;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/h0;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/h0;->g:Lf/i/a/a/l1/m$a;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/h0;->h:Lf/i/a/a/b1/i;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/h0;->i:Lf/i/a/a/l1/b0;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/h0;->j:Ljava/lang/String;

    .line 7
    iput p6, p0, Lf/i/a/a/h1/h0;->k:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lf/i/a/a/h1/h0;->m:J

    .line 9
    iput-object p7, p0, Lf/i/a/a/h1/h0;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/h0;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 10

    .line 1
    iget-object p3, p0, Lf/i/a/a/h1/h0;->g:Lf/i/a/a/l1/m$a;

    invoke-interface {p3}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v2

    .line 2
    iget-object p3, p0, Lf/i/a/a/h1/h0;->o:Lf/i/a/a/l1/i0;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {v2, p3}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 4
    :cond_0
    new-instance p3, Lf/i/a/a/h1/g0;

    iget-object v1, p0, Lf/i/a/a/h1/h0;->f:Landroid/net/Uri;

    iget-object p4, p0, Lf/i/a/a/h1/h0;->h:Lf/i/a/a/b1/i;

    .line 5
    invoke-interface {p4}, Lf/i/a/a/b1/i;->a()[Lf/i/a/a/b1/g;

    move-result-object v3

    iget-object v4, p0, Lf/i/a/a/h1/h0;->i:Lf/i/a/a/l1/b0;

    .line 6
    iget-object p4, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {p4, v0, p1, v5, v6}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object v5

    .line 7
    iget-object v8, p0, Lf/i/a/a/h1/h0;->j:Ljava/lang/String;

    iget v9, p0, Lf/i/a/a/h1/h0;->k:I

    move-object v0, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lf/i/a/a/h1/g0;-><init>(Landroid/net/Uri;Lf/i/a/a/l1/m;[Lf/i/a/a/b1/g;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/h1/g0$c;Lf/i/a/a/l1/e;Ljava/lang/String;I)V

    return-object p3
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 4

    .line 1
    check-cast p1, Lf/i/a/a/h1/g0;

    .line 2
    iget-boolean v0, p1, Lf/i/a/a/h1/g0;->u:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lf/i/a/a/h1/g0;->r:[Lf/i/a/a/h1/j0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lf/i/a/a/h1/j0;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lf/i/a/a/h1/g0;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v0, p1}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    .line 6
    iget-object v0, p1, Lf/i/a/a/h1/g0;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p1, Lf/i/a/a/h1/g0;->o:Lf/i/a/a/h1/d0$a;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lf/i/a/a/h1/g0;->J:Z

    .line 9
    iget-object p1, p1, Lf/i/a/a/h1/g0;->d:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/f0$a;->z()V

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 2
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/h0;->o:Lf/i/a/a/l1/i0;

    .line 2
    iget-wide v0, p0, Lf/i/a/a/h1/h0;->m:J

    iget-boolean p1, p0, Lf/i/a/a/h1/h0;->n:Z

    invoke-virtual {p0, v0, v1, p1}, Lf/i/a/a/h1/h0;->o(JZ)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public final o(JZ)V
    .locals 12

    .line 1
    iput-wide p1, p0, Lf/i/a/a/h1/h0;->m:J

    .line 2
    iput-boolean p3, p0, Lf/i/a/a/h1/h0;->n:Z

    .line 3
    new-instance p1, Lf/i/a/a/h1/n0;

    iget-wide v3, p0, Lf/i/a/a/h1/h0;->m:J

    iget-boolean v9, p0, Lf/i/a/a/h1/h0;->n:Z

    iget-object v11, p0, Lf/i/a/a/h1/h0;->l:Ljava/lang/Object;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move-wide v1, v3

    .line 4
    invoke-direct/range {v0 .. v11}, Lf/i/a/a/h1/n0;-><init>(JJJJZZLjava/lang/Object;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method

.method public q(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lf/i/a/a/h1/h0;->m:J

    .line 2
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/h0;->m:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lf/i/a/a/h1/h0;->n:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/h1/h0;->o(JZ)V

    return-void
.end method
