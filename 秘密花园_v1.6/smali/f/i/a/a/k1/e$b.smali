.class public final Lf/i/a/a/k1/e$b;
.super Lf/i/a/a/l0$a;
.source "PlayerView.java"

# interfaces
.implements Lf/i/a/a/i1/k;
.implements Lf/i/a/a/n1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/k1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/k1/e;


# direct methods
.method public constructor <init>(Lf/i/a/a/k1/e;Lf/i/a/a/k1/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    invoke-direct {p0}, Lf/i/a/a/l0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 1

    .line 1
    iget-object p3, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    .line 2
    iget-object v0, p3, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 3
    iget-object p3, p3, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p3, p4}, Lf/i/a/a/f1/a;->setPixelWidthHeightRatio(F)V

    .line 5
    iget-object p3, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    iget-object p3, p3, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {p3, p1, p2}, Lf/i/a/a/f1/a;->a(II)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    iget-object p1, p1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lf/i/a/a/f1/a;->c(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    .line 2
    iget-object v0, v0, Lf/i/a/a/k1/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    iget-object v0, v0, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    invoke-static {p1}, Lf/i/a/a/k1/e;->a(Lf/i/a/a/k1/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    .line 2
    iget-boolean p2, p1, Lf/i/a/a/k1/e;->o:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/e;->d()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lf/i/a/a/k1/e;->f(Z)V

    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    invoke-static {p1}, Lf/i/a/a/k1/e;->a(Lf/i/a/a/k1/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    .line 2
    iget-boolean v0, p1, Lf/i/a/a/k1/e;->o:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/k1/e;->d()V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/e$b;->a:Lf/i/a/a/k1/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lf/i/a/a/k1/e;->j(Z)V

    return-void
.end method

.method public synthetic u(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf/i/a/a/n1/p;->a(Lf/i/a/a/n1/q;II)V

    return-void
.end method
