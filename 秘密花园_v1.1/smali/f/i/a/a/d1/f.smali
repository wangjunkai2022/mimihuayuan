.class public final Lf/i/a/a/d1/f;
.super Lf/i/a/a/p;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final j:Lf/i/a/a/d1/c;

.field public final k:Lf/i/a/a/d1/e;

.field public final l:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Lf/i/a/a/c0;

.field public final n:Lf/i/a/a/d1/d;

.field public final o:[Lf/i/a/a/d1/a;

.field public final p:[J

.field public q:I

.field public r:I

.field public s:Lf/i/a/a/d1/b;

.field public t:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/d1/e;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lf/i/a/a/d1/c;->a:Lf/i/a/a/d1/c;

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v1}, Lf/i/a/a/p;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lf/i/a/a/d1/f;->k:Lf/i/a/a/d1/e;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lf/i/a/a/m1/h0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lf/i/a/a/d1/f;->l:Landroid/os/Handler;

    .line 5
    iput-object v0, p0, Lf/i/a/a/d1/f;->j:Lf/i/a/a/d1/c;

    .line 6
    new-instance p1, Lf/i/a/a/c0;

    invoke-direct {p1}, Lf/i/a/a/c0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/d1/f;->m:Lf/i/a/a/c0;

    .line 7
    new-instance p1, Lf/i/a/a/d1/d;

    invoke-direct {p1}, Lf/i/a/a/d1/d;-><init>()V

    iput-object p1, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    const/4 p1, 0x5

    new-array p2, p1, [Lf/i/a/a/d1/a;

    .line 8
    iput-object p2, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    new-array p1, p1, [J

    .line 9
    iput-object p1, p0, Lf/i/a/a/d1/f;->p:[J

    return-void

    .line 10
    :cond_1
    throw v1
.end method


# virtual methods
.method public D([Lf/i/a/a/b0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lf/i/a/a/d1/f;->j:Lf/i/a/a/d1/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lf/i/a/a/d1/c;->a(Lf/i/a/a/b0;)Lf/i/a/a/d1/b;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/d1/f;->s:Lf/i/a/a/d1/b;

    return-void
.end method

.method public F(Lf/i/a/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/d1/f;->j:Lf/i/a/a/d1/c;

    invoke-interface {v0, p1}, Lf/i/a/a/d1/c;->b(Lf/i/a/a/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    invoke-static {v0, p1}, Lf/i/a/a/p;->G(Lf/i/a/a/z0/g;Lf/i/a/a/z0/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/d1/f;->t:Z

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/d1/a;

    .line 3
    iget-object v0, p0, Lf/i/a/a/d1/f;->k:Lf/i/a/a/d1/e;

    invoke-interface {v0, p1}, Lf/i/a/a/d1/e;->v(Lf/i/a/a/d1/a;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lf/i/a/a/d1/f;->t:Z

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lf/i/a/a/d1/f;->r:I

    if-ge p3, v0, :cond_2

    .line 2
    iget-object p3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    invoke-virtual {p3}, Lf/i/a/a/y0/e;->i()V

    .line 3
    iget-object p3, p0, Lf/i/a/a/d1/f;->m:Lf/i/a/a/c0;

    iget-object v2, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    invoke-virtual {p0, p3, v2, p4}, Lf/i/a/a/p;->E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result p3

    const/4 v2, -0x4

    if-ne p3, v2, :cond_2

    .line 4
    iget-object p3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    invoke-virtual {p3}, Lf/i/a/a/y0/a;->h()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    iput-boolean v1, p0, Lf/i/a/a/d1/f;->t:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    invoke-virtual {p3}, Lf/i/a/a/y0/a;->g()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    iget-object v2, p0, Lf/i/a/a/d1/f;->m:Lf/i/a/a/c0;

    iget-object v2, v2, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    iget-wide v2, v2, Lf/i/a/a/b0;->m:J

    iput-wide v2, p3, Lf/i/a/a/d1/d;->f:J

    .line 8
    iget-object p3, p3, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 9
    iget p3, p0, Lf/i/a/a/d1/f;->q:I

    iget v2, p0, Lf/i/a/a/d1/f;->r:I

    add-int/2addr p3, v2

    rem-int/2addr p3, v0

    .line 10
    iget-object v2, p0, Lf/i/a/a/d1/f;->s:Lf/i/a/a/d1/b;

    iget-object v3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    invoke-interface {v2, v3}, Lf/i/a/a/d1/b;->a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v3, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    aput-object v2, v3, p3

    .line 12
    iget-object v2, p0, Lf/i/a/a/d1/f;->p:[J

    iget-object v3, p0, Lf/i/a/a/d1/f;->n:Lf/i/a/a/d1/d;

    iget-wide v3, v3, Lf/i/a/a/y0/e;->d:J

    aput-wide v3, v2, p3

    .line 13
    iget p3, p0, Lf/i/a/a/d1/f;->r:I

    add-int/2addr p3, v1

    iput p3, p0, Lf/i/a/a/d1/f;->r:I

    .line 14
    :cond_2
    :goto_0
    iget p3, p0, Lf/i/a/a/d1/f;->r:I

    if-lez p3, :cond_4

    iget-object p3, p0, Lf/i/a/a/d1/f;->p:[J

    iget v2, p0, Lf/i/a/a/d1/f;->q:I

    aget-wide v3, p3, v2

    cmp-long p3, v3, p1

    if-gtz p3, :cond_4

    .line 15
    iget-object p1, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    aget-object p1, p1, v2

    .line 16
    iget-object p2, p0, Lf/i/a/a/d1/f;->l:Landroid/os/Handler;

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p2, p0, Lf/i/a/a/d1/f;->k:Lf/i/a/a/d1/e;

    invoke-interface {p2, p1}, Lf/i/a/a/d1/e;->v(Lf/i/a/a/d1/a;)V

    .line 19
    :goto_1
    iget-object p1, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    iget p2, p0, Lf/i/a/a/d1/f;->q:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v1

    .line 20
    rem-int/2addr p2, v0

    iput p2, p0, Lf/i/a/a/d1/f;->q:I

    .line 21
    iget p1, p0, Lf/i/a/a/d1/f;->r:I

    sub-int/2addr p1, v1

    iput p1, p0, Lf/i/a/a/d1/f;->r:I

    :cond_4
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/i/a/a/d1/f;->q:I

    .line 3
    iput v0, p0, Lf/i/a/a/d1/f;->r:I

    .line 4
    iput-object v1, p0, Lf/i/a/a/d1/f;->s:Lf/i/a/a/d1/b;

    return-void
.end method

.method public z(JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/d1/f;->o:[Lf/i/a/a/d1/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf/i/a/a/d1/f;->q:I

    .line 3
    iput p1, p0, Lf/i/a/a/d1/f;->r:I

    .line 4
    iput-boolean p1, p0, Lf/i/a/a/d1/f;->t:Z

    return-void
.end method
