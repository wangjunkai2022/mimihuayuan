.class public final Lf/i/a/a/w0/o$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/w0/o;
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

.field public final b:Lf/i/a/a/w0/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lf/i/a/a/w0/o;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lf/i/a/a/w0/o;
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
    iput-object p1, p0, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/y0/d;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v1, Lf/i/a/a/w0/e;

    invoke-direct {v1, p0, p1}, Lf/i/a/a/w0/e;-><init>(Lf/i/a/a/w0/o$a;Lf/i/a/a/y0/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    invoke-interface {v0, p1}, Lf/i/a/a/w0/o;->c(I)V

    return-void
.end method

.method public synthetic c(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lf/i/a/a/w0/o;->q(IJJ)V

    return-void
.end method

.method public synthetic d(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lf/i/a/a/w0/o;->t(Ljava/lang/String;JJ)V

    return-void
.end method

.method public e(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    invoke-interface {v0, p1}, Lf/i/a/a/w0/o;->d(Lf/i/a/a/y0/d;)V

    return-void
.end method

.method public synthetic f(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    invoke-interface {v0, p1}, Lf/i/a/a/w0/o;->g(Lf/i/a/a/y0/d;)V

    return-void
.end method

.method public synthetic g(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    invoke-interface {v0, p1}, Lf/i/a/a/w0/o;->m(Lf/i/a/a/b0;)V

    return-void
.end method
