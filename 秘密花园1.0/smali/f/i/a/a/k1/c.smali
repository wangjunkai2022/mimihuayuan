.class public Lf/i/a/a/k1/c;
.super Lf/i/a/a/k1/e;
.source "ExoPlayerView.java"


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public r:Lf/i/a/a/f1/a$b;

.field public final s:Lf/i/a/a/f1/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/i/a/a/k1/c;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/i/a/a/k1/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lf/i/a/a/k1/c$a;

    invoke-direct {p1, p0}, Lf/i/a/a/k1/c$a;-><init>(Lf/i/a/a/k1/c;)V

    iput-object p1, p0, Lf/i/a/a/k1/c;->s:Lf/i/a/a/f1/a$a;

    return-void
.end method


# virtual methods
.method public getContentFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getControllerView()Lf/i/a/a/k1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->p:Z

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->k()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->p()V

    .line 5
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/e;->f(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->p:Z

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->q()V

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public setPlayer(Lf/i/a/a/l0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    invoke-interface {v0, v1}, Lf/i/a/a/l0;->y(Lf/i/a/a/l0$b;)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->g()Lf/i/a/a/l0$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 5
    iget-object v0, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->D()Lf/i/a/a/l0$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 8
    iget-object v0, v0, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iput-object p1, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    .line 10
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setPlayer(Lf/i/a/a/l0;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_4
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/e;->j(Z)V

    if-eqz p1, :cond_a

    .line 15
    invoke-interface {p1}, Lf/i/a/a/l0;->g()Lf/i/a/a/l0$d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    iget-object v2, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v1, Lf/i/a/a/t0;

    .line 17
    iget-object v1, v1, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    invoke-interface {p1}, Lf/i/a/a/l0;->D()Lf/i/a/a/l0$c;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    iget-object v2, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v1, Lf/i/a/a/t0;

    .line 20
    iget-object v3, v1, Lf/i/a/a/t0;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 21
    iget-object v3, v1, Lf/i/a/a/t0;->B:Ljava/util/List;

    invoke-virtual {v2, v3}, Lf/i/a/a/k1/e$b;->e(Ljava/util/List;)V

    .line 22
    :cond_6
    iget-object v1, v1, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_7
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    invoke-interface {p1, v1}, Lf/i/a/a/l0;->r(Lf/i/a/a/l0$b;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->f(Z)V

    .line 25
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->j(Z)V

    .line 26
    iget-object p1, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {p1}, Lf/i/a/a/f1/a;->getRenderView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lf/i/a/a/f1/d;

    if-eqz p1, :cond_8

    .line 27
    iget-object p1, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    check-cast p1, Lf/i/a/a/f1/d;

    invoke-virtual {p1, v0}, Lf/i/a/a/f1/d;->setTakeOverSurfaceTexture(Z)V

    .line 28
    :cond_8
    iget-object p1, p0, Lf/i/a/a/k1/c;->r:Lf/i/a/a/f1/a$b;

    if-eqz p1, :cond_9

    .line 29
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    check-cast v0, Lf/i/a/a/t0;

    invoke-interface {p1, v0}, Lf/i/a/a/f1/a$b;->a(Lf/i/a/a/t0;)V

    .line 30
    :cond_9
    iget-object p1, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    iget-object v0, p0, Lf/i/a/a/k1/c;->s:Lf/i/a/a/f1/a$a;

    invoke-interface {p1, v0}, Lf/i/a/a/f1/a;->setRenderCallback(Lf/i/a/a/f1/a$a;)V

    goto :goto_0

    .line 31
    :cond_a
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->d()V

    .line 32
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->c()V

    :goto_0
    return-void
.end method
