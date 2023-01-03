.class public final enum Lk/a/f/l$u0;
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
    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {p2}, Lk/a/f/i$e;->g()Lk/a/f/i;

    .line 3
    sget-object p2, Lk/a/f/l;->a0:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eqz p2, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    .line 6
    iget-object v0, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {v0}, Lk/a/f/i$e;->g()Lk/a/f/i;

    .line 7
    iget-object v0, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iget-object v0, v0, Lk/a/f/i$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    sget-object p2, Lk/a/f/l;->a0:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 11
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {p2}, Lk/a/f/i$e;->g()Lk/a/f/i;

    .line 12
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lk/a/f/i$e;->f:Z

    .line 13
    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 14
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 15
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 17
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {p2}, Lk/a/f/i$e;->g()Lk/a/f/i;

    .line 18
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iget-object p2, p2, Lk/a/f/i$e;->b:Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    sget-object p2, Lk/a/f/l;->a0:Lk/a/f/l;

    .line 20
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :cond_3
    :goto_0
    return-void
.end method
