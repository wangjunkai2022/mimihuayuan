.class public final Lf/i/a/a/i1/l;
.super Lf/i/a/a/p;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final j:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lf/i/a/a/i1/k;

.field public final l:Lf/i/a/a/i1/h;

.field public final m:Lf/i/a/a/c0;

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Lf/i/a/a/b0;

.field public r:Lf/i/a/a/i1/f;

.field public s:Lf/i/a/a/i1/i;

.field public t:Lf/i/a/a/i1/j;

.field public u:Lf/i/a/a/i1/j;

.field public v:I


# direct methods
.method public constructor <init>(Lf/i/a/a/i1/k;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lf/i/a/a/i1/h;->a:Lf/i/a/a/i1/h;

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Lf/i/a/a/p;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lf/i/a/a/i1/l;->k:Lf/i/a/a/i1/k;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lf/i/a/a/m1/h0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lf/i/a/a/i1/l;->j:Landroid/os/Handler;

    .line 5
    iput-object v0, p0, Lf/i/a/a/i1/l;->l:Lf/i/a/a/i1/h;

    .line 6
    new-instance p1, Lf/i/a/a/c0;

    invoke-direct {p1}, Lf/i/a/a/c0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/i1/l;->m:Lf/i/a/a/c0;

    return-void

    .line 7
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

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lf/i/a/a/i1/l;->q:Lf/i/a/a/b0;

    .line 2
    iget-object p2, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lf/i/a/a/i1/l;->p:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lf/i/a/a/i1/l;->l:Lf/i/a/a/i1/h;

    check-cast p2, Lf/i/a/a/i1/h$a;

    invoke-virtual {p2, p1}, Lf/i/a/a/i1/h$a;->a(Lf/i/a/a/b0;)Lf/i/a/a/i1/f;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    :goto_0
    return-void
.end method

.method public F(Lf/i/a/a/b0;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/l;->l:Lf/i/a/a/i1/h;

    check-cast v0, Lf/i/a/a/i1/h$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v2, "text/vtt"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "text/x-ssa"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/ttml+xml"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/x-mp4-vtt"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/x-subrip"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/x-quicktime-tx3g"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/cea-608"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/x-mp4-cea-608"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/cea-708"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/dvbsubs"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/pgs"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 14
    iget-object p1, p1, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    invoke-static {v1, p1}, Lf/i/a/a/p;->G(Lf/i/a/a/z0/g;Lf/i/a/a/z0/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    return p1

    .line 15
    :cond_3
    iget-object p1, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-static {p1}, Lf/i/a/a/m1/r;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3

    .line 16
    :cond_5
    throw v1
.end method

.method public final I()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/i1/l;->j:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lf/i/a/a/i1/l;->k:Lf/i/a/a/i1/k;

    invoke-interface {v1, v0}, Lf/i/a/a/i1/k;->e(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final J()J
    .locals 5

    .line 1
    iget v0, p0, Lf/i/a/a/i1/l;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    .line 2
    iget-object v1, v1, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lf/i/a/a/i1/e;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    iget v1, p0, Lf/i/a/a/i1/l;->v:I

    .line 4
    iget-object v2, v0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Lf/i/a/a/i1/e;->b(I)J

    move-result-wide v1

    iget-wide v3, v0, Lf/i/a/a/i1/j;->d:J

    add-long/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_1
    return-wide v1
.end method

.method public final K()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lf/i/a/a/i1/l;->v:I

    .line 3
    iget-object v1, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lf/i/a/a/y0/f;->i()V

    .line 5
    iput-object v0, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    .line 6
    :cond_0
    iget-object v1, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lf/i/a/a/y0/f;->i()V

    .line 8
    iput-object v0, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    :cond_1
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->K()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {v0}, Lf/i/a/a/y0/c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf/i/a/a/i1/l;->p:I

    .line 5
    iget-object v0, p0, Lf/i/a/a/i1/l;->l:Lf/i/a/a/i1/h;

    iget-object v1, p0, Lf/i/a/a/i1/l;->q:Lf/i/a/a/b0;

    check-cast v0, Lf/i/a/a/i1/h$a;

    invoke-virtual {v0, v1}, Lf/i/a/a/i1/h$a;->a(Lf/i/a/a/b0;)Lf/i/a/a/i1/f;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/i1/l;->o:Z

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

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object v0, p0, Lf/i/a/a/i1/l;->k:Lf/i/a/a/i1/k;

    invoke-interface {v0, p1}, Lf/i/a/a/i1/k;->e(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lf/i/a/a/i1/l;->o:Z

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    if-nez p3, :cond_1

    .line 3
    iget-object p3, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {p3, p1, p2}, Lf/i/a/a/i1/f;->b(J)V

    .line 4
    :try_start_0
    iget-object p3, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {p3}, Lf/i/a/a/y0/c;->d()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/i/a/a/i1/j;

    iput-object p3, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;
    :try_end_0
    .catch Lf/i/a/a/i1/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget p2, p0, Lf/i/a/a/p;->c:I

    .line 6
    invoke-static {p1, p2}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget p3, p0, Lf/i/a/a/p;->d:I

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object p3, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->J()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 10
    iget p3, p0, Lf/i/a/a/i1/l;->v:I

    add-int/2addr p3, v0

    iput p3, p0, Lf/i/a/a/i1/l;->v:I

    .line 11
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->J()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 12
    :cond_4
    iget-object v2, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 13
    invoke-virtual {v2}, Lf/i/a/a/y0/a;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 14
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->J()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 15
    iget v2, p0, Lf/i/a/a/i1/l;->p:I

    if-ne v2, p4, :cond_5

    .line 16
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->L()V

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->K()V

    .line 18
    iput-boolean v0, p0, Lf/i/a/a/i1/l;->o:Z

    goto :goto_2

    .line 19
    :cond_6
    iget-object v2, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    iget-wide v4, v2, Lf/i/a/a/y0/f;->b:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 20
    iget-object p3, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    if-eqz p3, :cond_7

    .line 21
    invoke-virtual {p3}, Lf/i/a/a/y0/f;->i()V

    .line 22
    :cond_7
    iget-object p3, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    iput-object p3, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    .line 23
    iput-object v3, p0, Lf/i/a/a/i1/l;->u:Lf/i/a/a/i1/j;

    .line 24
    iget-object v2, p3, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p3, Lf/i/a/a/i1/j;->d:J

    sub-long v4, p1, v4

    invoke-interface {v2, v4, v5}, Lf/i/a/a/i1/e;->a(J)I

    move-result p3

    .line 25
    iput p3, p0, Lf/i/a/a/i1/l;->v:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_a

    .line 26
    iget-object p3, p0, Lf/i/a/a/i1/l;->t:Lf/i/a/a/i1/j;

    .line 27
    iget-object v2, p3, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p3, Lf/i/a/a/i1/j;->d:J

    sub-long/2addr p1, v4

    invoke-interface {v2, p1, p2}, Lf/i/a/a/i1/e;->c(J)Ljava/util/List;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lf/i/a/a/i1/l;->j:Landroid/os/Handler;

    if-eqz p2, :cond_9

    .line 29
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 30
    :cond_9
    iget-object p2, p0, Lf/i/a/a/i1/l;->k:Lf/i/a/a/i1/k;

    invoke-interface {p2, p1}, Lf/i/a/a/i1/k;->e(Ljava/util/List;)V

    .line 31
    :cond_a
    :goto_3
    iget p1, p0, Lf/i/a/a/i1/l;->p:I

    if-ne p1, p4, :cond_b

    return-void

    .line 32
    :cond_b
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Lf/i/a/a/i1/l;->n:Z

    if-nez p1, :cond_10

    .line 33
    iget-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    if-nez p1, :cond_c

    .line 34
    iget-object p1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {p1}, Lf/i/a/a/y0/c;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/i1/i;

    iput-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    if-nez p1, :cond_c

    return-void

    .line 35
    :cond_c
    iget p1, p0, Lf/i/a/a/i1/l;->p:I

    if-ne p1, v0, :cond_d

    .line 36
    iget-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    const/4 p2, 0x4

    .line 37
    iput p2, p1, Lf/i/a/a/y0/a;->a:I

    .line 38
    iget-object p1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    iget-object p2, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    invoke-interface {p1, p2}, Lf/i/a/a/y0/c;->c(Ljava/lang/Object;)V

    .line 39
    iput-object v3, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    .line 40
    iput p4, p0, Lf/i/a/a/i1/l;->p:I

    return-void

    .line 41
    :cond_d
    iget-object p1, p0, Lf/i/a/a/i1/l;->m:Lf/i/a/a/c0;

    iget-object p2, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    invoke-virtual {p0, p1, p2, v1}, Lf/i/a/a/p;->E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_f

    .line 42
    iget-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    invoke-virtual {p1}, Lf/i/a/a/y0/a;->h()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 43
    iput-boolean v0, p0, Lf/i/a/a/i1/l;->n:Z

    goto :goto_5

    .line 44
    :cond_e
    iget-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    iget-object p2, p0, Lf/i/a/a/i1/l;->m:Lf/i/a/a/c0;

    iget-object p2, p2, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    iget-wide p2, p2, Lf/i/a/a/b0;->m:J

    iput-wide p2, p1, Lf/i/a/a/i1/i;->f:J

    .line 45
    iget-object p1, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    .line 46
    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    :goto_5
    iget-object p1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    iget-object p2, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;

    invoke-interface {p1, p2}, Lf/i/a/a/y0/c;->c(Ljava/lang/Object;)V

    .line 48
    iput-object v3, p0, Lf/i/a/a/i1/l;->s:Lf/i/a/a/i1/i;
    :try_end_1
    .catch Lf/i/a/a/i1/g; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_f
    const/4 p2, -0x3

    if-ne p1, p2, :cond_b

    :cond_10
    return-void

    :catch_1
    move-exception p1

    .line 49
    iget p2, p0, Lf/i/a/a/p;->c:I

    .line 50
    invoke-static {p1, p2}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/i1/l;->q:Lf/i/a/a/b0;

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->I()V

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->K()V

    .line 4
    iget-object v1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {v1}, Lf/i/a/a/y0/c;->a()V

    .line 5
    iput-object v0, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf/i/a/a/i1/l;->p:I

    return-void
.end method

.method public z(JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->I()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/i1/l;->n:Z

    .line 3
    iput-boolean p1, p0, Lf/i/a/a/i1/l;->o:Z

    .line 4
    iget p1, p0, Lf/i/a/a/i1/l;->p:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->L()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/i1/l;->K()V

    .line 7
    iget-object p1, p0, Lf/i/a/a/i1/l;->r:Lf/i/a/a/i1/f;

    invoke-interface {p1}, Lf/i/a/a/y0/c;->flush()V

    :goto_0
    return-void
.end method
