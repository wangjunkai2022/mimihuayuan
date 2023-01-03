.class public final enum Lk/a/f/l$q0;
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

    const-string v0, "--"

    if-eqz p2, :cond_4

    const/16 v1, 0x21

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 3
    iget-object v1, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {v1, v0}, Lk/a/f/i$d;->j(Ljava/lang/String;)Lk/a/f/i$d;

    invoke-virtual {v1, p2}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    .line 4
    sget-object p2, Lk/a/f/l;->U:Lk/a/f/l;

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 7
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 8
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 11
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 12
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 14
    iget-object p1, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p1, v1}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 16
    sget-object p2, Lk/a/f/l;->X:Lk/a/f/l;

    .line 17
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 19
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p2, v0}, Lk/a/f/i$d;->j(Ljava/lang/String;)Lk/a/f/i$d;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lk/a/f/i$d;->i(C)Lk/a/f/i$d;

    .line 20
    sget-object p2, Lk/a/f/l;->U:Lk/a/f/l;

    .line 21
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
