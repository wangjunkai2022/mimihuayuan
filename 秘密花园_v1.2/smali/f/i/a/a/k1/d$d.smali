.class public final Lf/i/a/a/k1/d$d;
.super Lf/i/a/a/l0$a;
.source "PlayerControlView.java"

# interfaces
.implements Lf/i/a/a/k1/g$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/k1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/k1/d;


# direct methods
.method public constructor <init>(Lf/i/a/a/k1/d;Lf/i/a/a/k1/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-direct {p0}, Lf/i/a/a/l0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lf/i/a/a/k1/g;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 2
    iget-object v0, p1, Lf/i/a/a/k1/d;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Lf/i/a/a/k1/d;->m:Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p1, Lf/i/a/a/k1/d;->n:Ljava/util/Formatter;

    .line 5
    invoke-static {v1, p1, p2, p3}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Lf/i/a/a/k1/g;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    iget-object p2, p1, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lf/i/a/a/k1/d;->L:Z

    return-void
.end method

.method public f(Lf/i/a/a/k1/g;JZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lf/i/a/a/k1/d;->L:Z

    if-nez p4, :cond_4

    .line 3
    iget-object p4, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz p4, :cond_4

    invoke-interface {p1}, Lf/i/a/a/k1/g;->isOpenSeek()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 5
    iget-object p4, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {p4}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object p4

    .line 6
    iget-boolean v0, p1, Lf/i/a/a/k1/d;->K:Z

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p4}, Lf/i/a/a/u0;->p()I

    move-result v0

    .line 8
    :goto_0
    iget-object v2, p1, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    invoke-virtual {p4, v1, v2}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/u0$c;->a()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    move-wide p2, v2

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p4, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {p4}, Lf/i/a/a/l0;->z()I

    move-result v1

    .line 10
    :goto_1
    iget-object p4, p1, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object p1, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast p4, Lf/i/a/a/s;

    if-eqz p4, :cond_3

    .line 11
    invoke-interface {p1, v1, p2, p3}, Lf/i/a/a/l0;->k(IJ)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_4
    :goto_2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 13
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->h()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz v1, :cond_14

    .line 2
    iget-object v2, v0, Lf/i/a/a/k1/d;->c:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 3
    check-cast v1, Lf/i/a/a/o;

    invoke-virtual {v1}, Lf/i/a/a/o;->c()V

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-object v2, v0, Lf/i/a/a/k1/d;->b:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 5
    check-cast v1, Lf/i/a/a/o;

    invoke-virtual {v1}, Lf/i/a/a/o;->d()V

    goto/16 :goto_6

    .line 6
    :cond_1
    iget-object v2, v0, Lf/i/a/a/k1/d;->f:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->f()V

    goto/16 :goto_6

    .line 8
    :cond_2
    iget-object v2, v0, Lf/i/a/a/k1/d;->g:Landroid/view/View;

    if-ne v2, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->m()V

    goto/16 :goto_6

    .line 10
    :cond_3
    iget-object v2, v0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p1, :cond_8

    .line 11
    invoke-interface {v1}, Lf/i/a/a/l0;->o()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 12
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 13
    iget-object p1, p1, Lf/i/a/a/k1/d;->H:Lf/i/a/a/k0;

    if-eqz p1, :cond_6

    .line 14
    invoke-interface {p1}, Lf/i/a/a/k0;->a()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    iget-object p1, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {p1}, Lf/i/a/a/l0;->o()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 16
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    iget-object v0, p1, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object p1, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {p1}, Lf/i/a/a/l0;->z()I

    move-result v1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    check-cast v0, Lf/i/a/a/s;

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {p1, v1, v5, v6}, Lf/i/a/a/l0;->k(IJ)V

    goto :goto_0

    :cond_5
    throw v3

    .line 18
    :cond_6
    :goto_0
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    iget-object v0, p1, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object p1, p1, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v0, Lf/i/a/a/s;

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {p1, v4}, Lf/i/a/a/l0;->f(Z)V

    goto/16 :goto_6

    :cond_7
    throw v3

    .line 20
    :cond_8
    iget-object v2, v0, Lf/i/a/a/k1/d;->e:Landroid/view/View;

    const/4 v5, 0x0

    if-ne v2, p1, :cond_a

    .line 21
    iget-object p1, v0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_9

    .line 22
    invoke-interface {v1, v5}, Lf/i/a/a/l0;->f(Z)V

    goto :goto_6

    :cond_9
    throw v3

    .line 23
    :cond_a
    iget-object v2, v0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_12

    .line 24
    iget-object p1, v0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    .line 25
    invoke-interface {v1}, Lf/i/a/a/l0;->u()I

    move-result v0

    iget-object v2, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 26
    iget v2, v2, Lf/i/a/a/k1/d;->P:I

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x2

    if-gt v6, v7, :cond_10

    add-int v8, v0, v6

    .line 27
    rem-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_e

    if-eq v8, v4, :cond_c

    if-eq v8, v7, :cond_b

    goto :goto_2

    :cond_b
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_c
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_f

    move v0, v8

    goto :goto_5

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 28
    :cond_10
    :goto_5
    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_11

    .line 29
    invoke-interface {v1, v0}, Lf/i/a/a/l0;->q(I)V

    goto :goto_6

    :cond_11
    throw v3

    .line 30
    :cond_12
    iget-object v2, v0, Lf/i/a/a/k1/d;->i:Landroid/view/View;

    if-ne v2, p1, :cond_14

    .line 31
    iget-object p1, v0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    invoke-interface {v1}, Lf/i/a/a/l0;->x()Z

    move-result v0

    xor-int/2addr v0, v4

    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_13

    .line 32
    invoke-interface {v1, v0}, Lf/i/a/a/l0;->n(Z)V

    goto :goto_6

    :cond_13
    throw v3

    .line 33
    :cond_14
    :goto_6
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 34
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->h()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->t()V

    .line 5
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 6
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->u()V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-static {p1}, Lf/i/a/a/k1/d;->d(Lf/i/a/a/k1/d;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->u()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-static {p1}, Lf/i/a/a/k1/d;->c(Lf/i/a/a/k1/d;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->s()V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-static {p1}, Lf/i/a/a/k1/d;->b(Lf/i/a/a/k1/d;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->s()V

    return-void
.end method

.method public onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    invoke-static {p1}, Lf/i/a/a/k1/d;->d(Lf/i/a/a/k1/d;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->x()V

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/d$d;->a:Lf/i/a/a/k1/d;

    .line 5
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->u()V

    return-void
.end method
