.class public final Lf/i/a/a/y$a;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/i0;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lf/i/a/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/j1/m;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/i0;Lf/i/a/a/i0;Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/j1/m;ZIIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/i0;",
            "Lf/i/a/a/i0;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lf/i/a/a/o$a;",
            ">;",
            "Lf/i/a/a/j1/m;",
            "ZIIZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput-object p4, p0, Lf/i/a/a/y$a;->c:Lf/i/a/a/j1/m;

    .line 5
    iput-boolean p5, p0, Lf/i/a/a/y$a;->d:Z

    .line 6
    iput p6, p0, Lf/i/a/a/y$a;->e:I

    .line 7
    iput p7, p0, Lf/i/a/a/y$a;->f:I

    .line 8
    iput-boolean p8, p0, Lf/i/a/a/y$a;->g:Z

    .line 9
    iput-boolean p9, p0, Lf/i/a/a/y$a;->l:Z

    .line 10
    iget p3, p2, Lf/i/a/a/i0;->f:I

    iget p4, p1, Lf/i/a/a/i0;->f:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lf/i/a/a/y$a;->h:Z

    .line 11
    iget-object p3, p2, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object p4, p1, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    if-ne p3, p4, :cond_2

    iget-object p3, p2, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget-object p4, p1, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    if-eq p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lf/i/a/a/y$a;->i:Z

    .line 12
    iget-boolean p3, p2, Lf/i/a/a/i0;->g:Z

    iget-boolean p4, p1, Lf/i/a/a/i0;->g:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lf/i/a/a/y$a;->j:Z

    .line 13
    iget-object p2, p2, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object p1, p1, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lf/i/a/a/y$a;->k:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lf/i/a/a/l0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v0, v0, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget v2, p0, Lf/i/a/a/y$a;->f:I

    invoke-interface {p1, v1, v0, v2}, Lf/i/a/a/l0$b;->onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic b(Lf/i/a/a/l0$b;)V
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/y$a;->e:I

    invoke-interface {p1, v0}, Lf/i/a/a/l0$b;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public synthetic c(Lf/i/a/a/l0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    iget-object v0, v0, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v0, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    invoke-interface {p1, v1, v0}, Lf/i/a/a/l0$b;->onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V

    return-void
.end method

.method public synthetic d(Lf/i/a/a/l0$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    iget-boolean v0, v0, Lf/i/a/a/i0;->g:Z

    invoke-interface {p1, v0}, Lf/i/a/a/l0$b;->onLoadingChanged(Z)V

    return-void
.end method

.method public synthetic e(Lf/i/a/a/l0$b;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/y$a;->l:Z

    iget-object v1, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    iget v1, v1, Lf/i/a/a/i0;->f:I

    invoke-interface {p1, v0, v1}, Lf/i/a/a/l0$b;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/y$a;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lf/i/a/a/y$a;->f:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/g;

    invoke-direct {v1, p0}, Lf/i/a/a/g;-><init>(Lf/i/a/a/y$a;)V

    .line 3
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lf/i/a/a/y$a;->d:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/f;

    invoke-direct {v1, p0}, Lf/i/a/a/f;-><init>(Lf/i/a/a/y$a;)V

    .line 6
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lf/i/a/a/y$a;->k:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lf/i/a/a/y$a;->c:Lf/i/a/a/j1/m;

    iget-object v1, p0, Lf/i/a/a/y$a;->a:Lf/i/a/a/i0;

    iget-object v1, v1, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v1, v1, Lf/i/a/a/j1/n;->d:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/j1/f;

    if-eqz v0, :cond_3

    .line 9
    check-cast v1, Lf/i/a/a/j1/f$a;

    iput-object v1, v0, Lf/i/a/a/j1/f;->c:Lf/i/a/a/j1/f$a;

    .line 10
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/i;

    invoke-direct {v1, p0}, Lf/i/a/a/i;-><init>(Lf/i/a/a/y$a;)V

    .line 11
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lf/i/a/a/y$a;->j:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/h;

    invoke-direct {v1, p0}, Lf/i/a/a/h;-><init>(Lf/i/a/a/y$a;)V

    .line 15
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    .line 16
    :cond_5
    iget-boolean v0, p0, Lf/i/a/a/y$a;->h:Z

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/j;

    invoke-direct {v1, p0}, Lf/i/a/a/j;-><init>(Lf/i/a/a/y$a;)V

    .line 18
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    .line 19
    :cond_6
    iget-boolean v0, p0, Lf/i/a/a/y$a;->g:Z

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lf/i/a/a/y$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lf/i/a/a/a;->a:Lf/i/a/a/a;

    .line 21
    invoke-static {v0, v1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    :cond_7
    return-void
.end method
