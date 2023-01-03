.class public abstract Lf/i/a/a/l0$a;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lf/i/a/a/l0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lf/i/a/a/m0;->a(Lf/i/a/a/l0$b;Z)V

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

.method public onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/l0$a;->onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf/i/a/a/m0;->j(Lf/i/a/a/l0$b;Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V

    return-void
.end method
