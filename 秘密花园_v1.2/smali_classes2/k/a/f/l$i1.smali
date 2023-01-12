.class public final enum Lk/a/f/l$i1;
.super Lk/a/f/l;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/l;-><init>(Ljava/lang/String;ILk/a/f/l$k;)V

    return-void
.end method


# virtual methods
.method public f(Lk/a/f/k;Lk/a/f/a;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 3
    sget-object p2, Lk/a/f/l;->n0:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 6
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lk/a/f/i$e;->f:Z

    .line 7
    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 8
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 11
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 12
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :cond_2
    :goto_0
    return-void
.end method
