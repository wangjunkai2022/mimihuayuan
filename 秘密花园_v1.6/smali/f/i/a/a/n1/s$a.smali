.class public final Lf/i/a/a/n1/s$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/n1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lf/i/a/a/n1/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lf/i/a/a/n1/s;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lf/i/a/a/n1/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    throw v0

    :cond_1
    move-object p1, v0

    .line 3
    :goto_0
    iput-object p1, p0, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lf/i/a/a/n1/s;->h(Ljava/lang/String;JJ)V

    return-void
.end method

.method public b(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1}, Lf/i/a/a/n1/s;->s(Lf/i/a/a/y0/d;)V

    return-void
.end method

.method public synthetic c(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/n1/s;->w(IJ)V

    return-void
.end method

.method public synthetic d(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1}, Lf/i/a/a/n1/s;->k(Lf/i/a/a/y0/d;)V

    return-void
.end method

.method public synthetic e(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1}, Lf/i/a/a/n1/s;->j(Lf/i/a/a/b0;)V

    return-void
.end method

.method public synthetic f(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1}, Lf/i/a/a/n1/s;->r(Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic g(IIIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lf/i/a/a/n1/s;->a(IIIF)V

    return-void
.end method

.method public h(IIIF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v7, Lf/i/a/a/n1/c;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/n1/c;-><init>(Lf/i/a/a/n1/s$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
