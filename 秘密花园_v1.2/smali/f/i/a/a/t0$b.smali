.class public final Lf/i/a/a/t0$b;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lf/i/a/a/n1/s;
.implements Lf/i/a/a/w0/o;
.implements Lf/i/a/a/i1/k;
.implements Lf/i/a/a/d1/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lf/i/a/a/w0/k$c;
.implements Lf/i/a/a/l0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/t0;


# direct methods
.method public constructor <init>(Lf/i/a/a/t0;Lf/i/a/a/t0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/q;

    .line 4
    iget-object v2, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 5
    iget-object v2, v2, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3, p4}, Lf/i/a/a/n1/q;->a(IIIF)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 9
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 11
    invoke-interface {v1, p1, p2, p3, p4}, Lf/i/a/a/n1/s;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/t0;->m()Z

    move-result v1

    .line 2
    invoke-virtual {v0, v1, p1}, Lf/i/a/a/t0;->N(ZI)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget v1, v0, Lf/i/a/a/t0;->y:I

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, v0, Lf/i/a/a/t0;->y:I

    .line 4
    iget-object v0, v0, Lf/i/a/a/t0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/l;

    .line 6
    iget-object v2, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 7
    iget-object v2, v2, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v1, p1}, Lf/i/a/a/w0/l;->c(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 11
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/o;

    .line 13
    invoke-interface {v1, p1}, Lf/i/a/a/w0/o;->c(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public d(Lf/i/a/a/y0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/o;

    .line 4
    invoke-interface {v1, p1}, Lf/i/a/a/w0/o;->d(Lf/i/a/a/y0/d;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lf/i/a/a/t0;->p:Lf/i/a/a/b0;

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lf/i/a/a/t0;->y:I

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iput-object p1, v0, Lf/i/a/a/t0;->B:Ljava/util/List;

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/i1/k;

    .line 5
    invoke-interface {v1, p1}, Lf/i/a/a/i1/k;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lf/i/a/a/y0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iput-object p1, v0, Lf/i/a/a/t0;->x:Lf/i/a/a/y0/d;

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/o;

    .line 5
    invoke-interface {v1, p1}, Lf/i/a/a/w0/o;->g(Lf/i/a/a/y0/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf/i/a/a/n1/s;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Lf/i/a/a/n1/s;->h(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Lf/i/a/a/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iput-object p1, v0, Lf/i/a/a/t0;->o:Lf/i/a/a/b0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 5
    invoke-interface {v1, p1}, Lf/i/a/a/n1/s;->j(Lf/i/a/a/b0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Lf/i/a/a/y0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iput-object p1, v0, Lf/i/a/a/t0;->w:Lf/i/a/a/y0/d;

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 5
    invoke-interface {v1, p1}, Lf/i/a/a/n1/s;->k(Lf/i/a/a/y0/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lf/i/a/a/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iput-object p1, v0, Lf/i/a/a/t0;->p:Lf/i/a/a/b0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/o;

    .line 5
    invoke-interface {v1, p1}, Lf/i/a/a/w0/o;->m(Lf/i/a/a/b0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/t0;->D:Lf/i/a/a/m1/x;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, v0, Lf/i/a/a/t0;->E:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/x;->a(I)V

    .line 5
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lf/i/a/a/t0;->E:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 8
    iget-boolean v0, p1, Lf/i/a/a/t0;->E:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Lf/i/a/a/t0;->D:Lf/i/a/a/m1/x;

    .line 10
    invoke-virtual {p1, v2}, Lf/i/a/a/m1/x;->b(I)V

    .line 11
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 12
    iput-boolean v2, p1, Lf/i/a/a/t0;->E:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lf/i/a/a/j0;)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->b(Lf/i/a/a/l0$b;Lf/i/a/a/j0;)V

    return-void
.end method

.method public synthetic onPlayerError(Lf/i/a/a/w;)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->c(Lf/i/a/a/l0$b;Lf/i/a/a/w;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf/i/a/a/m0;->d(Lf/i/a/a/l0$b;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->e(Lf/i/a/a/l0$b;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->f(Lf/i/a/a/l0$b;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lf/i/a/a/m0;->g(Lf/i/a/a/l0$b;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->h(Lf/i/a/a/l0$b;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 4
    invoke-virtual {p1, p2, p3}, Lf/i/a/a/t0;->E(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Lf/i/a/a/t0;->E(II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    invoke-virtual {p1, p2, p3}, Lf/i/a/a/t0;->E(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public synthetic onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lf/i/a/a/m0;->i(Lf/i/a/a/l0$b;Lf/i/a/a/u0;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf/i/a/a/m0;->j(Lf/i/a/a/l0$b;Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V

    return-void
.end method

.method public q(IJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf/i/a/a/w0/o;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Lf/i/a/a/w0/o;->q(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/q;

    .line 5
    invoke-interface {v1}, Lf/i/a/a/n1/q;->b()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 7
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 9
    invoke-interface {v1, p1}, Lf/i/a/a/n1/s;->r(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public s(Lf/i/a/a/y0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 4
    invoke-interface {v1, p1}, Lf/i/a/a/n1/s;->s(Lf/i/a/a/y0/d;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lf/i/a/a/t0;->o:Lf/i/a/a/b0;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    invoke-virtual {p1, p3, p4}, Lf/i/a/a/t0;->E(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 4
    invoke-virtual {p1, v1, v1}, Lf/i/a/a/t0;->E(II)V

    return-void
.end method

.method public t(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf/i/a/a/w0/o;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Lf/i/a/a/w0/o;->t(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Lf/i/a/a/d1/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/d1/e;

    .line 4
    invoke-interface {v1, p1}, Lf/i/a/a/d1/e;->v(Lf/i/a/a/d1/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/s;

    .line 4
    invoke-interface {v1, p1, p2, p3}, Lf/i/a/a/n1/s;->w(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
