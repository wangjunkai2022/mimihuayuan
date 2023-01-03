.class public final Lf/i/a/a/h1/y;
.super Lf/i/a/a/h1/o;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lf/i/a/a/h1/e0$b;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Lf/i/a/a/h1/h0;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/b1/i;Lf/i/a/a/l1/b0;Ljava/lang/String;ILjava/lang/Object;Lf/i/a/a/h1/y$a;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    .line 2
    new-instance v8, Lf/i/a/a/h1/h0;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/h1/h0;-><init>(Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/b1/i;Lf/i/a/a/l1/b0;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v8, v0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/h1/h0;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf/i/a/a/h1/h0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    invoke-virtual {v0, p1}, Lf/i/a/a/h1/h0;->d(Lf/i/a/a/h1/d0;)V

    return-void
.end method

.method public f(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2, p3}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 1
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    invoke-virtual {v0, p0, p1}, Lf/i/a/a/h1/o;->e(Lf/i/a/a/h1/e0$b;Lf/i/a/a/l1/i0;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/y;->f:Lf/i/a/a/h1/h0;

    invoke-virtual {v0, p0}, Lf/i/a/a/h1/o;->i(Lf/i/a/a/h1/e0$b;)V

    return-void
.end method
