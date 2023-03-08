.class public final Lf/i/a/a/h1/r;
.super Lf/i/a/a/h1/s;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/r$a;,
        Lf/i/a/a/h1/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/h1/s<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lf/i/a/a/h1/e0;

.field public final j:J

.field public final k:J

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/q;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lf/i/a/a/u0$c;

.field public q:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Lf/i/a/a/h1/r$a;

.field public s:Lf/i/a/a/h1/r$b;

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/e0;JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/s;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/r;->i:Lf/i/a/a/h1/e0;

    .line 4
    iput-wide p2, p0, Lf/i/a/a/h1/r;->j:J

    .line 5
    iput-wide p4, p0, Lf/i/a/a/h1/r;->k:J

    .line 6
    iput-boolean v2, p0, Lf/i/a/a/h1/r;->l:Z

    .line 7
    iput-boolean v3, p0, Lf/i/a/a/h1/r;->m:Z

    .line 8
    iput-boolean v3, p0, Lf/i/a/a/h1/r;->n:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lf/i/a/a/u0$c;

    invoke-direct {p1}, Lf/i/a/a/u0$c;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/r;->p:Lf/i/a/a/u0$c;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/r;->i:Lf/i/a/a/h1/e0;

    invoke-interface {v0}, Lf/i/a/a/h1/e0;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/r;->s:Lf/i/a/a/h1/r$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lf/i/a/a/h1/s;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 8

    .line 1
    new-instance v7, Lf/i/a/a/h1/q;

    iget-object v0, p0, Lf/i/a/a/h1/r;->i:Lf/i/a/a/h1/e0;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object v1

    iget-boolean v2, p0, Lf/i/a/a/h1/r;->l:Z

    iget-wide v3, p0, Lf/i/a/a/h1/r;->t:J

    iget-wide v5, p0, Lf/i/a/a/h1/r;->u:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/h1/q;-><init>(Lf/i/a/a/h1/d0;ZJJ)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/r;->i:Lf/i/a/a/h1/e0;

    check-cast p1, Lf/i/a/a/h1/q;

    iget-object p1, p1, Lf/i/a/a/h1/q;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v0, p1}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lf/i/a/a/h1/r;->m:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/i/a/a/h1/r;->r:Lf/i/a/a/h1/r$a;

    iget-object p1, p1, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/r;->w(Lf/i/a/a/u0;)V

    :cond_0
    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 1
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s;->h:Lf/i/a/a/l1/i0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/s;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/r;->i:Lf/i/a/a/h1/e0;

    invoke-virtual {p0, p1, v0}, Lf/i/a/a/h1/s;->v(Ljava/lang/Object;Lf/i/a/a/h1/e0;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf/i/a/a/h1/s;->n()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/h1/r;->s:Lf/i/a/a/h1/r$b;

    .line 3
    iput-object v0, p0, Lf/i/a/a/h1/r;->r:Lf/i/a/a/h1/r$a;

    return-void
.end method

.method public q(Ljava/lang/Object;J)J
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Void;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/r;->j:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    .line 3
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    iget-wide v2, p0, Lf/i/a/a/h1/r;->k:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 5
    invoke-static {v2, v3}, Lf/i/a/a/q;->b(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public u(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/r;->s:Lf/i/a/a/h1/r$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p4, p0, Lf/i/a/a/h1/r;->q:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p3}, Lf/i/a/a/h1/r;->w(Lf/i/a/a/u0;)V

    :goto_0
    return-void
.end method

.method public final w(Lf/i/a/a/u0;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lf/i/a/a/h1/r;->p:Lf/i/a/a/u0$c;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    .line 2
    iget-object v0, v1, Lf/i/a/a/h1/r;->p:Lf/i/a/a/u0$c;

    .line 3
    iget-wide v5, v0, Lf/i/a/a/u0$c;->j:J

    .line 4
    iget-object v0, v1, Lf/i/a/a/h1/r;->r:Lf/i/a/a/h1/r$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lf/i/a/a/h1/r;->m:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-wide v2, v1, Lf/i/a/a/h1/r;->t:J

    sub-long/2addr v2, v5

    .line 6
    iget-wide v9, v1, Lf/i/a/a/h1/r;->k:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lf/i/a/a/h1/r;->u:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_4

    .line 7
    :cond_2
    :goto_1
    iget-wide v9, v1, Lf/i/a/a/h1/r;->j:J

    .line 8
    iget-wide v11, v1, Lf/i/a/a/h1/r;->k:J

    .line 9
    iget-boolean v0, v1, Lf/i/a/a/h1/r;->n:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v1, Lf/i/a/a/h1/r;->p:Lf/i/a/a/u0$c;

    .line 11
    iget-wide v13, v0, Lf/i/a/a/u0$c;->h:J

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    .line 12
    iput-wide v13, v1, Lf/i/a/a/h1/r;->t:J

    .line 13
    iget-wide v13, v1, Lf/i/a/a/h1/r;->k:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lf/i/a/a/h1/r;->u:J

    .line 14
    iget-object v0, v1, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 15
    iget-object v3, v1, Lf/i/a/a/h1/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/q;

    iget-wide v5, v1, Lf/i/a/a/h1/r;->t:J

    iget-wide v7, v1, Lf/i/a/a/h1/r;->u:J

    .line 16
    iput-wide v5, v3, Lf/i/a/a/h1/q;->e:J

    .line 17
    iput-wide v7, v3, Lf/i/a/a/h1/q;->f:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 18
    :goto_4
    :try_start_0
    new-instance v0, Lf/i/a/a/h1/r$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lf/i/a/a/h1/r$a;-><init>(Lf/i/a/a/u0;JJ)V

    iput-object v0, v1, Lf/i/a/a/h1/r;->r:Lf/i/a/a/h1/r$a;
    :try_end_0
    .catch Lf/i/a/a/h1/r$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v2, v1, Lf/i/a/a/h1/r;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 20
    iput-object v0, v1, Lf/i/a/a/h1/r;->s:Lf/i/a/a/h1/r$b;

    return-void
.end method
