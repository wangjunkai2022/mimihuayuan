.class public final Lf/i/a/a/u;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lf/i/a/a/m1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/u$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/a0;

.field public final b:Lf/i/a/a/u$a;

.field public c:Lf/i/a/a/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lf/i/a/a/m1/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/u$a;Lf/i/a/a/m1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/u;->b:Lf/i/a/a/u$a;

    .line 3
    new-instance p1, Lf/i/a/a/m1/a0;

    invoke-direct {p1, p2}, Lf/i/a/a/m1/a0;-><init>(Lf/i/a/a/m1/h;)V

    iput-object p1, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    invoke-interface {v0}, Lf/i/a/a/m1/q;->v()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    invoke-virtual {v2, v0, v1}, Lf/i/a/a/m1/a0;->a(J)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    invoke-interface {v0}, Lf/i/a/a/m1/q;->e()Lf/i/a/a/j0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 5
    iget-object v1, v1, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    .line 6
    invoke-virtual {v0, v1}, Lf/i/a/a/j0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 8
    iget-boolean v2, v1, Lf/i/a/a/m1/a0;->b:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lf/i/a/a/m1/a0;->a(J)V

    .line 10
    :cond_0
    iput-object v0, v1, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    .line 11
    iget-object v1, p0, Lf/i/a/a/u;->b:Lf/i/a/a/u$a;

    check-cast v1, Lf/i/a/a/z;

    .line 12
    iget-object v1, v1, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v2, 0x11

    .line 13
    invoke-virtual {v1, v2, v0}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/i/a/a/p0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    .line 2
    invoke-interface {v0}, Lf/i/a/a/p0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    invoke-interface {v0}, Lf/i/a/a/p0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lf/i/a/a/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/i/a/a/m1/q;->e()Lf/i/a/a/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    :goto_0
    return-object v0
.end method

.method public s(Lf/i/a/a/j0;)Lf/i/a/a/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lf/i/a/a/m1/q;->s(Lf/i/a/a/j0;)Lf/i/a/a/j0;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    invoke-virtual {v0, p1}, Lf/i/a/a/m1/a0;->s(Lf/i/a/a/j0;)Lf/i/a/a/j0;

    .line 4
    iget-object v0, p0, Lf/i/a/a/u;->b:Lf/i/a/a/u$a;

    check-cast v0, Lf/i/a/a/z;

    .line 5
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0x11

    .line 6
    invoke-virtual {v0, v1, p1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    invoke-interface {v0}, Lf/i/a/a/m1/q;->v()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    invoke-virtual {v0}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v0

    return-wide v0
.end method
