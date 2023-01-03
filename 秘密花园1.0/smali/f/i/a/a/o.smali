.class public abstract Lf/i/a/a/o;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lf/i/a/a/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/o$b;,
        Lf/i/a/a/o$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/u0$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/u0$c;

    invoke-direct {v0}, Lf/i/a/a/u0$c;-><init>()V

    iput-object v0, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lf/i/a/a/l0;->z()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lf/i/a/a/l0;->u()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Lf/i/a/a/l0;->x()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/u0;->e(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final b()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lf/i/a/a/l0;->z()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lf/i/a/a/l0;->u()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Lf/i/a/a/l0;->x()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/u0;->l(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/o;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-interface {p0, v0, v1, v2}, Lf/i/a/a/l0;->k(IJ)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/o;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-interface {p0, v0, v1, v2}, Lf/i/a/a/l0;->k(IJ)V

    :cond_0
    return-void
.end method
