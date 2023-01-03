.class public final Lf/i/a/a/h1/b0$a;
.super Lf/i/a/a/h1/z;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/h1/z;-><init>(Lf/i/a/a/u0;)V

    return-void
.end method


# virtual methods
.method public e(IIZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/u0;->e(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {p1, p3}, Lf/i/a/a/u0;->a(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public l(IIZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/u0;->l(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {p1, p3}, Lf/i/a/a/u0;->c(Z)I

    move-result p1

    :cond_0
    return p1
.end method
