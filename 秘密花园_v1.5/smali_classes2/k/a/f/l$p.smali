.class public final enum Lk/a/f/l$p;
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
    invoke-virtual {p2}, Lk/a/f/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 3
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    .line 7
    sget-object p2, Lk/a/f/l;->v:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    .line 10
    sget-object p2, Lk/a/f/l;->f:Lk/a/f/l;

    .line 11
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 12
    :cond_2
    sget-object p2, Lk/a/f/l;->y:Lk/a/f/l;

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    const p2, 0xfffd

    .line 16
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    .line 17
    sget-object p2, Lk/a/f/l;->v:Lk/a/f/l;

    .line 18
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
