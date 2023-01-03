.class public final enum Lk/a/f/l$k0;
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
    .locals 3

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 2
    iget-object v0, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lk/a/f/a;->g(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk/a/f/i$d;->j(Ljava/lang/String;)Lk/a/f/i$d;

    .line 3
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eq p2, v1, :cond_0

    const v0, 0xffff

    if-ne p2, v0, :cond_1

    .line 4
    :cond_0
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 5
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 6
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :cond_1
    return-void
.end method
