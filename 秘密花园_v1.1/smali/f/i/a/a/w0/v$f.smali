.class public final Lf/i/a/a/w0/v$f;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lf/i/a/a/w0/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/w0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/v;


# direct methods
.method public constructor <init>(Lf/i/a/a/w0/v;Lf/i/a/a/w0/v$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 2
    iget-object v0, v0, Lf/i/a/a/w0/v;->k:Lf/i/a/a/w0/p$c;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 4
    iget-wide v3, v2, Lf/i/a/a/w0/v;->R:J

    sub-long v10, v0, v3

    .line 5
    iget-object v0, v2, Lf/i/a/a/w0/v;->k:Lf/i/a/a/w0/p$c;

    .line 6
    check-cast v0, Lf/i/a/a/w0/z$b;

    .line 7
    iget-object v1, v0, Lf/i/a/a/w0/z$b;->a:Lf/i/a/a/w0/z;

    .line 8
    iget-object v6, v1, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 9
    iget-object v1, v6, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v6, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v2, Lf/i/a/a/w0/f;

    move-object v5, v2

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v5 .. v11}, Lf/i/a/a/w0/f;-><init>(Lf/i/a/a/w0/o$a;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    iget-object p1, v0, Lf/i/a/a/w0/z$b;->a:Lf/i/a/a/w0/z;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public b(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 2
    iget-object p2, p1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean p3, p2, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz p3, :cond_0

    iget-wide p3, p1, Lf/i/a/a/w0/v;->w:J

    iget p1, p2, Lf/i/a/a/w0/v$c;->b:I

    int-to-long p1, p1

    div-long/2addr p3, p1

    .line 3
    :cond_0
    iget-object p1, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 4
    invoke-virtual {p1}, Lf/i/a/a/w0/v;->f()J

    return-void
.end method

.method public c(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 2
    iget-object p2, p1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-boolean p3, p2, Lf/i/a/a/w0/v$c;->a:Z

    if-eqz p3, :cond_0

    iget-wide p3, p1, Lf/i/a/a/w0/v;->w:J

    iget p1, p2, Lf/i/a/a/w0/v$c;->b:I

    int-to-long p1, p1

    div-long/2addr p3, p1

    .line 3
    :cond_0
    iget-object p1, p0, Lf/i/a/a/w0/v$f;->a:Lf/i/a/a/w0/v;

    .line 4
    invoke-virtual {p1}, Lf/i/a/a/w0/v;->f()J

    return-void
.end method

.method public d(J)V
    .locals 0

    return-void
.end method
