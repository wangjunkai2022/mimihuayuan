.class public final enum Lk/a/f/l$p0;
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
    .locals 2

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    const/16 v0, 0x2d

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    iget-object v1, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {v1, v0}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    invoke-virtual {v1, p2}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    .line 3
    sget-object p2, Lk/a/f/l;->U:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 6
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 7
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Lk/a/f/l;->W:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 12
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p2, v0}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    .line 13
    sget-object p2, Lk/a/f/l;->U:Lk/a/f/l;

    .line 14
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
